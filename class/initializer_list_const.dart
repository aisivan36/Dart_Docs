class InitializerList {
  int? x;
  int? y;

  InitializerList({int? x, int? y})
      : x = 10,
        y = y;
}

void main(List<String> args) {
  final theX = InitializerList();
  final theY = InitializerList(y: 3);

  print(theX.x);

  print(theY.y);
}
