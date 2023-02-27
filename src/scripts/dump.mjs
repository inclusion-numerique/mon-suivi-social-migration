
import dotenv from 'dotenv';
import { dumpDatabase } from '../help/commands.mjs';

dotenv.config();

const DATABASE_URL_DIST = process.env.DATABASE_URL_DIST;

export async function dump() {
    await dumpDatabase(DATABASE_URL_DIST, "public", "./dumps/dist.dump");
}