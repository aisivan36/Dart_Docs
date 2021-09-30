abstract class ForIvan {
  void say();
  void write();
}

class NothingToWorry extends ForIvan {
  void say() {
    print('This is an abtract');
  }

  void write() {
    print('The second write');
  }
}

class AnotherProblem extends ForIvan {
  void say() {
    print('IT has another problem to say');
  }

  void write() {
    print('The problems is you need to change yourself!');
  }
}

void main() {
  NothingToWorry about = NothingToWorry();
  about.say();
  about.write();

  print('-------------------------');

  AnotherProblem theproblem = AnotherProblem();
  theproblem.say();
  theproblem.write();
}
