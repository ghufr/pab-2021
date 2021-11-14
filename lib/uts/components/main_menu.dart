import 'package:flutter/material.dart';

class MainMenu extends StatelessWidget {
  const MainMenu({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Row(
      mainAxisSize: MainAxisSize.max,
      mainAxisAlignment: MainAxisAlignment.spaceAround,
      children: [
        Expanded(
          child: MaterialButton(
            onPressed: () {
              Navigator.pushNamed(context, '/informasi_layanan');
            },
            padding: const EdgeInsets.symmetric(vertical: 16),
            child: Column(
              children: [
                Image.asset(
                  'assets/icons/menu1.png',
                  height: 32,
                ),
                const SizedBox(
                  height: 8,
                ),
                const Text(
                  'Cek Informasi\nLayanan',
                  textAlign: TextAlign.center,
                  style: TextStyle(
                    fontSize: 13,
                  ),
                ),
              ],
            ),
          ),
        ),
        Expanded(
          child: MaterialButton(
            onPressed: () {
              Navigator.pushNamed(context, '/daftar_layanan');
            },
            padding: const EdgeInsets.symmetric(vertical: 16),
            child: Column(
              children: [
                Image.asset(
                  'assets/icons/menu2.png',
                  height: 32,
                ),
                const SizedBox(
                  height: 8,
                ),
                const Text(
                  'Daftar\nLayanan',
                  textAlign: TextAlign.center,
                  style: TextStyle(
                    fontSize: 13,
                  ),
                ),
              ],
            ),
          ),
        ),
        Expanded(
          child: MaterialButton(
            onPressed: () {
              Navigator.pushNamed(context, '/about');
            },
            padding: const EdgeInsets.symmetric(vertical: 16),
            child: Column(
              children: [
                Image.asset(
                  'assets/icons/menu3.png',
                  height: 32,
                ),
                const SizedBox(
                  height: 8,
                ),
                const Text(
                  'About\n',
                  textAlign: TextAlign.center,
                  style: TextStyle(
                    fontSize: 13,
                  ),
                ),
              ],
            ),
          ),
        ),
      ],
    );
  }
}
