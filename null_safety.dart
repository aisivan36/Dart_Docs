void main() {
  List<String> aList = ['one', 'two', 'three'];
  List<String>? aNullableListOfString; // null asignment
  //null String value asignment
  List<String?> aListOfNullableString = ['one', null, 'three'];

  print('aList is: $aList');
  print('aNullableListOfString is: $aNullableListOfString');
  print('aListOfNullableString is: $aListOfNullableString');
}
