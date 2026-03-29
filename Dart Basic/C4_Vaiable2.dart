void main() {
  /// Variable
  /// var/final/const variableName = value;
  
  var someValue1 = '10';
  final someValue2 = '10';
  const someValue3 = '10';
  print(someValue1);
  print(someValue2);
  print(someValue3);


  //Difference between final and const
  final date = DateTime.now();
  //const date1 = DateTime.now(); it throw error because it is check  compline time constant var and the date time change every time so its cant the same or constant.

}