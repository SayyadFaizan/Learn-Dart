// Futures (Promises)
void main() async{ // we use async to use the await keyword in function.
  print('Hey');

  giveAResultAfter2Second().then((val) {
    print(val);
  });//if we are using then() we don't need to use async and await, the val parameter is holding the return value from function in this case it has String 'Hey!!!', the then function doesn't stop the other instruction its run in background until it delaye time is finished.

  print('Haha');

  print(await giveAResultAfter5Second()); //we need to use await to wait till event happen and get the data, it stop other instruction to execute until his delaye time is finished.

  print('Hey!');
  print('Hello');
}


Future<String> giveAResultAfter5Second(){
  return Future.delayed(Duration(seconds: 5), () async{
    return 'hehe!!!!!!';
  });
} //In this function we are returning the Future class instance with String generic Future<String>, we are calling the Future class method  delayed to create some delaye in execution, the delaye function has 2 arguments 1 is Duration class inside this we put named argument with value like Duration(seconds: 5) and 2 is computation function to perform some task like we are return same String value in this function async is optional.


Future<String> giveAResultAfter2Second(){
  return Future.delayed(Duration (seconds: 2), (){
    return 'Hey!!!!!!';
  });
}