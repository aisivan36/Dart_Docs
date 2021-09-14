/// You can change the value of a `non-final`, `non-const` `variable`, even if it used to have a `const` value:

void main() {
  var foo = const [5, 6, 7];
  const baz = []; // Equivalent to `const []`
  foo = [1, 2, 3]; // Was const []

  /// You can’t change the `value` of a `const` variable:
  /// baz = [42]; //Error: Constant variables can't be assigned a value

  print(foo);
  spreed();
}

void spreed() {
  const Object i = 3; // Where i is a const Object with an int value...
  const list = [i as int]; // Use a typecast.
  const map = {if (i is int) i: 'int'}; // Use is and collection if.
  const set = {if (list is List<int>) ...list}; // ...and a spread.

  print(map);
  print(set);
}
