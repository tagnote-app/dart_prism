import { promises } from 'fs';

const activePath = './prismjs/package.json';
const archivePath = `${activePath}.1`;

/**
 * Changes package type to 'module' in order to use esm in node environment.
 */
const change = async () => {
  const rawData = await promises.readFile(activePath);
  await promises.rename(activePath, archivePath);
  const json = JSON.parse(rawData);
  json.type = 'module';
  await promises.writeFile(activePath, JSON.stringify(json, null, '  '));
};

const revert = async () => {
  await promises.rm(activePath);
  await promises.rename(archivePath, activePath);
};

const arg = process.argv[2];
if (arg === 'change') {
  await change();
} else if (arg === 'revert') {
  await revert();
}
