// Set
void main() {
  final newStudent = Student('Mubin');
  
  Set<Student> students = {
    Student('Arqam'),
    Student('Faizan'),
    Student('Saad'),
    newStudent, 
    newStudent, 
    newStudent,
    newStudent
  };
  print(students);
}

class Student {
  final String name;
  Student(this.name);
  
  @override
  String toString() => 'Name: $name';
}