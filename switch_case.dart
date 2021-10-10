/// [Note]: In Dart, [switch] statements don’t support ranges like [number > 5].
///  [Only == equality] checking is [allowed]. If your [conditions] involve [ranges],
///  then you should use [if] [statements]

void main() {
  const number = 3;

  switch (number) {
    case 0:
      print('zero');
      break;
    case 1:
      print('one');
      break;
    case 2:
      print('two');
      break;
    case 3:
      print('three');
      break;
    case 4:
      print('four');
      break;
    default:
      print('Something else');
  }
}
