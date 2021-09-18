class Element {
  var _water;

  /// `Getter`
  String get object {
    return _water;
  }

  /// `Setter`
  set object(String water) {
    _water = water;
  }
}

void main() {
  final myElement = Element();
  myElement._water = 'Water';
  print(myElement._water);
}
