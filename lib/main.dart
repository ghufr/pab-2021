import 'package:flutter/material.dart';
import 'package:test1/uts/pages/about.page.dart';
import 'package:test1/uts/pages/daftar_layanan.page.dart';
import 'package:test1/uts/pages/home.page.dart';
import 'package:test1/uts/pages/informasi_layanan.page.dart';
import 'package:test1/uts/pages/login.page.dart';

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
          elevation: 2,
          centerTitle: true,
          foregroundColor: Colors.black, //here you can give the text color
        ),
      ),
      debugShowCheckedModeBanner: false,
      initialRoute: '/login',
      routes: {
        '/login': (context) => const LoginPage(),
        '/home': (context) => const HomePage(),
        '/informasi_layanan': (context) => const InformasiLayananPage(),
        '/daftar_layanan': (context) => const DaftarLayananPage(),
        '/about': (context) => const AboutPage(),
      },
    );
  }
}
