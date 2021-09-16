class Cascade {
  var a;
  var b;
  void setA(water) {
    this.a = water;
  }

  void setB(air) {
    this.b = air;
  }

  void showValue() {
    print(this.a);
    print(this.b);
  }
}

void main() {
  Cascade d1 = new Cascade();
  Cascade d2 = new Cascade();

  print("W3Adda -  Dart Cascade Notation");
  // Without Cascade Notation
  d1.setA(20);
  d1.setB(25);
  d1.showValue();
  // With Cascade Notation
  d2
    ..setA(10)
    ..setB(15)
    ..showValue();
}
