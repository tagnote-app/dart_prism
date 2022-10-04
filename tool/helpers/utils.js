const definitionNamePrefix = 'definition_';

export const Primitive = String;
export const primitive = 'string';
export const comment = `
  // Generated file, do not edit manually.
  //
  // Script: tool/update_languages.js`;

export const toCamelCase = (name) =>
  name
    .replaceAll(/-([a-z])/g, (_, m) => m.toUpperCase())
    .replaceAll(/(?<=[0-9])[a-z]/g, (m) => m.toUpperCase());

export const generateDefinitionName = (id) =>
  definitionNamePrefix + (id instanceof Primitive ? id.toString() : id);

export const definitionNameToId = (name) =>
  name.replace(definitionNamePrefix, '');

// Escapes RegExp pattern.
export const escapePattern = (input) =>
  input
    .replaceAll('\\', '\\\\')
    .replaceAll("'", "\\'")
    .replaceAll('\n', '\\n')
    .replaceAll('\r', '\\r')
    .replaceAll('$', '\\$');

// Escapes (') and ($).
export const escapeString = (input) =>
  input.replaceAll("'", "\\'").replaceAll('$', '\\$');

export const isJsonObject = (value) =>
  value && value instanceof Object && !Array.isArray(value);

export const stringifyArray = (input) =>
  input.length == 0 ? '[]' : `['${input.join("','")}']`;
