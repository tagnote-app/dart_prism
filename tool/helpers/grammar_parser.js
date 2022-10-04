import { stringify } from 'flatted';
import { tokenize, rest } from '../prismjs/src/shared/symbols';
import {
  escapePattern,
  Primitive,
  primitive,
  isJsonObject,
  generateDefinitionName,
} from './utils';

const { parse: $parse } = JSON;

const primitives = (value) =>
  value instanceof Primitive ? Primitive(value) : value;

const Primitives = (_, value) =>
  typeof value === primitive ? new Primitive(value) : value;

const stringifyReplacer = (_, value) => {
  if (typeof value === 'function') {
    value = value.toString();
  } else if (value instanceof RegExp) {
    return [escapePattern(value.source), value.flags].join('|');
  }

  return value;
};

//
export class GrammarParser {
  content = '';
  _definitions = [];
  _grammarAttributes = {};
  _restGrammars = {};
  _customTokenizes = {};

  /**
   *
   * @param {string} languageId
   * @param {Grammar} source
   * @param {TokenizeParser} tokenizeParser
   */
  constructor(languageId, source, tokenizeParser) {
    this.languageId = languageId;
    this._tokenizeParser = tokenizeParser;

    this._input = $parse(stringify(source, stringifyReplacer), Primitives).map(
      primitives
    );

    this._parseGrammar(generateDefinitionName('0'), this._input[0]);

    const definitionItems = [
      ...this._definitions
        .filter((e) => e.type === 'grammar')
        .map((e) => `final ${e.name} = ${e.value}`),
      ...this._definitions
        .filter((e) => e.type === 'constant')
        .map((e) => `const ${e.name} = '${e.value}'`),
      ...this._definitions
        .filter((e) => e.type === 'grammarToken')
        .map((e) => `final ${e.name} = ${e.value}`),
    ];

    Object.entries(this._restGrammars).forEach(([key, value]) => {
      definitionItems.push(`${key}.rest = ${value}`);
    });
    Object.entries(this._customTokenizes).forEach(([key, value]) => {
      definitionItems.push(`${key}.tokenize = ${value}`);
    });

    Object.entries(this._grammarAttributes).forEach(([key, value]) => {
      definitionItems.push(`${key}.addAllTokens({${value.join(',')},})`);
    });

    //
    this.hasCustomTokenizes = Object.keys(this._customTokenizes).length > 0;
    this.definitions = `${definitionItems.join(';\n')};`;
    this.entryDefinition = generateDefinitionName(0);
  }

  /**
   * @param {string} name
   * @returns {boolean}
   */
  _hasDefinition = (name) => this._definitions.some((e) => e.name === name);

  /**
   * @typedef {'constant'|'grammar|'grammarToken'} DefinitionType
   *
   * @param {DefinitionType} type The definition type.
   * @param {String} name The definition name.
   * @param {any} value The definition value.
   * @returns {void}
   * @private
   */
  _addDefinition(type, name, value) {
    const index = this._definitions.findIndex((e) => e.name === name);
    const data = { type, name, value };
    if (index === -1) {
      this._definitions.push(data);
    } else {
      this._definitions.splice(index, 1, data);
    }
  }

  /**
   *
   * @param {Primitive} reference
   * @returns {string}
   */
  _parseAlias(reference) {
    const index = reference.valueOf();
    const value = (
      Array.isArray(this._input[index]) ? this._input[index] : [reference]
    )
      .map((v) => `'${this._input[v.valueOf()]}'`)
      .join(',');

    return `[${value}]`;
  }

  _parseRegExp(definitionName, definitionValue) {
    const dividerIndex = definitionValue.lastIndexOf('|');
    const source = definitionValue.slice(0, dividerIndex);
    const flags = definitionValue.slice(dividerIndex + 1);
    const global = flags.includes('g');

    const options = [];
    for (let i = 0; i < flags.length; i++) {
      switch (flags[i]) {
        case 's':
          options.push('dotAll:true');
          break;
        case 'm':
          options.push('multiLine:true');
          break;
        case 'u':
          options.push('unicode:true');
          break;
        case 'i':
          options.push('caseSensitive:false');
          break;
      }
    }

    this._addDefinition('constant', definitionName, source);

    const optionsString = options.length ? `,${options.join(',')}` : '';
    return {
      pattern: `RegExp(${definitionName}${optionsString})`,
      global,
    };
  }

