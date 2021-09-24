int _computeValue() {
  print('In _computeValue...');
  return 3;
}

class CachedValueProvider {
  late final _cache = _computeValue(); // mark with late keyword

  int get value => _cache;
}

void main() {
  print('Calling constructor.....');
  var provider = CachedValueProvider(); //Lazy initialization
  print('Getting value...');
  print('The value is ${provider.value}');
}
