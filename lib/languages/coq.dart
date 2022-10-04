// Generated file, do not edit manually.
//
// Script: tool/update_languages.js
// ignore_for_file: use_raw_strings, file_names

import '../src/models/models.dart';

LanguageProto _create() {
  final definition_0 = Grammar();
  final definition_16 = Grammar();
  const definition_1 =
      '\\(\\*(?:[^(*]|\\((?!\\*)|\\*(?!\\))|\\(\\*(?:[^(*]|\\((?!\\*)|\\*(?!\\))|\\(\\*(?:[^(*]|\\((?!\\*)|\\*(?!\\))|\\(\\*(?:[^(*]|\\((?!\\*)|\\*(?!\\))|[])*\\*\\))*\\*\\))*\\*\\))*\\*\\)';
  const definition_9 = '"(?:[^"]|"")*"(?!")';
  const definition_14 =
      '#\\[(?:[^\\[\\]("]|"(?:[^"]|"")*"(?!")|\\((?!\\*)|\\(\\*(?:[^(*]|\\((?!\\*)|\\*(?!\\))|\\(\\*(?:[^(*]|\\((?!\\*)|\\*(?!\\))|\\(\\*(?:[^(*]|\\((?!\\*)|\\*(?!\\))|\\(\\*(?:[^(*]|\\((?!\\*)|\\*(?!\\))|[])*\\*\\))*\\*\\))*\\*\\))*\\*\\))*\\]';
  const definition_19 = '=';
  const definition_20 = '^#\\[|\\]\$|[,()]';
  const definition_17 =
      '\\b(?:Cumulative|Global|Local|Monomorphic|NonCumulative|Polymorphic|Private|Program)\\b';
  const definition_4 =
      '\\b(?:Abort|About|Add|Admit|Admitted|All|Arguments|As|Assumptions|Axiom|Axioms|Back|BackTo|Backtrace|BinOp|BinOpSpec|BinRel|Bind|Blacklist|Canonical|Case|Cd|Check|Class|Classes|Close|CoFixpoint|CoInductive|Coercion|Coercions|Collection|Combined|Compute|Conjecture|Conjectures|Constant|Constants|Constraint|Constructors|Context|Corollary|Create|CstOp|Custom|Cut|Debug|Declare|Defined|Definition|Delimit|Dependencies|Dependent|Derive|Diffs|Drop|Elimination|End|Entry|Equality|Eval|Example|Existential|Existentials|Existing|Export|Extern|Extraction|Fact|Fail|Field|File|Firstorder|Fixpoint|Flags|Focus|From|Funclass|Function|Functional|GC|Generalizable|Goal|Grab|Grammar|Graph|Guarded|Haskell|Heap|Hide|Hint|HintDb|Hints|Hypotheses|Hypothesis|IF|Identity|Immediate|Implicit|Implicits|Import|Include|Induction|Inductive|Infix|Info|Initial|InjTyp|Inline|Inspect|Instance|Instances|Intro|Intros|Inversion|Inversion_clear|JSON|Language|Left|Lemma|Let|Lia|Libraries|Library|Load|LoadPath|Locate|Ltac|Ltac2|ML|Match|Method|Minimality|Module|Modules|Morphism|Next|NoInline|Notation|Number|OCaml|Obligation|Obligations|Opaque|Open|Optimize|Parameter|Parameters|Parametric|Path|Paths|Prenex|Preterm|Primitive|Print|Profile|Projections|Proof|Prop|PropBinOp|PropOp|PropUOp|Property|Proposition|Pwd|Qed|Quit|Rec|Record|Recursive|Redirect|Reduction|Register|Relation|Remark|Remove|Require|Reserved|Reset|Resolve|Restart|Rewrite|Right|Ring|Rings|SProp|Saturate|Save|Scheme|Scope|Scopes|Search|SearchHead|SearchPattern|SearchRewrite|Section|Separate|Set|Setoid|Show|Signatures|Solve|Solver|Sort|Sortclass|Sorted|Spec|Step|Strategies|Strategy|String|Structure|SubClass|Subgraph|SuchThat|Tactic|Term|TestCompile|Theorem|Time|Timeout|To|Transparent|Type|Typeclasses|Types|Typing|UnOp|UnOpSpec|Undelimit|Undo|Unfocus|Unfocused|Unfold|Universe|Universes|Unshelve|Variable|Variables|Variant|Verbose|View|Visibility|Zify|_|apply|as|at|by|cofix|else|end|exists|exists2|fix|for|forall|fun|if|in|let|match|measure|move|removed|return|struct|then|using|wf|where|with)\\b';
  const definition_5 =
      '\\b(?:0x[a-f0-9][a-f0-9_]*(?:\\.[a-f0-9_]+)?(?:p[+-]?\\d[\\d_]*)?|\\d[\\d_]*(?:\\.[\\d_]+)?(?:e[+-]?\\d[\\d_]*)?)\\b';
  const definition_12 = '@\\{|\\{\\||\\[=|:>';
  const definition_7 =
      '\\/\\\\|\\\\\\/|\\.{2,3}|:{1,2}=|\\*\\*|[-=]>|<(?:->?|[+:=>]|<:)|>(?:=|->)|\\|[-|]?|[-!%&*+/<=>?@^~\']';
  const definition_8 = '\\.\\(|`\\(|@\\{|`\\{|\\{\\||\\[=|:>|[:.,;(){}\\[\\]]';
  final definition_2 = GrammarToken(
    pattern: RegExp(definition_9),
    greedy: true,
    global: true,
  );
  final definition_10 = GrammarToken(
    pattern: RegExp(definition_14),
    greedy: true,
    aliases: ['attr-name'],
    inside: definition_16,
    global: true,
  );
  final definition_18 = GrammarToken(
    pattern: RegExp(definition_9),
    greedy: true,
    global: true,
  );
  final definition_11 = GrammarToken(
    pattern: RegExp(definition_17),
    aliases: ['attr-name'],
  );
  final definition_6 = GrammarToken(
    pattern: RegExp(definition_12),
    aliases: ['punctuation'],
  );
  definition_16.addAllTokens({
    'comment': [GrammarToken(pattern: RegExp(definition_1))],
    'string': [definition_18],
    'operator': [GrammarToken(pattern: RegExp(definition_19))],
    'punctuation': [GrammarToken(pattern: RegExp(definition_20))],
  });
  definition_0.addAllTokens({
    'comment': [GrammarToken(pattern: RegExp(definition_1))],
    'string': [definition_2],
    'attribute': [
      definition_10,
      definition_11,
    ],
    'keyword': [GrammarToken(pattern: RegExp(definition_4))],
    'number': [
      GrammarToken(pattern: RegExp(definition_5, caseSensitive: false))
    ],
    'punct': [definition_6],
    'operator': [GrammarToken(pattern: RegExp(definition_7))],
    'punctuation': [GrammarToken(pattern: RegExp(definition_8))],
  });

  return LanguageProto(
    'coq',
    definition_0,
  );
}

final languageCoq = _create();
