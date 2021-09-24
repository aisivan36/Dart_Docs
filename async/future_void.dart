/// Declare future function here
Future<void> fetchUserOrder() {
  return Future.delayed(Duration(seconds: 11), () => print('So damned Large'));
}

void main() {
  fetchUserOrder(); // Call the future function
  print('Fetching user\'s order...'); // This will run first
}
