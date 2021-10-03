class Animal {
  void move() {
    print('changed posistion');
  }
}

class Fish extends Animal {}

void main() {
  Animal().move();
  Fish().move();
}
