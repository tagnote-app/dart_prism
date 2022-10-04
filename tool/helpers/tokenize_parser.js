const embeddedInPattern =
  '(code, templateGrammar, Prism) => {\n\t\treturn templating(code, hostGrammar, withoutTokenize(templateGrammar), Prism);\n\t}';

export class TokenizeParser {
  _embeddedInStack = {
    'js-templates': [
      "embeddedIn('css')",
      "embeddedIn('html')",
      "embeddedIn('svg')",
      "embeddedIn('markdown')",
      "embeddedIn('graphql')",
      "embeddedIn('sql')",
    ],
    actionscript: [
      "embeddedIn('css')",
      "embeddedIn('html')",
      "embeddedIn('svg')",
      "embeddedIn('markdown')",
      "embeddedIn('graphql')",
      "embeddedIn('sql')",
    ],
    javascript: [
      "embeddedIn('css')",
      "embeddedIn('html')",
      "embeddedIn('svg')",
      "embeddedIn('markdown')",
      "embeddedIn('graphql')",
      "embeddedIn('sql')",
    ],
    typescript: [
      "embeddedIn('css')",
      "embeddedIn('html')",
      "embeddedIn('svg')",
      "embeddedIn('markdown')",
      "embeddedIn('graphql')",
      "embeddedIn('sql')",
    ],
    mongodb: [
      "embeddedIn('css')",
      "embeddedIn('html')",
      "embeddedIn('svg')",
      "embeddedIn('markdown')",
      "embeddedIn('graphql')",
      "embeddedIn('sql')",
    ],
    n4js: [
      "embeddedIn('css')",
      "embeddedIn('html')",
      "embeddedIn('svg')",
      "embeddedIn('markdown')",
      "embeddedIn('graphql')",
      "embeddedIn('sql')",
    ],
    flow: [
      "embeddedIn('css')",
      "embeddedIn('html')",
      "embeddedIn('svg')",
      "embeddedIn('markdown')",
      "embeddedIn('graphql')",
      "embeddedIn('sql')",
    ],
    jsx: [
      "embeddedIn('html')",
      "embeddedIn('svg')",
      "embeddedIn('markdown')",
      "embeddedIn('graphql')",
      "embeddedIn('sql')",
      "embeddedIn('css')",
    ],
    tsx: [
      "embeddedIn('html')",
      "embeddedIn('svg')",
      "embeddedIn('markdown')",
      "embeddedIn('graphql')",
      "embeddedIn('sql')",
      "embeddedIn('css')",
    ],
    django: ["embeddedIn('markup')"],
    ejs: ["embeddedIn('markup')"],
    erb: ["embeddedIn('markup')"],
    etlua: ["embeddedIn('markup')"],
    ftl: ["embeddedIn('markup')"],
    handlebars: ["embeddedIn('markup')"],
    latte: ["embeddedIn('markup')"],
    liquid: ["embeddedIn('markup')"],
    smarty: ["embeddedIn('markup')"],
    soy: ["embeddedIn('markup')"],
    tt2: ["embeddedIn('markup')"],
    twig: ["embeddedIn('markup')"],
  };

  /**
   * @type {{
   *   consumers: string[];
   *   stringified: string;
   * }[]}
   */
  items = [];

  _isEmbeddedIn(text) {
    const simplify = (s) => s.replace(/[\n\t\s]/g, '');
    return simplify(text) === simplify(embeddedInPattern);
  }

  /**
   * @param {string} languageId
   * @param {string} stringified
   * @returns {string}
   */
  add(languageId, stringified) {
    if (this._isEmbeddedIn(stringified)) {
      return this._embeddedInStack[languageId].shift();
    }

    let index = this.items.findIndex((e) => e.stringified === stringified);
    if (index === -1) {
      index = this.items.length;
      this.items.push({
        consumers: [languageId],
        stringified,
      });
    } else if (!this.items[index].consumers.includes(languageId)) {
      this.items[index].consumers.push(languageId);
    }

    return `customTokenizer_${index}`;
  }
}
