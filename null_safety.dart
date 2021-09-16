void main() {
  List<String> aList = ['one', 'two', 'three'];
  List<String>? aNullableListOfString; // null asignment
  //null String value asignment
  List<String?> aListOfNullableString = ['one', null, 'three'];

  print('aList is: $aList');
  print('aNullableListOfString is: $aNullableListOfString');
  print('aListOfNullableString is: $aListOfNullableString');
  nullAsertion();
}

///  If you’re wrong, Dart throws an exception at `run-time`. This makes the `!` operator `unsafe`, so don’t use it unless you’re very sure that the expression isn’t null.
int? couldReturnNullButDoesnt() => -3;

void nullAsertion() {
  int? couldReturnNullButIsnot = 1;
  List<int?> listThatCouldHoldNulls = [2, null, 4];

  int a = couldReturnNullButIsnot;

  /// mark with ! on the first item on the list
  int b = listThatCouldHoldNulls.first!;

  /// abs absolute value
  int c = couldReturnNullButDoesnt()!.abs();

  print('a is $a');
  print('b is $b');
  print('c is $c');
}
