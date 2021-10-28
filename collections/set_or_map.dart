void main() {
  // When explicitly declare a type is considered a set
  final someSet = <dynamic>{};

  someSet.add('Ivan');
  someSet.add(' Boginski');
  someSet.add('\nage:');
  someSet.add(22);

  print(someSet);

  /// While when there's no explicitly type delcaration is considered a Map
  /// which is like <dynamic, dynamic>{} Map
  final mapDynamic = {};

  mapDynamic.addAll({
    'cakes': 20,
    'pies': 15,
    'donuts': 37,
    'cookies': 141,
    'name': 'Ivan',
  });

  print(mapDynamic);
}
