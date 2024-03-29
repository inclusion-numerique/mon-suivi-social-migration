import { dump } from './src/scripts/dump.mjs';
import { migrate } from './src/scripts/migrate.mjs';
import { prepare } from './src/scripts/prepare.mjs';
import { restore } from './src/scripts/restore.mjs';

await dump();
await prepare();
await restore();
await migrate();
