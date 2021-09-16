class Meal {
  late String _description;

  set description(String desc) {
    _description = 'Meal Description: $desc';
  }

  String get description {
    return _description;
  }
}

void main() {
  final myMeal = Meal();
  myMeal.description = 'Iwak pitek'; // Set the String
  print(myMeal.description); // Get the output of String
}
