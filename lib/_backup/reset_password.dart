// // import 'package:flutter/material.dart';
// // import 'package:test1/halaman_satu.dart';

// // void main() {
// //   runApp(MyApp());
// // }

// // class MyApp extends StatelessWidget {
// //   @override
// //   Widget build(BuildContext context) {
// //     return MaterialApp(
// //       home: HalamanSatu(),
// //     );
// //   }
// // }

// import 'package:flutter/material.dart';
// import 'package:flutter/services.dart';
// import 'package:test1/home_menu.dart';

// class ResetPasswordPage extends StatelessWidget {
//   final myUsernameController = TextEditingController();
//   final myPasswordController = TextEditingController();
//   late String nUsername, nPassword;

//   final _formKey = GlobalKey<FormState>();

//   @override
//   Widget build(BuildContext context) {
//     return Scaffold(
//         appBar: AppBar(
//           title: Text('Reset Password'),
//         ),
//         body: Form(
//             key: _formKey,
//             child: Column(
//               crossAxisAlignment: CrossAxisAlignment.start,
//               children: <Widget>[
//                 TextFormField(
//                   //cek data field
//                   validator: (value) {
//                     if (value!.isEmpty) {
//                       return 'Please Input Username';
//                     } else if (value != 'andy') {
//                       return 'Username salah';
//                     }
//                     return null;
//                   },
//                   controller: myUsernameController,
//                   decoration: InputDecoration(
//                     hintText: 'Username',
//                   ),
//                 ),
//                 SizedBox(
//                   height: 25.0,
//                 ),
//                 Row(children: <Widget>[
//                   MaterialButton(
//                     minWidth: 85.0,
//                     height: 50.0,
//                     color: Colors.blue,
//                     onPressed: () {
//                       nUsername = myUsernameController.text;
//                       nPassword = myPasswordController.text;

//                       if (_formKey.currentState!.validate()) {
//                         if (nUsername == 'andy') {
//                           Navigator.pop(context);
//                         }
//                       }
//                     },
//                     child: Text('Submit'),
//                   ),
//                   MaterialButton(
//                       onPressed: () {
//                         Navigator.push(
//                             context,
//                             MaterialPageRoute(
//                                 builder: (ctx) => ResetPasswordPage()));
//                       },
//                       child: Text('Reset Password'))
//                 ]),
//               ],
//             )));
//   }
// }
