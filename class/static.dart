class TheRight {
  ///Static
  static int theLeftIsNotRight = 20;
}

class NonStatic {
  int nonStatic = 13;
}

class Circle {
  static const double pi = 3.1415926;

  /// make radius as required inside `curly braces` `{}`
  static void workOurCircumference({double? radius}) {
    double circumference = 2 * pi * radius!;
    print(circumference);
  }
}

void main() {
  /// To call a static with this
  print('This is a Static: ${TheRight.theLeftIsNotRight}');

  /// this without static we call it with the whole Object
  print('This is non static class: ${NonStatic().nonStatic}');

  ///Static const, set the value of radius.
  /// to declare a class, is not required if we use static methods
  // Circle circle = Circle();
  // If we use staic void in the class we can call it like this
  Circle.workOurCircumference(radius: 15.6);
// note we can call it directly like this. Without declared it as variable and not static void
  // Circle().workOurCircumference(radius: 15.6);
}
