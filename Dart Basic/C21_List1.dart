// List

void main() {
  List<int> list = [10, 20, 30];
  print(list);

  final student = Student<String>('Faizan');
  print(student.name);

  List<Student> students = [
    Student('Mubin'),
    Student('Saad'),
    Student('Shadab'),
    Student('Siddiq')
  ];
  print(students[0].name);
  final student1 = students[1];
  print(student1.name);
  print(students[2].runtimeType);
}
// <> <-- This thing is called generics
// Generics in Dart allow classes and functions to work with different data types while maintaining
// type safety. They use placeholders like <T> to make reusable and flexible code. Generics are
// widely used in collections, API responses, repository patterns, and Flutter widgets.

class Student<T> {
  final T name;
  Student(this.name);
}


// we use 'is' keyword to check the 2 object are same or not , we use in if condition block
// and it return boolean value, if(student is Students){ }, or we can use if(student.runtimeType ==
// Students){ }.