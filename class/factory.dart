class User {
  int id;
  String name;
  User({required this.id, required this.name});

  factory User.fromJson(Map<String, dynamic> json) {
    final userId = json['id'] as int;
    final userName = json['name'] as String;
    return User(id: userId, name: userName);
  }
}

void main(List<String> args) {
  final ivan = {'id': 10, 'name': 'ivan'};
  final derived = User.fromJson(ivan);
  print('id: ${derived.id}\nname: ${derived.name}');
}
