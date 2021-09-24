String createOderMessage() {
  Future<String> order = fetchUserOrders();
  return 'Your order is: $order';
}

Future<String> fetchUserOrders() {
  return Future.delayed(
    const Duration(seconds: 2),
    () => 'Large Latte',
  );
}

void main() {
  print(createOderMessage());
}
