import 'dart:async';
//Streams
//stream is like a future generator, we use streams where we don't know how many time the user wait for action.
void main() async{
  print(await countDown().first); //we can you .first and await to get 1 value.

  countDown().listen((val) {
    print(val);
  },
  onDone: (){
    print('Compelted!!');
  });

  print('Hii!!');


  boo();

  // foo().listen((val){
  //   print(val);
  // });

}
Stream<int> countDown() async*{
  for(int i=5; i>0; i--){
    yield i;
    await Future.delayed(Duration(seconds: 1));
  }
}

void boo() {
  final controller = StreamController<int>();

  controller.sink.add(1);
  controller.sink.add(2);
  controller.sink.add(3);
  controller.sink.add(4);
  controller.sink.add(5);
  controller.sink.close();

  controller.stream.listen((val) {
    print(val);
  }, onError: (err) {
    print(err);
  });

  controller.close();

}

Stream<int> foo() {
  final controller = StreamController<int>();
  return Stream.periodic(Duration(seconds: 1), (val){
    return val;
  });
}
// we need to put async* to use stream, and the return type must be Stream<T>.
// in this we need to use the yield(means : to provide) instead of return.