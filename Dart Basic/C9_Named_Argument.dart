// Named Argument
void main() {
  printInfo(101, name: 'Faizan', greeting: 'Hello');
}
void printInfo(int id, {required String name, int? age, required String greeting}) {
  print(greeting);
  print(name);
  print(age);
}
/*
If we have more than 3 argument we need to pass in a position of that arguments, to resolve this we use
named arguments var_name : value.
we use curly braces for argument is required or not , if argument is mandatory we use 'required' keyword
or not required we use ? for nullable arguments.
We can use both together also positional and named arguments, but use positional before the curly not
after the curly braces.
*/