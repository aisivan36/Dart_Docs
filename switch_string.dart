/// In this example, the ['cloudy'] case was completely empty, with no [break]
/// statement. Therefore, the code [Fals Through] to the ['rainy'] case.
/// This means that if the value is equal to either ['cloudy'] or ['rainy'],
/// then the [swtich] statement will execute the same case.

void main() {
  const weather = 'cloudy';

  switch (weather) {
    case 'sunny':
      print('Put on sunscreen.');
      break;
    case 'snowy':
      print('Get your skis.');
      break;
    case 'cloudy':
    case 'rainy':
      print('Bring an umbrella.');
      break;
    default:
      print("I'm not familiar with that weather.");
  }
}
