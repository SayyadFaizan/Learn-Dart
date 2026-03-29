void main() {
  // Dart follows BODMAS
  print(7 + 7 / 7 + 7 * 7 - 7);

  int a = 2 + 3 * 4;        // * has higher precedence → 3*4 = 12 → 2+12 = 14
  int b = 10 - 4 - 1;       // - is left associative → (10-4)=6 → 6-1=5

  int x, y, z;
  x = y = z = 5;            // = is right associative → z=5 → y=5 → x=5

  bool r = true || false && false;
  // && has higher precedence → false&&false=false → true||false = true

  print("a = $a");
  print("b = $b");
  print("x = $x, y = $y, z = $z");
  print("r = $r");

  /*
  Operator precedence decides which operator runs first, while associativity decides the direction of evaluation when operators have the same precedence. Dart evaluates most operators left-to-right, but assignment and some unary operators are right-to-left. Understanding both avoids unexpected results in expressions.
  */


  //This is Single line comment
  /*
   This is multi
   line comment.
   */
}
