void main() {
  String motivation = 'this is a good world';
  // This is a good world

  motivation = motivation.capitaliseFirstLetter();

  print(motivation);

  String name = 'faizan';

  name = name.capitaliseFirstLetter();
  print(name);
}
extension CapitaliseFirstLetter on String {
  String capitaliseFirstLetter() {
    return this[0].toUpperCase() + substring(1);
  }
}