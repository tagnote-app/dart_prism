import { comment, stringifyArray } from './utils';
import { promises } from 'fs';

export async function createLanguageFile(
  path,
  variableName,
  { hasCustomTokenizes, definitions, entryDefinition },
  { languageId, aliases, optionalDependencies, requiredDependencies }
) {
  const attributes = [];

  if (aliases.length > 0) {
    attributes.push(`aliases:${stringifyArray(aliases)}`);
  }

  if (requiredDependencies.length > 0) {
    attributes.push(
      `requiredDependencies:${stringifyArray(requiredDependencies)}`
    );
  }

  if (optionalDependencies.length > 0) {
    attributes.push(
      `optionalDependencies:${stringifyArray(optionalDependencies)}`
    );
  }

  const stringAttributes =
    attributes.length > 0 ? `${attributes.join(',')},` : '';

  const content = `${comment}
  // ignore_for_file: use_raw_strings, file_names

  import '../src/models/models.dart';
  ${hasCustomTokenizes ? "import '../src/tokenizers/tokenizers.dart';" : ''}

  LanguageProto _create() {
    ${definitions}

    return LanguageProto(
      '${languageId}',
      ${entryDefinition}, ${stringAttributes}
    );
  }

  final ${variableName} = _create();`;

  await promises.writeFile(path, content);
}

// Create entry file.
export async function createLanguageEntry(
  dir,
  { imports, languages, aliasMap }
) {
  const aliasList = [];
  Object.entries(aliasMap).forEach(([key, aliases]) => {
    for (const alias of aliases) {
      aliasList.push(`'${alias}': '${key}'`);
    }
  });

  const stringAliases = aliasList.length > 0 ? `${aliasList.join(',')},` : '';

  await promises.writeFile(
    `${dir}/all.dart`,
    `${comment}
    // ignore_for_file: directives_ordering

    import '../src/models/language_proto.dart';
    ${imports.join('\n')}

    final languageMap = Map<String, LanguageProto>.unmodifiable({
      ${languages.join(',')},
    });
    
    final aliasMap = Map<String, String>.unmodifiable({
      ${stringAliases}
    });`
  );
}

// Create custom tokenizers cache.
export async function createTokenizerCache(dir, items) {
  await promises.writeFile(
    `${dir}/tokenizes.json`,
    JSON.stringify(items, null, '  ')
  );
}
