// TODO: Delete it
import { definitionNameToId, Primitive } from './utils';
import { rest } from '../prismjs/src/shared/symbols';

export const findHostGrammar = (name, input) => {
  var matchId = definitionNameToId(name);
  var grammarKey = undefined;
  const parsed = [];

  const iterateToken = (ref, token) => {
    if (parsed.includes(ref)) {
      return;
    }
    parsed.push(ref);

    if (Array.isArray(token)) {
      throw 'Token cannot be an Array here.';
    }
    if (token instanceof Object) {
      for (const k in token) {
        const v = token[k];
        if (v.valueOf() === matchId) {
          return true;
        }
        if (k === 'inside') {
          iterateGrammar(input[v.valueOf()]);
        }
      }
    }
  };

  const iterateGrammar = (grammar) => {
    if (typeof grammar !== 'object') {
      return;
    }
    for (const k in grammar) {
      const v = grammar[k];
      if (v instanceof Primitive) {
        const refValue = input[v.valueOf()];
        if (Array.isArray(refValue)) {
          for (const item of refValue) {
            if (iterateToken(item, input[item.valueOf()])) {
              grammarKey = k;
              return;
            }
          }
        } else {
          if (iterateToken(k, refValue)) {
            grammarKey = k;
            return;
          }
        }
      }
      if (k === rest) {
        iterateGrammar(input[v.valueOf()]);
      }
    }
  };

  iterateGrammar(input[0]);

  return grammarKey;
};
