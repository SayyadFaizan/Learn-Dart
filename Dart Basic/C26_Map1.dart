// Map 1
void main() {
  Map<String, int> marks = {
    'Arqam' : 20,
    'Faizan' : 18,
    'Saad' : 12,
  };
  print(marks['Arqam']);
  print(marks['Arqam']!.isEven); // ! it tells it can't be null, it has some value, if it null it throw error
  print(marks['Arqam']?.isEven); // ? it tells if it null , print null otherwise print actual value
  marks['Aman'] = 11;
  print(marks);
  final anotherMap = {
    'Saad' : 19,
    'Mubin' : 18,
  };
  marks.addAll(anotherMap);
  marks.remove('Arqam');
  print(marks);
  
  for (int i = 0; i < marks.length; i++) {
    print('${marks.keys.toList()[i]} : ${marks.values.toList()[i]}');
  }
  print('\nUsing forEach\n\n');
  marks.forEach((key, val) {
    print('$key : $val');
  });
}

class Student {
  final String name;
  Student(this.name);
  
  @override
  String toString() => 'Name: $name';
}
