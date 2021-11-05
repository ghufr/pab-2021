
// class LoginPage extends StatelessWidget {
//   final myUsernameController = TextEditingController();
//   final myPasswordController = TextEditingController();
//   late String nUsername, nPassword;

//   final _formKey = GlobalKey<FormState>();

//   @override
//   Widget build(BuildContext context) {
//     return Scaffold(
//         appBar: AppBar(
//           title: Text('Page Login'),
//         ),
//         body: Container(
//             padding: EdgeInsets.all(16),
//             child: Form(
//                 key: _formKey,
//                 child: Column(
//                   crossAxisAlignment: CrossAxisAlignment.start,
//                   children: <Widget>[
//                     TextFormField(
//                       //cek data field
//                       validator: (value) {
//                         if (value!.isEmpty) {
//                           return 'Please Input Username';
//                         } else if (value != 'andy') {
//                           return 'Username salah';
//                         }
//                         return null;
//                       },
//                       controller: myUsernameController,
//                       decoration: InputDecoration(
//                         hintText: 'Username',
//                       ),
//                     ),
//                     SizedBox(
//                       height: 16,
//                     ),
//                     TextFormField(
//                       validator: (value) {
//                         if (value!.isEmpty) {
//                           return 'Please Input Password';
//                         } else if (nPassword.length < 5) {
//                           return 'Password salah';
//                         }
//                         return null;
//                       },
//                       maxLength: 16,
//                       maxLengthEnforcement: MaxLengthEnforcement.enforced,
//                       controller: myPasswordController,
//                       obscureText: true,
//                       decoration: InputDecoration(hintText: 'Password'),
//                     ),
//                     const SizedBox(
//                       height: 25,
//                     ),
//                     Row(
//                         mainAxisAlignment: MainAxisAlignment.spaceBetween,
//                         children: <Widget>[
//                           MaterialButton(
//                               onPressed: () {
//                                 Navigator.push(
//                                     context,
//                                     MaterialPageRoute(
//                                         builder: (ctx) => ResetPasswordPage()));
//                               },
//                               child: Text('Reset Password')),
//                           const SizedBox(
//                             width: 16,
//                           ),
//                           MaterialButton(
//                             color: Colors.blue,
//                             textColor: Colors.white,
//                             onPressed: () {
//                               nUsername = myUsernameController.text;
//                               nPassword = myPasswordController.text;

//                               if (_formKey.currentState!.validate()) {
//                                 if (nUsername != 'andy') {
//                                   print("username tidak dikenal");
//                                 } else if (nPassword.length < 5) {
//                                   print("password tidak sesuai");
//                                 } else {
//                                   Navigator.push(
//                                       context,
//                                       MaterialPageRoute(
//                                           builder: (context) => HomeMenu(
//                                                 nama: nUsername,
//                                                 password: nPassword,
//                                               )));
//                                 }
//                               }
//                             },
//                             child: Text('Submit'),
//                           ),
//                         ]),
//                     const SizedBox(
//                       height: 24,
//                     ),
//                     Row(
//                       children: <Widget>[
//                         Text("Belum punya akun?"),
//                         MaterialButton(
//                             onPressed: () {
//                               Navigator.push(
//                                   context,
//                                   MaterialPageRoute(
//                                       builder: (ctx) => Register()));
//                             },
//                             child: Text("Register"))
//                       ],
//                       mainAxisAlignment: MainAxisAlignment.center,
//                     )
//                   ],
//                 ))));
//   }
// }
