void main() {
  // var toSets = <String>{};
  // Set<String> thisWorksToo = {};

  /// This is not `Set` is just a `map`
  // var names = {};

  var halogens = {'fluorine', 'chlorine', 'bromine', 'iodine', 'astatine'};

  var justAnElement = <String>{};
  justAnElement.add('For Example');
  justAnElement.addAll(halogens);
  assert(justAnElement.length == 5);
  print(justAnElement);
}
