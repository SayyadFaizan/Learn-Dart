void main() {
  // Variable
  // Integer
  int firstValue = 302;
  // double
  double pi = 3.14;
  print(pi);
  // String
  String name = 'Faizan';
  print(name);
  print(firstValue);
  
  // Boolean
  bool isChild = true;
  print(isChild);
  
  // dynamic (It can take any value)
  // In many cases we will avoid using dynamic, there are many reason like we cannot use the datatype specific properties and function and it requires to validate data before insertion.
  dynamic secondValue = 10.5;
  print(secondValue);
  
  // Some in built function
  print(firstValue.isOdd);
  
  String greeting = 'Hello, World';
  print(greeting);
  
//Use interpolation to compose strings and values.
//greeting = greeting + ' Yoooo'; this works but its not a good way to concatenate string
  greeting = '$greeting Yooo';  // this is called as ploish notation
  print(greeting);
  greeting = '${greeting.length} Yooo'; //its use when we need to use var properties and function
  print(greeting);

  //to use the $ like sign we use \ backslash to print the actual symbol
  print('250 \$');

  // Multi line String 
  String multiLineString = '''Hello 
  
  world
  ''';
  print(multiLineString);

  //Line break in string
  print('Hi,\nI am Faizan');
}