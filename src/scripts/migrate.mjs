
import dotenv from 'dotenv';
import { execSqlFile } from '../help/commands.mjs';
import { generateMigration } from '../help/generateSqlScripts.mjs';

dotenv.config();

const DATABASE_URL_LOCAL = process.env.DATABASE_URL_LOCAL;

export async function migrate() {
    await migrateFile("01_structure");
    await migrateFile("02_user");
    await migrateFile("03_beneficiary");
    await migrateFile("04_followup_type");
    await migrateFile("05_prescribing_organization");
    await migrateFile("06_help_request");
    await migrateFile("07_follow_up");
    await migrateFile("08_comment");
}

async function migrateFile(path) {
    generateMigration(path);
    await execSqlFile(DATABASE_URL_LOCAL + "/mss", `./sql/${path}/pre_migration.sql`);
    await execSqlFile(DATABASE_URL_LOCAL + "/mss", `./sql/${path}/generated.sql`);
    await execSqlFile(DATABASE_URL_LOCAL + "/mss", `./sql/${path}/post_migration.sql`);
}
