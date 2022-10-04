import './prism.dart';
import 'models/models.dart';

typedef CustomTokenizer = List<Node> Function(
  String code,
  Grammar grammar,
  Prism prism,
);
