import { Prism } from './prismjs/src/core/prism';
import { promises } from 'fs';
import { GrammarParser } from './helpers/grammar_parser';
import { TokenizeParser } from './helpers/tokenize_parser';
import { toCamelCase } from './helpers/utils';
import { anyToArray } from './helpers/string_to_array';
import {
  createLanguageFile,
  createLanguageEntry,
  createTokenizerCache,
} from './helpers/write_files';

const tokenizeParser = new TokenizeParser();
const srcDir = './prismjs/src';
const inputDir = `${srcDir}/languages`;
const outputDir = '../lib/src/languages';

const prism = new Prism();
const imports = [];
const languageMapAttributes = [];
const aliasMap = {};
const languageProtos = [];

async function run() {
  const files = await promises.readdir(inputDir);

  for (const inputFileName of files) {
    let path = `${inputDir}/${inputFileName}`;
    if (!path.startsWith('./')) {
      path = `./${path}`;
    }

    const componentProto = (await import(path)).default;
    const {
      id: languageId,
      optional: optionalDependency,
      alias,
    } = componentProto;
    if (languageId !== 'ejs') {
      //continue;
    }
    prism.components.add(componentProto);

    const optionalDependencies = [];
    const requiredDependencies = [];
    const aliases = [];

    // This localPrism is used to find out the required dependencies.
    const localPrism = new Prism();
    localPrism.components.add(componentProto);
    requiredDependencies.push(
      ...Array.from(localPrism.components.entries.keys()).slice(1)
    );

    if (optionalDependency) {
      optionalDependencies.push(...anyToArray(optionalDependency));
    }
    if (alias) {
      aliases.push(...anyToArray(alias));
      aliasMap[languageId] = aliases;
    }

    languageProtos.push({
      languageId,
      aliases,
      optionalDependencies,
      requiredDependencies,
    });
  }

  for (const languageProto of languageProtos) {
    const { languageId } = languageProto;
    const grammar = prism.components.getLanguage(languageId);
    const grammarParser = new GrammarParser(
      languageId,
      grammar,
      tokenizeParser
    );

    //return;
    const variableName = toCamelCase(`language-${languageId}`);
    const outputFileName = `${languageId.replace('-', '_')}.dart`;
    await createLanguageFile(
      `${outputDir}/${outputFileName}`,
      variableName,
      grammarParser,
      languageProto
    );
    imports.push(`import '${outputFileName}';`);
    languageMapAttributes.push(`'${languageId}': ${variableName}`);
  }

  await createLanguageEntry(outputDir, {
    imports,
    languages: languageMapAttributes,
    aliasMap,
  });

  await createTokenizerCache(outputDir, tokenizeParser.items);
}

run();
