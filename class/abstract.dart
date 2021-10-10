abstract class ForIvan {
  void say();
  void write();
}

/// If we extends an abstract class we must implement all of them
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

  /// note, we can mark theproble as ForIvan like this,
  /// [ForIvan theproblem = AnotherProblem();]
  /// This is absolutely no problem.
  /// we can act the [AnotherProblem] class as if it were [ForIvan] class.
  AnotherProblem theproblem = AnotherProblem();
  theproblem.say();
  theproblem.write();
}
