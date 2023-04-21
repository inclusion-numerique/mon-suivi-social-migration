import dotenv from 'dotenv';
import { buildDatabaseUrl, dumpDatabase } from '../help/commands.mjs';

dotenv.config();

const databaseUrlOrigin = buildDatabaseUrl(
  process.env.DATABASE_ORIGIN_USER,
  process.env.DATABASE_ORIGIN_PASSWORD,
  process.env.DATABASE_ORIGIN_HOST,
  process.env.DATABASE_ORIGIN_PORT,
  process.env.DATABASE_ORIGIN_DBNAME
);

export async function dump() {
  await dumpDatabase(databaseUrlOrigin, 'public', './dumps/dist.dump');
}
