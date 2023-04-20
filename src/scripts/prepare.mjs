import dotenv from 'dotenv';
import {
  buildDatabaseUrl,
  dumpDatabase,
  execPsql,
  restoreDatabase
} from '../help/commands.mjs';

dotenv.config();

const databaseUrlDest = buildDatabaseUrl(
  process.env.DATABASE_DEST_USER,
  process.env.DATABASE_DEST_PASSWORD,
  process.env.DATABASE_DEST_HOST,
  process.env.DATABASE_DEST_PORT
);
const databaseUrlDestDirectusDb = `${databaseUrlDest}/directus`;
const databaseUrlDestMonsuivisocialDb = `${databaseUrlDest}/monsuivisocial`;

export async function prepare() {
  await execPsql(
    databaseUrlDestMonsuivisocialDb,
    'DROP DATABASE IF EXISTS directus'
  );
  await execPsql(databaseUrlDestMonsuivisocialDb, 'CREATE DATABASE directus');
  await restoreDatabase(
    './dumps/dist.dump',
    databaseUrlDestDirectusDb,
    'public'
  );
  await execPsql(
    databaseUrlDestDirectusDb,
    'ALTER schema public rename to directus'
  );
  await dumpDatabase(
    databaseUrlDestDirectusDb,
    'directus',
    './dumps/directus.dump'
  );

  await execPsql(
    databaseUrlDestMonsuivisocialDb,
    'DROP EXTENSION IF EXISTS pgcrypto'
  );
  await execPsql(databaseUrlDestMonsuivisocialDb, 'CREATE EXTENSION pgcrypto');
}
