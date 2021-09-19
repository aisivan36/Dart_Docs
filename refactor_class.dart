class User {
  const User({this.id = 0, this.name = 'anonymous'});

  const User.anonymous() : this();

  final String name;
  final int id;

  String toJson() {
    return '{"id":$id,"name":$name}';
  }

  @override
  String toString() {
    return ' This is from toString User(id: $id, name: $name)';
  }
}

void main(List<String> args) {
  User user = User();
  print(user.toJson() + user.toString());
}
