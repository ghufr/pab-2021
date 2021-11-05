// // import 'package:test1/profile.dart';
// import 'package:flutter/material.dart';
// // import 'package:test1/register.dart';

// class NavDrawer extends StatelessWidget {
//   @override
//   Widget build(BuildContext context) {
//     return Drawer(
//       child: ListView(
//         padding: EdgeInsets.zero,
//         children: <Widget>[
//           DrawerHeader(
//             child: Text(
//               'Side Menu',
//               style: TextStyle(color: Colors.black, fontSize: 25),
//             ),
//             decoration: BoxDecoration(
//               color: Colors.green,
//               image: DecorationImage(
//                   fit: BoxFit.fill,
//                   image: NetworkImage('assets/images/cover.jpg')),
//             ),
//           ),
//           ListTile(
//             leading: Icon(Icons.input),
//             title: Text('Welcome'),
//             onTap: () => {},
//           ),
//           ListTile(
//             leading: Icon(Icons.verified_user),
//             title: Text('Profile'),
//             onTap: () => {
//               // Navigator.push(
//               //     context, MaterialPageRoute(builder: (context) => Profile()))
//             },
//           ),
//           ListTile(
//             leading: Icon(Icons.settings),
//             title: Text("Register"),
//             onTap: () => {
//               // Navigator.push(
//               //     context, MaterialPageRoute(builder: (context) => Register()))
//             },
//           ),
//           ListTile(
//             leading: Icon(Icons.border_color),
//             title: Text("Feedback"),
//             onTap: () => {Navigator.of(context).pop()},
//           ),
//           ListTile(
//             leading: Icon(Icons.exit_to_app),
//             title: Text('Logout'),
//             onTap: () => {Navigator.of(context).pop()},
//           ),
//         ],
//       ),
//     );
//   }
// }
