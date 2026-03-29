// Records

void main() {
  var info = printName();
  print(info);
  print(info.$2);
  var (number, name) = printName();
  print(number);
  print(name);

  // user defined records, user defined records are immutable(once declare value can't change).
  var records = (4.5, greeting: 'hi', isAdult: 'false');
  print(records.$1);
  print(records.greeting);
  print(records.isAdult);

  (double, int)? someValue = (4.5, 2); //nullable records
  print(someValue);
  someValue = null;
  print(someValue);

  ({int x, int y, int z}) point = (x:1, y:2, z:3);
  ({int a, int y, int z}) color = (a:1, y:2, z:3);
  // point = color // the dart treat the both records differently because they had different parameter name.

}
// We can return more than one value from a function
(int, String) printName(){
  return (10, 'Faizan');
}

//null safety in function return type
String? test(){
  return null;
}

