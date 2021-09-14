void main() {
  int? x;
  const input = [0, 1, 2, 3];
  var sum = input.fold(x, (previousValue, element) {
    return (previousValue ??= 1 + element);
  });
  print(sum);
}
