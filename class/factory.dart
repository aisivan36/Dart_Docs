class User {
  int id;
  String name;
  User({required this.id, required this.name});

  factory User.fromJson(Map<String, dynamic> json) {
    final userId = json['id'];
    final userName = json['name'];
    return User(id: userId, name: userName);
  }

  /// If not using factory
  User.fromJsonAlready(Map<String, dynamic> json)
      : id = json['id'] as int,
        name = json['name'] as String;
}

class Derived extends User {
  Derived(Map<String, dynamic> json) : super.fromJsonAlready(json);
}

void main(List<String> args) {
  final ivan = {'id': 10, 'name': 'ivan'};
  final derived = User.fromJson(ivan);
  print('id: ${derived.id}\nname: ${derived.name}');

  print('===========  Not Factory');
  final notFactory = {'id': 10, 'name': 'ivan'};
  final derivative = Derived(notFactory);
  print('id: ${derivative.id}\nname: ${derivative.name}');
}



//// However, besides adding some simple asserts to
///the initializer list, there isn't much else you can
///do to with id and name. With a factory
///constructor, though, you could do all kinds of
///validation, error checking and even modification
///of the arguments before creating the object. This
///is actually highly desireable in the case here
///because if 'id' or 'String' didn't exist in the
///map, then your app would crash because you
///aren't handling null.
///
///
///
/// [Note]: Using a factory constructor over a
///named constructor can also help to prevent
///breaking changes for subclasses of your
///class. That topic is a little beyond the scope
///of this chapter, but you can read
///[https://stackoverflow.com/a/66117859] for a
///longer explanation.
///
///
///
///
///
///
///
///
///
///
///
///
///