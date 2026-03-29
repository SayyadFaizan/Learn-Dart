// Enum
void main() {
  Employee e1 = Employee('Faizan', EmployeeType.swe);
  e1.func();
  // Employee e2 = Employee('Arqam', 'hahaha'); you cant pass anything other than EmployeeType.
  Employee e2 = Employee('Arqam', EmployeeType.finance);
  e2.func();
}
enum EmployeeType {  //Enums is used to handle the limited user input from user that string can't handled
  finance, 
  swe,
  marketing
}
class Employee {
  final String name;
  final EmployeeType type;
  Employee(this.name, this.type);
  void func() {
    switch(type) {
      case EmployeeType.swe :
        print('Software Engineering');
      case EmployeeType.marketing :
        print('Digital Marketing');
      case EmployeeType.finance :   //you need to handle all the cases of enum in switch case.
        print('Finance Advisor');
    }
    
  }
}