import dotenv from 'dotenv';
import { buildDatabaseUrl, execSqlFile } from '../help/commands.mjs';
import { generateMigration } from '../help/generateSqlScripts.mjs';

dotenv.config();

const databaseUrlDestMonsuivisocialDb = buildDatabaseUrl(
  process.env.DATABASE_DEST_USER,
  process.env.DATABASE_DEST_PASSWORD,
  process.env.DATABASE_DEST_HOST,
  process.env.DATABASE_DEST_PORT,
  process.env.DATABASE_DEST_DBNAME
);

export async function migrate() {
  await migrateFile('01_structure');
  await migrateFile('02_user');
  await migrateFile('03_beneficiary');
  await migrateFile('04_followup_type');
  await migrateFile('05_prescribing_organization');
  await migrateFile('05_instructor_organization');
  await migrateFile('06_help_request');
  await migrateFile('07_followup');
  await migrateFile('08_comment');
  await migrateFile('09_document');
  await migrateFile('10__document_to_followup');
  await migrateFile('11__document_to_help_request');
  await migrateFile('12__beneficiary_referents');
  await migrateFile('13_notification');
  await migrateFile('14_beneficiary_relative');
  await migrateFile('15__followup_to_followup_type');
  await migrateFile('16_user_activity');
}

async function migrateFile(path) {
  generateMigration(path);
  await execSqlFile(
    databaseUrlDestMonsuivisocialDb,
    `./sql/${path}/pre_migration.sql`
  );
  await execSqlFile(
    databaseUrlDestMonsuivisocialDb,
    `./sql/${path}/generated.sql`
  );
  await execSqlFile(
    databaseUrlDestMonsuivisocialDb,
    `./sql/${path}/post_migration.sql`
  );
}
