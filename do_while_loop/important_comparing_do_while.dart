/// Comparing [while] and [do-while] loop
/// It is not always the case that [while] loops and [do-while] loops will give
/// the same result. For example,
/// here's a while loop where the [sum] starts at 11:

void whileLoop() {
  int sum = 11;
  while (sum < 10) {
    sum += 4;
  }
  print(sum); // we instead print the sum outside of while scope
}
// while loop
///// Since the initial condition is [false], the loop never executes.
/// The [sum] remains [11]

//Do While Loop
/// This is how Do while Loop is different
void doWhileLoop() {
  int sum = 11;
  do {
    sum += 4;
  } while (sum < 10);
  print(sum);
}
//Do while
/// The sum at the end to be 15. This is because the [do-while] loop executed
/// the body before checking the condition.

void main() {
  print('==== This is While Loop');
  whileLoop();

  print('\n');

  print('===== This is Do While Loop');
  doWhileLoop();
}
