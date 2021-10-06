import 'dart:math';

abstract class Shape {
  factory Shape({String? type}) {
    if (type == 'circle') return Circle(radius: 2); // call Circle class

    if (type == 'square') return Square(side: 2); // call Square class

    /// To trigger `exception`, don't `implement` a check for `'triangle'`.
    throw 'Can\'t create $type';
  }
  num get area;
}

class Circle implements Shape {
  final num? radius;
  Circle({this.radius});
  @override
  num get area => pi * pow(radius!, 2);
}

class Square implements Shape {
  final num? side;
  Square({this.side});
  @override
  num get area => pow(side!, 2);
}

class Triangle implements Shape {
  final num? side;
  Triangle({this.side});
  @override
  num get area => pow(side!, 2) / 2;
}

main() {
  try {
    print(Shape(type: 'circle').area);
    print(Shape(type: 'square').area);
    print(Shape(type: 'Triangle').area);
  } catch (err) {
    print(err);
  }
}
