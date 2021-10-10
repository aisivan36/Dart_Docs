/// [Fold] method The first argument [0] is the starting value.
/// and the second argument takes that [0] feeds it to sum, and keeps adding it
/// based on the value of each [element] in the list.

void main() {
  const amounts = [2, 2];
  final total = amounts.fold(0, (int sum, element) => sum + element);

  print(total);
}
