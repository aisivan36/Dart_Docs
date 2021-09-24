class Meal {
  late String _description;

  String get MainSetGet => _description;

  set MainSetGet(String desc) {
    _description = 'Here we go: $desc';
  }
}

void main() {
  Meal myMeal = Meal();
  myMeal.MainSetGet = 'Do not ask me!';
  print(myMeal._description);
}
