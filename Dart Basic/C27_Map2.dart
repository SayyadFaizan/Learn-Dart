// Map 2
void main() {
  Map<String, int> marksOfFaizan = {
    'OOP' : 20,
    'DSU' : 18,
    'CGR' : 16
  };
//   List of Map
  List<Map<String, int>> marks = [ //we use any datatype in generics<> even if it user defined datatype or list or map
    {
      'OOP' : 20,
      'DSU' : 18,
      'CGR' : 16
    },
    {
      'OOP' : 15,
      'DSU' : 10,
      'CGR' : 18
    },
    {
      'OOP' : 18,
      'DSU' : 16,
      'CGR' : 19
    },
    marksOfFaizan
  ];

  marks.map((e){
    print(e);
  }).toList(); //we use toList() method to convert iterable into list,  because the map method returns a lazy iterable which we can't print.

  marks.map((e){
    e.forEach((key, value){
      print('$key : $value');
    });
    print('');
  }).toList();

  marks.map((e) {
    e.forEach((key, val) => print('$key : $val'));
  }).toList();
}