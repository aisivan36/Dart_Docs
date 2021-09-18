void main() {
  Simple test = Simple('A');
  print(test.a);
  print(test.tsc);
}

class Simple {
  String a;

  Simple(this.a) {
    this.a;
  }
  String get tsc {
    return 'This is from getter tsc';
  }
}
