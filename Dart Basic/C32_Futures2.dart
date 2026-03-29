// // Futures (Promises)
// import 'package:http/http.dart' as http; // we use this package because we need to call a api to get data from other service.
// import 'dart:convert'; //we ues this package to convert string into it original format (dynamic), if we use dart:something it means we are using the predefine library.
// void main() async{
//   var url = Uri.https('jsonplaceholder.typicode.com', 'users/1');
// //   try {
// //     final res = await http.get(url);
// //     print(jsonDecode(res.body));
// //   } catch (e) {
// //     print('Something wrong');
// //   }

//   http.get(url).then((val) { // we are using the async function to exception handling , if anything happen to our side or other side like system failer or internet connection lost.
//     print(jsonDecode(val.body)['name']);
//   }).catchError((err) {
//     print(err);
//   });
//
// }




// Note: you can get Free fake api form https://jsonplaceholder.typicode.com/ to test the asynchronous function, you can get the external library or package inside your code in this website pub.dev .