
import dotenv from 'dotenv';
import { restoreDatabase, execPsql } from '../help/commands.mjs';

dotenv.config();

const DATABASE_URL_LOCAL = process.env.DATABASE_URL_LOCAL;

export async function restore() {
    await execPsql(DATABASE_URL_LOCAL + "/mss", "DROP SCHEMA IF EXISTS directus CASCADE");
    await execPsql(DATABASE_URL_LOCAL + "/mss", "CREATE SCHEMA directus");
    await restoreDatabase("./dumps/directus.dump", DATABASE_URL_LOCAL + "/mss", "directus");
}