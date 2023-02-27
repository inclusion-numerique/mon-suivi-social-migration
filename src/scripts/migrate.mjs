
import dotenv from 'dotenv';
import { execSqlFile } from '../help/commands.mjs';

dotenv.config();

const DATABASE_URL_LOCAL = process.env.DATABASE_URL_LOCAL;

export async function migrate() {
    await migrate("01_structure");
    await migrate("02_user");
    await migrate("03_beneficiary");
    await migrate("04_followup_type");
    await migrate("05_prescribing_organization");
    await migrate("06_help_request");
}

async function migrate(path) {
    await execSqlFile(DATABASE_URL_LOCAL + "/mss", `./sql/${path}/pre_migration.sql`);
    await execSqlFile(DATABASE_URL_LOCAL + "/mss", `./sql/${path}/generated.sql`);
    await execSqlFile(DATABASE_URL_LOCAL + "/mss", `./sql/${path}/post_migration.sql`);
}
