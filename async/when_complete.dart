void main() {
  print('Before the future');
  final myFuture = Future<int>.delayed(
    Duration(seconds: 1),
    () => 42,
  )
      .then(
        (value) => print('Value: $value'),
      )
      .catchError(
        (Error) => print('Error $Error'),
      )
      .whenComplete(
        () => print('Future is complete'),
      );

  print('After myFuture');
}
