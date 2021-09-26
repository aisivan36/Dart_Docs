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
  total = await returnOneAsync().then((value) {
    return total += value;
  });
  total += await returnTwoAsync().then((value) {
    return total += value;
  });
  total += await returnThreeAsync().then((value) {
    return total += value;
  });

  print(result = total.toString());
}

void main() {
  count();
}
