import 'package:flutter/material.dart';
import 'package:test1/latihan_api/pages/home.page.dart';
import 'package:test1/latihan_api/pages/input.page.dart';
import 'package:test1/latihan_api/pages/list.page.dart';

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      theme: ThemeData(
        appBarTheme: const AppBarTheme(
          backgroundColor: Colors.white,
          elevation: 2,
          centerTitle: true,
          foregroundColor: Colors.black, //here you can give the text color
        ),
      ),
      debugShowCheckedModeBanner: false,
      initialRoute: '/',
      routes: {
        '/': (context) => HomePage(),
        '/input': (context) => InputPage(),
        '/list': (context) => ListPage(),
      },
    );
  }
}