  _parseStringPattern(name, value) {
    const parsedPattern = this._parseRegExp(name, value);
    const globalOption = parsedPattern.global ? `,global:true` : '';
    return `GrammarToken(pattern: ${parsedPattern.pattern}${globalOption})`;
  }

  _parseGrammarToken(name, data) {
    if (this._hasDefinition(name)) {
      return;
    }

    // This can avoid parsing token recursively.
    this._addDefinition('grammarToken', name, null);

    const attributes = [];
    var isGlobal = false;
    var isGreedy = false;
    Object.entries(data).forEach(([key, value]) => {
      const definitionName = generateDefinitionName(value);
      const index = value.valueOf();
      switch (key) {
        case 'greedy':
        case 'lookbehind':
          value = !!value;
          if (key === 'greedy') {
            isGreedy = value;
          }
          break;
        case 'pattern':
          const parsedPattern = this._parseRegExp(
            definitionName,
            this._input[index]
          );
          isGlobal = parsedPattern.global;
          value = parsedPattern.pattern;
          break;
        case 'alias':
          key = 'aliases';
          value = this._parseAlias(value);
          break;
        case 'inside':
          const definitionValue = this._input[index];
          if (typeof definitionValue === 'string') {
            value = `'${definitionValue}'`;
          } else if (typeof definitionValue === 'object') {
            this._parseGrammar(definitionName, definitionValue);
            value = definitionName;
          } else {
            throw 'unhandled inside value';
          }
          break;
        default:
          throw `unhandled token attribute: ${key}`;
      }
      attributes.push(`${key}: ${value}`);
    });

    if (isGreedy || isGlobal) {
      attributes.push('global:true');
    }

    this._addDefinition(
      'grammarToken',
      name,
      `GrammarToken(${attributes.join(',')},)`
    );
  }

  _parseGrammar(name, data) {
    if (this._hasDefinition(name)) {
      return;
    }

    this._addDefinition('grammar', name, `Grammar()`);

    const attributes = [];
    Object.entries(data).forEach(([key, value]) => {
      if (!value instanceof Primitive) {
        throw 'unhandled grammar value';
      }

      const index = value.valueOf();
      const definitionName = generateDefinitionName(value);
      const definitionValue = this._input[index];
      if (!definitionValue) {
        throw 'undefined definition value';
      }

      if (key === rest) {
        if (typeof definitionValue === 'string') {
          this._restGrammars[name] = `'${definitionValue}'`;
        } else if (isJsonObject(definitionValue)) {
          this._parseGrammar(definitionName, definitionValue);
          this._restGrammars[name] = definitionName;
        } else {
          throw `unhandled rest value: ${definitionValue}`;
        }
        return;
      } else if (key === tokenize) {
        if (typeof definitionValue !== 'string') {
          throw `unhandled tokenize type: ${typeof definitionValue}`;
        }

        this._customTokenizes[name] = this._tokenizeParser.add(
          this.languageId,
          definitionValue
        );
        return;
      }

      if (typeof definitionValue === 'string') {
        value = `[${this._parseStringPattern(
          definitionName,
          definitionValue
        )}]`;
      } else if (Array.isArray(definitionValue)) {
        value = '[';
        definitionValue.forEach((v) => {
          const index = v.valueOf();
          const definitionName = generateDefinitionName(v);
          const definitionValue = this._input[index];
          if (typeof definitionValue === 'string') {
            value += `${this._parseStringPattern(
              definitionName,
              definitionValue
            )},`;
          } else {
            value += `${definitionName},`;
            this._parseGrammarToken(definitionName, definitionValue);
          }
        });
        value += ']';
      } else if (typeof definitionValue === 'object') {
        this._parseGrammarToken(definitionName, definitionValue);
        value = `[${definitionName}]`;
      } else {
        throw 'unhandled definition value';
      }
      attributes.push(`'${key}': ${value}`);
    });

    if (attributes.length > 0) {
      this._grammarAttributes[name] = attributes;
    }
  }
}
