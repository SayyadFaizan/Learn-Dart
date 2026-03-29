// Mixin
void main() {
 final animal = Animal();
 animal.displaySpeed();
}


mixin Jump {
  int speed = 10;
}
mixin IsScreaming {
  bool screaming = false;
}
// Mixin allows you to use other class code without forming any parent child relationship.
// If we extends the subclass of mixin like cat extends Animal , inside the cat class we can use the
// mixin properties like speed or screaming.
//After dart 3.0 we can't extends the mixin with other class, we need to use with keyword.
// Object class is the base class of all objects.

class Animal with Jump, IsScreaming {
  void displaySpeed() {
    print(speed);
    print(screaming);
  }
}