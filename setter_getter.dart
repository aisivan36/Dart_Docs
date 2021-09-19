class Element {
  var _water;

  Element(this._water); // use constructor

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
  final myElement = Element('water'); // Use a constructor
  // myElement._water = 'Water'; //If not using a constructor
  print(myElement._water);
}
