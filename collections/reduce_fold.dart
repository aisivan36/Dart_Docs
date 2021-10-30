void main(List<String> args) {
  const amounts = [199, 299, 299, 199, 499];
  final total = amounts.reduce((value, element) => value + element);

  print(total);

  /// Using Fold
  const folds = [199, 299, 299, 199, 499];

  final totalFold = folds.fold(0, (int sum, element) => sum + element);
  print('\n$totalFold');
}
