abstract class ForIvan {
  void say();
  void write();
}

class NothingToWorry {
  void say() {
    print('This is an abtract');
  }

  void write() {
    print('The second write');
  }
}

void main() {
  NothingToWorry about = NothingToWorry();
  about.say();
  about.write();
}
