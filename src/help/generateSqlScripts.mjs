import fs from "fs";

export function generateMigration(path) {
    console.log(`Generate migration file ${path}`)
    const data = fs.readFileSync(`./sql/${path}/mapping.csv`, 'utf8');
    const lines = data.split("\n");

    const tables = lines[0].split(",")
    let tableSource = tables[0];
    let tableTarget = tables[1];

    let sourceCols = [];
    let targetCols = [];

    for (let i = 1; i < lines.length; i++) {
        const cols = lines[i].split(",")
        const sourceCol = cols[0];
        const targetCol = cols[1];

        sourceCols.push(sourceCol);
        targetCols.push(targetCol);
    }

    const request = `INSERT INTO "public"."${tableTarget}" (${targetCols.join(", ")}) SELECT ${sourceCols.join(", ")} FROM "directus"."${tableSource}";`
    fs.writeFileSync(`./sql/${path}/generated.sql`, request)
}