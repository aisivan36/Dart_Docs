import 'dart:html';

class Animal {
  void move() {
    print('changed posistion');
  }
}

class Fish extends Animal {
  @override
  void move() {
    super.move(); // Override method super.move()
    print('By Swiming');
  }
}

class Bird extends Animal {
  @override
  void move() {
    // super to call the original value from Animal class then then override with
    // other method statement
    super.move(); // Override method super.move()
    print('By Flying');
  }
}

mixin CanSwim {
  void swim() {
    print('Changing position by swiming');
  }
}

mixin CanFly {
  void fly() {
    print('Changing position by flying');
  }
}

class Duck extends Animal with CanSwim, CanFly {}

class Airplane with CanFly {}

void main() {
  // Animal().move();
  Fish().move();
  Bird().move();
  Duck().fly();
}
