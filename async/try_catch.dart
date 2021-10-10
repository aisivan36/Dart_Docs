/// Try catch block with async

void main() async {
  print('Beofre the future');
  try {
    final value = await Future<int>.delayed(
      Duration(seconds: 1),
      () => 43,
    );
    print('Value: $value');
  } catch (error) {
    print(error);
  } finally {
    print('Future is complete');
  }
  print('After the future');
}
