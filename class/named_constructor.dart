class User {
  int? id;
  String? name;

  User.anonymous() {
    id = 0;
    name = 'anonymous';
    print('$name, $id');
  }
}

void main() {
  final anony = User.anonymous();
  print(anony);
}
