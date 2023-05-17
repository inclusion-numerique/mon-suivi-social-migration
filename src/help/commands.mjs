import subProcess from 'child_process';

export async function dumpDatabase(databaseUrl, schema, dumpFilePath) {
  const command = `pg_dump ${databaseUrl} -n ${schema} -Fc > ${dumpFilePath}`;
  return execCommand(command);
}

export async function execPsql(databaseUrl, sql) {
  const command = `psql ${databaseUrl} -v ON_ERROR_STOP=1 -a -c '${sql}'`;
  return execCommand(command);
}

export async function execSqlFile(databaseUrl, sqlFile) {
  const command = `psql ${databaseUrl} -v ON_ERROR_STOP=1 -a -f '${sqlFile}'`;
  return execCommand(command);
}

export async function restoreDatabase(dumpFilePath, databaseUrl, schema) {
  const command = `pg_restore -d "${databaseUrl}" -e -Fc --no-owner -n ${schema} ${dumpFilePath}`;
  return execCommand(command);
}

export function buildDatabaseUrl(user, password, host, port, dbname) {
  const urlWithoutDbname = `postgresql://${user}:"${password}"@${host}:${port}`;
  if (dbname) return `${urlWithoutDbname}/${dbname}`;
  return urlWithoutDbname;
}

async function execCommand(command) {
  console.log(command);
  try {
    return subProcess.execSync(command);
  } catch (err) {
    console.error(err);
    process.exit(1);
  }
}
