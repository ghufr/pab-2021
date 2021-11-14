import 'package:flutter/material.dart';
import 'package:test1/uts/components/carousels.dart';
import 'package:test1/uts/components/main_menu.dart';

class HomePage extends StatelessWidget {
  const HomePage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white,
      appBar: AppBar(
        title: Image.asset(
          'assets/images/logo_square.png',
          height: 32,
        ),
        centerTitle: true,
        elevation: 0,
      ),
      body: SingleChildScrollView(
        child: Column(
          children: const <Widget>[
            Padding(
              padding: EdgeInsets.symmetric(vertical: 16),
              child: Carousels(),
            ),
            MainMenu(),
          ],
        ),
      ),
    );
  }
}
