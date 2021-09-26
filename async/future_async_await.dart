String? result;

Future<int> returnOneAsync() async {
  await Future<int?>.delayed(const Duration(seconds: 3));
  return 1;
}

Future<int> returnTwoAsync() async {
  await Future<int?>.delayed(const Duration(seconds: 3));
  return 2;
}

Future<int> returnThreeAsync() async {
  await Future<int?>.delayed(const Duration(seconds: 3));
  return 3;
}

Future count() async {
  int total = 0;
  total = await returnOneAsync();
  total += await returnTwoAsync();
  total += await returnThreeAsync();

  print(result = total.toString());
}

void main() {
  count();
}
