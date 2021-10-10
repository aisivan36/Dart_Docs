import 'dart:convert';
import 'dart:io';
import 'package:http/http.dart' as http;

Future<void> main() async {
  final url = 'https://jsonplaceholder.typicode.com/todos/1';
  final parsedUrl = Uri.parse(url);
  final response = await http.get(parsedUrl);
  final statusCode = response.statusCode;
  if (statusCode == 200) {
    final rawJsonString = response.body;
    final jsonMap = jsonDecode(rawJsonString);
    final todo = Todo.fromJson(jsonMap); // [factory] [fromJson] method
    print(todo);
  } else {
    throw HttpException('$statusCode');
  }
}

class Todo {
  Todo({
    required this.completed,
    required this.id,
    required this.title,
    required this.userId,
  });

  final bool completed;
  final int id;
  final String title;
  final int userId;

  factory Todo.fromJson(Map<String, Object?> jsonMap) {
    return Todo(
      completed: jsonMap['completed'] as bool,
      id: jsonMap['id'] as int,
      title: jsonMap['title'] as String,
      userId: jsonMap['userId'] as int,
    );
  }

  @override
  String toString() {
    return 'userId: $userId\n'
        'id: $id\n'
        'title: $title\n'
        'completed: $completed';
  }
}
