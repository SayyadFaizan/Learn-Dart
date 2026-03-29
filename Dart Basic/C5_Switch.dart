bool isAdult = false;
void main() {

  //if
  int age1 = 21;
  if(!isAdult) {
    print('Adult');
  }

  String someValue = 'Hi!';
  if(someValue != 'hi'){ //we can compare string using == also
    print('WOW');
  } else if(someValue.isNotEmpty){ //string function
    print('not Empty');
  } else{
    print('Nah');
  }

  //Ternary
  String value = someValue.startsWith('H') && someValue.endsWith('!') ? 'WOW' : 'nah'; //doing same thing but using ternary operator
  print(value);


  // Switch
  // In dart no need to add break if it's not empty
  // You can add condition in dart using when keyword ex: case 'value' when 'condition'
  int age = 18;
  switch(age) {
    case 18 when age >= 18:
      print('You are 18 years old!');
    case 15:
      print('You are 15 years old!');
    case 14:
      print('You are 14 year old');
    default:
      print('I don\'t know your age.');
  }


  //switch case used in ui programing
  int page = 1;
  int lastPage = 1;

  final text = switch(lastPage) {
    0 => 'Click Here',
    1 when page == lastPage => 'Click ME',
    _ => 'None'
  };
  print(text);
}
