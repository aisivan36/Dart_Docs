void main() {
  const numbers = [1, 2, 3, 4];
  final squares = numbers.map((number) => number * number);
  final evens = squares.where((square) => square.isEven);

  print(squares.toList());
  print(evens.toList());
}
