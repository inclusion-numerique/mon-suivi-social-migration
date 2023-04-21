import dotenv from 'dotenv';
import {
  buildDatabaseUrl,
  execPsql,
  restoreDatabase
} from '../help/commands.mjs';

dotenv.config();

const databaseUrlDestMonsuivisocialDb = buildDatabaseUrl(
  process.env.DATABASE_DEST_USER,
  process.env.DATABASE_DEST_PASSWORD,
  process.env.DATABASE_DEST_HOST,
  process.env.DATABASE_DEST_PORT,
  process.env.DATABASE_DEST_DBNAME
);

export async function restore() {
  await execPsql(
    databaseUrlDestMonsuivisocialDb,
    'DROP SCHEMA IF EXISTS directus CASCADE'
  );
  await execPsql(databaseUrlDestMonsuivisocialDb, 'CREATE SCHEMA directus');
  await restoreDatabase(
    './dumps/directus.dump',
    databaseUrlDestMonsuivisocialDb,
    'directus'
  );
}
