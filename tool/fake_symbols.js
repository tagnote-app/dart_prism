import { promises } from 'fs';

const activePath = './prismjs/src/shared/symbols.js';
const archivePath = `${activePath}.1`;

/**
 * Changes Symbols to string values, to make it easy to parse.\
 * Because JSON stringify function does not iterate Symbols keys.
 */
const fake = async () => {
  await promises.rename(activePath, archivePath);
  await promises.writeFile(
    activePath,
    `export const rest = '________A________';
    export const tokenize = '________B________';`
  );
};

const revert = async () => {
  await promises.rm(activePath);
  await promises.rename(archivePath, activePath);
};

const arg = process.argv[2];
if (arg === 'fake') {
  await fake();
} else if (arg === 'revert') {
  await revert();
}
