void main() {
  // var list = [1, 2, 3];
  var list;

  var list2 = [0, ...?list];
  assert(list2.length == 1);
  print(list2);
}
