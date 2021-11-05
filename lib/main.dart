import 'package:flutter/material.dart';
import 'package:test1/tugas6/home.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      theme: ThemeData(
        appBarTheme: const AppBarTheme(
            backgroundColor: Colors.white,
            foregroundColor: Colors.black //here you can give the text color
            ),
      ),
      debugShowCheckedModeBanner: false,
      home: const HomePageTugas6(),
    );
  }
}
