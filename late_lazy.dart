class CachedValueProvider {
  late final _cache = _computeValue(); // marked as late
  int get value {
    return _cache;
  }

  /// here's we declared the variable below it should have marked as late to the _cache
  /// To be able to get the value
  int _computeValue() {
    print('In _computeValue');
    return 3;
  }
}

void main() {
  print('Calling Construtor');
  var provider = CachedValueProvider();
  print('Getting value......');
  print('The value if ${provider.value}');
}
