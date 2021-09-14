void main() {
  int? text;
  text = 13;
  assert(text <= 14, 'The text is odd');

  print(text);

  /// To use assert is with this command  `dart --enable-asserts theName.dart`
  /// It is useful for only on development and not in production
}
