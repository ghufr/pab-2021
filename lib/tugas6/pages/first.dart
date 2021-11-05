import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:carousel_slider/carousel_slider.dart';

class FirstPage extends StatelessWidget {
  const FirstPage({Key? key}) : super(key: key);

  static const carousels = [1, 2, 3, 4, 5];

  @override
  Widget build(BuildContext context) {
    return SingleChildScrollView(
      child: Column(
        children: <Widget>[
          const SizedBox(
            height: 16,
          ),
          CarouselSlider(
            options: CarouselOptions(height: 180.0, autoPlay: true),
            items: carousels.map((i) {
              return Builder(
                builder: (BuildContext context) {
                  return Container(
                    width: MediaQuery.of(context).size.width,
                    child: ClipRRect(
                      borderRadius: const BorderRadius.all(
                        Radius.circular(8),
                      ),
                      child: Image.network(
                        'https://picsum.photos/seed/${i}/400/300?grayscale',
                        fit: BoxFit.cover,
                      ),
                    ),
                    decoration: const BoxDecoration(
                      borderRadius: BorderRadius.all(Radius.circular(8)),
                    ),
                    margin: const EdgeInsets.symmetric(horizontal: 8),
                  );
                  //   return Container(
                  //     width: MediaQuery.of(context).size.width,
                  //     margin: EdgeInsets.symmetric(horizontal: 6.0),
                  //     decoration: BoxDecoration(
                  //       color: Colors.blue,
                  //       borderRadius: BorderRadius.all(Radius.circular(8)),
                  //     ),
                  //   );
                },
              );
            }).toList(),
          ),
          const SizedBox(
            height: 16,
          ),
          Row(
            mainAxisSize: MainAxisSize.max,
            mainAxisAlignment: MainAxisAlignment.spaceAround,
            children: [
              Expanded(
                child: MaterialButton(
                  onPressed: () {},
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
                        'Informasi\nBerkala',
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
                  onPressed: () {},
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
                        'Informasi\nSerta Merta',
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
                  onPressed: () {},
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
                        'Informasi\nSetiap Saat',
                        textAlign: TextAlign.center,
                        style: TextStyle(
                          fontSize: 13,
                        ),
                      ),
                    ],
                  ),
                ),
              ),
              // Card(
              //   child: Container(
              //     padding: EdgeInsets.all(8),
              //     child: Column(
              //       children: [
              //         Image.asset(
              //           'assets/icons/menu1.png',
              //           height: 32,
              //         ),
              //         SizedBox(
              //           height: 8,
              //         ),
              //         Text(
              //           'Card One',
              //           style: TextStyle(
              //             fontSize: 13,
              //           ),
              //         ),
              //       ],
              //     ),
              //   ),
              // ),
            ],
          ),
          const SizedBox(height: 16),
          Container(
            padding: const EdgeInsets.symmetric(horizontal: 24),
            child: Row(
              mainAxisSize: MainAxisSize.max,
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: <Widget>[
                Expanded(
                  child: MaterialButton(
                    onPressed: () {},
                    padding: const EdgeInsets.all(16),
                    color: Colors.blue[800],
                    textColor: Colors.white,
                    child: Row(
                      children: [
                        Image.asset('assets/icons/docs1.png', height: 32),
                        const SizedBox(width: 8),
                        const Text(
                          'Permohonan\nInformasi',
                        ),
                      ],
                    ),
                  ),
                ),
                const SizedBox(
                  width: 16,
                ),
                Expanded(
                  child: MaterialButton(
                    onPressed: () {},
                    padding: const EdgeInsets.all(16),
                    color: Colors.blue[800],
                    textColor: Colors.white,
                    child: Row(
                      children: [
                        Image.asset('assets/icons/docs3.png', height: 32),
                        const SizedBox(width: 8),
                        const Text(
                          'Pengajuan\nKeberatan',
                        ),
                      ],
                    ),
                  ),
                ),
              ],
            ),
          ),
        ],
      ),
    );
  }
}
