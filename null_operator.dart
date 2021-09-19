import 'dart:io';

bool? isBeautiful(String? item) {
  if (item == 'flower') {
    return true;
  } else if (item == 'garbage') {
    return false;
  }
  return null;
}

void main(List<String> args) {
  // Here we can either use type cast or just use ! for shorter to make sure it is not a null
  String? object;
  print('Please enter guess: a: ( flower)  b: ( tree)  ');

  object = stdin.readLineSync();

  if (object == 'a') {
    object = 'flower';
  } else if (object == 'b') {
    print('Your guess is wrong, please try again');
    return null;
  }

  // if it true
  bool flowerIsBeautiful = isBeautiful(object) as bool;
  print('Your guess is "${flowerIsBeautiful}" $object');

  ///   Beware, though. Using the `assertion` `operator` (or
  /// `casting` down to a` non-nullable` type) will `crash`
  /// your app with a `runtime error` if the value
  /// actually does turn out to be null, so don’t use the
  /// assertion operator unless you can guarantee that
  /// the variable isn’t null.
}
