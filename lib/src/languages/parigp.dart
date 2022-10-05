// Generated file, do not edit manually.
//
// Script: tool/update_languages.js
// ignore_for_file: use_raw_strings, file_names

import '../models/models.dart';

LanguageProto _create() {
  final definition_0 = Grammar();
  const definition_1 = '\\/\\*[\\s\\S]*?\\*\\/|\\\\\\\\.*';
  const definition_8 = '"(?:[^"\\\\\\r\\n]|\\\\.)*"';
  const definition_3 =
      '\\b(?:b *r *e *a *k *p *o *i *n *t|b *r *e *a *k|d *b *g *_ *d *o *w *n|d *b *g *_ *e *r *r|d *b *g *_ *u *p|d *b *g *_ *x|f *o *r *c *o *m *p *o *s *i *t *e|f *o *r *d *i *v|f *o *r *e *l *l|f *o *r *p *a *r *t|f *o *r *p *r *i *m *e|f *o *r *s *t *e *p|f *o *r *s *u *b *g *r *o *u *p|f *o *r *v *e *c|f *o *r|i *f *e *r *r|i *f|l *o *c *a *l|m *y|n *e *x *t|r *e *t *u *r *n|u *n *t *i *l|w *h *i *l *e)\\b';
  const definition_4 = '\\b\\w(?:[\\w ]*\\w)?(?= *\\()';
  const definition_9 =
      '((?:\\. *\\. *)?)(?:\\b\\d(?: *\\d)*(?: *(?!\\. *\\.)\\.(?: *\\d)*)?|\\. *\\d(?: *\\d)*)(?: *e *(?:[+-] *)?\\d(?: *\\d)*)?';
  const definition_6 =
      '\\. *\\.|[*\\/!](?: *=)?|%(?: *=|(?: *#)?(?: *\')*)?|\\+(?: *[+=])?|-(?: *[-=>])?|<(?: *>|(?: *<)?(?: *=)?)?|>(?: *>)?(?: *=)?|=(?: *=){0,2}|\\\\(?: *\\/)?(?: *=)?|&(?: *&)?|\\| *\\||[\'#~^]';
  const definition_7 = '[\\[\\]{}().,:;|]';
  final definition_2 = GrammarToken(
    pattern: RegExp(definition_8),
    greedy: true,
    global: true,
  );
  final definition_5 = GrammarToken(
    pattern: RegExp(definition_9, caseSensitive: false),
    lookbehind: true,
  );
  definition_0.addAllTokens({
    'comment': [GrammarToken(pattern: RegExp(definition_1))],
    'string': [definition_2],
    'keyword': [GrammarToken(pattern: RegExp(definition_3))],
    'function': [GrammarToken(pattern: RegExp(definition_4))],
    'number': [definition_5],
    'operator': [GrammarToken(pattern: RegExp(definition_6))],
    'punctuation': [GrammarToken(pattern: RegExp(definition_7))],
  });

  return LanguageProto(
    'parigp',
    definition_0,
  );
}

final languageParigp = _create();
