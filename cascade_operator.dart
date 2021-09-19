//An Example class with member attributes and methods
class Example {
  var a;
  var b;

  void bSetter(b) {
    this.b = b;
  }

  void printValues() {
    print(this.a);
    print(this.b);
  }
}

void main() {
  //Instantiating two Example objects
  Example eg1 = new Example();
  Example eg2 = new Example();

  //Using the .. operator for operations on Example object
  print("Example 1 results:");

  ///This is using cascade operator to set a value in a row
  eg1
    ..a = 88
    ..bSetter(53)
    ..printValues();

  //The same operations as above but without the .. operator
  ///This is not using a cascade operator we usually do like this to set a value of a class
  print("Example 2 results:");
  eg2.a = 88;
  eg2.bSetter(53);
  eg2.printValues();
}
