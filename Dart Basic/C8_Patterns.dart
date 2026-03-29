// Patterns
void main() {
  var (no, name, isAdult, greeting) = printInfo();
  print(no);
  print(name);
  print(isAdult);
  print(greeting);

  final list = [1, 2, 3, 4, 5, 6, 7, 8, 9];
  final [a, _, c, ...d] = list;
  print('$a $c $d');

  final jsoned = {
    "userId": 1,
    "id": 1,
    "title": "sunt aut facere repellat provident occ",
    "body": "quia et suscipit\nsuscipit recusandae c",
  };
  final {'userId': userId, 'title': title, 'body': b} = jsoned;
  print(userId);
  print(title);
  print(b);

  if (jsoned case {
    'userId': int userId,
    'title': String title,
    'body': String b,
  }) {
    print(userId);
    print(title);
    print(b);
  } else {
    print('Incorrect JSON');
  }

  switch (jsoned) {
    //specialized switch case
    case {'userId': int userId, 'title': String title, 'body': String b}:
      print(userId);
      print(title);
      print(b);
    default:
      print('Ircorrect JSON');
  }

  final human = Human('Nice Name', 2); //pattern to hold class data.
  final Human(name: nameee, :age) = human;
  print(nameee);
  print(age);

  List<String> listItems = ['HI', 'MAN'];
  int index = 1;
  switch (listItems) {
    case ['Hi' || 'HI', 'MAN' || 'Man'] when index == 1:
      print('dude!');
    default:
      print('bruh');
  }
}

class Human {
  final String name;
  final int age;
  Human(this.name, this.age);
}

(int, String, bool, String) printInfo() {
  return (1, 'Faizan', false, 'hi');
}
