class First {
  var _id;

  First(this._id);

  String get Data => _id;

  set Data(String id) {
    _id = id;
  }
}

class StaticMember extends First {
  //Super class
  StaticMember({id}) : super(id);

  static int myProperty = 0;

  static void myMethod() {
    final first = First('First Class');
    // first.Data = 'From First';
    print('From ${first}');

    print('what is up');
  }
}

main(List<String> args) {
  // To define access a static class we can use the following
  StaticMember.myProperty;

  //To call it
  StaticMember.myMethod();
  // staticMember;

  ///   Static variables
  /// Static variables are often used for constants and
  /// in the singleton pattern.
}
