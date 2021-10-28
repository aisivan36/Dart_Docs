void main(List<String> args) {
  final setA = {8, 2, 3, 1, 4};
  final setB = {1, 6, 5, 4};

  /// Since both sets [A] and [B] share the number 1 and 4, it is the answer
  ///  Pirnts it will results {1,4}
  final intersection = setA.intersection(setB);
  print(intersection);
}
