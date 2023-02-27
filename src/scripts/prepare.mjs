
import dotenv from 'dotenv';
import { dumpDatabase, restoreDatabase, execPsql } from '../help/commands.mjs';

dotenv.config();

const DATABASE_URL_LOCAL = process.env.DATABASE_URL_LOCAL;

export async function prepare() {

    await execPsql(DATABASE_URL_LOCAL, "CREATE DATABASE directus");
    await restoreDatabase("./dumps/dist.dump", DATABASE_URL_LOCAL + "/directus", "public");
    await execPsql(DATABASE_URL_LOCAL + "/directus", "ALTER schema public rename to directus");
    await dumpDatabase(DATABASE_URL_LOCAL + "/directus", "directus", "./dumps/directus.dump");

    await execPsql(DATABASE_URL_LOCAL + "/mss", "CREATE EXTENSION pgcrypto");
}