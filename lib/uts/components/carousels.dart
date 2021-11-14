import 'package:flutter/material.dart';
import 'package:carousel_slider/carousel_slider.dart';

class Carousels extends StatelessWidget {
  const Carousels({Key? key}) : super(key: key);
  static const carousels = [
    'assets/images/slider_1.png',
    'assets/images/slider_2.jpg'
  ];

  @override
  Widget build(BuildContext context) {
    return CarouselSlider(
      options: CarouselOptions(height: 180.0, autoPlay: true),
      items: carousels.map((carousel) {
        return Builder(
          builder: (BuildContext context) {
            return Container(
              width: MediaQuery.of(context).size.width,
              child: ClipRRect(
                borderRadius: const BorderRadius.all(
                  Radius.circular(8),
                ),
                child: Image.asset(
                  carousel,
                  fit: BoxFit.cover,
                ),
              ),
              decoration: const BoxDecoration(
                borderRadius: BorderRadius.all(Radius.circular(8)),
              ),
              margin: const EdgeInsets.symmetric(horizontal: 8),
            );
          },
        );
      }).toList(),
    );
  }
}
