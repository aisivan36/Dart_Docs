void main() {
  final myHouse = {
    'bedroom': 'messy',
    'kitchen': 'messy',
    'living room': 'messy',
  };
  final inventory = {
    'cakes': 20,
    'pies': 14,
    'donuts': 37,
    'cookies': 141,
  };
  final numberOfCakes = inventory['cakes'];

  /// Here's how to [for in loop] with Maps we must use the [values] or the [.keys].
  /// If were not used that it gives an error like this:
  /// [The type 'Map<String, int>' used in the 'for' loop must implement Iterable.]
  for (var item in inventory.keys) {
    print(inventory[item]);
  }

  /// We can sure use [Maps] with [forEach]
  inventory.forEach((key, value) => print('$key -> $value'));

  print(numberOfCakes);
}
