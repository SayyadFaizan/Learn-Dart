// Named Records
void main() {
  final info = printInfo();
  print(info.name);
  print(info.age);
}
({String name, int age}) printInfo() {
  return (name: 'Faizan', age: 19);
}

/*
Named records is same as named args , but some difference like we don't use required keyword in that
and if we pass name record we need to access those records using there name not the .$1 or .$2 like that.
we don't use like that also var (name, if) = printInfo();.
*/