import { dump } from "./src/scripts/dump.mjs";
import { generate } from "./src/scripts/generate.mjs";
import { migrate } from "./src/scripts/migrate.mjs";
import { prepare } from "./src/scripts/prepare.mjs";

await dump();
await prepare();
await generate();
await migrate();