// import 'package:flutter/material.dart';
// import 'package:test1/navigation_drawer.dart';

// class Register extends StatelessWidget {
//   const Register({Key? key}) : super(key: key);

//   @override
//   Widget build(BuildContext context) {
//     return Scaffold(
//       drawer: NavDrawer(),
//       appBar: AppBar(
//         title: const Text("Register"),
//       ),
//       body: Container(
//           padding: const EdgeInsets.all(16),
//           child: Column(
//             children: <Widget>[
//               const TextField(
//                 decoration: InputDecoration(
//                     prefixIcon: Icon(Icons.person),
//                     border: OutlineInputBorder(),
//                     labelText: "Nama"),
//               ),
//               const SizedBox(
//                 height: 16,
//               ),
//               const TextField(
//                 decoration: InputDecoration(
//                     prefixIcon: Icon(Icons.email),
//                     border: OutlineInputBorder(),
//                     labelText: "Email"),
//               ),
//               const SizedBox(
//                 height: 16,
//               ),
//               const TextField(
//                 obscureText: true,
//                 decoration: InputDecoration(
//                     prefixIcon: Icon(Icons.lock),
//                     border: OutlineInputBorder(),
//                     labelText: "Password"),
//               ),
//               const SizedBox(
//                 height: 24,
//               ),
//               MaterialButton(
//                 onPressed: () {
//                   Navigator.pop(context);
//                 },
//                 color: Colors.blue,
//                 textColor: Colors.white,
//                 child: const Text("Sign Up"),
//               )
//             ],
//           )),
//     );
//   }
// }
