import '../helpers/extensions.dart';

class RematchOption {
  RematchOption({
    required this.cause,
    required this.reach,
  });

  final String cause;
  // Do not set reach as final.
  int reach;

  Map<String, dynamic> toMap() => {
        'cause': cause,
        'reach': reach,
      };

  @override
  String toString() => toMap().toPrettyString();
}
