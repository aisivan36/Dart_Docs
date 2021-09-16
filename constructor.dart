void main() {
  Simple test = new Simple();
}

class Simple {
  String a;
  Simple(this.a, String tst) {
    this.a = tst;
    tst = 'asd';
  }
}
