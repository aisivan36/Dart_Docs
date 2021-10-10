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
  final userId;

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

void main() {
  final todo = Todo(completed: true, id: 1, title: 'No idea', userId: 13);
  print(todo);
}
