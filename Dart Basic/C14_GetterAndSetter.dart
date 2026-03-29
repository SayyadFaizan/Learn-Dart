void main() {
  final r1 = Rectangle();
  print(r1._height);
  r1.setHeight = 6;
  print(r1._height);

  print(Constant.greet);
  print(Constant.bye);
  print(Constant.giveMeSomeValue());
}

// Getter and Setter
class Rectangle {
  int _height = 4;
//   getter
  int get height => _height;
// Setter
  set setHeight(int h) {
    _height = h;
  }
}
// We use getter and setter to modify the variable only inside the class and outside the class
// only readable


//Static variable and function
class Constant{
  static int height = 12;
  static String greet = 'Hello, How are you ?';
  static String bye = 'Bye!';

  static int giveMeSomeValue(){
    return height; //use can only use static variables inside a static function.
  }
}