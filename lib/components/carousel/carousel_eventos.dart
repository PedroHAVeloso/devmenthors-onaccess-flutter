import 'package:carousel_slider/carousel_slider.dart';
import 'package:flutter/material.dart';
import 'package:onaccess/assets/color/paleta_cores.dart';
import 'package:onaccess/components/cards/card_evento_initial.dart';
import 'package:onaccess/components/carousel/pagina_carousel.dart';

class CarouselEventos extends StatefulWidget {
  const CarouselEventos({super.key});
  @override
  State<CarouselEventos> createState() => _CarouselEventosState();
}

class _CarouselEventosState extends State<CarouselEventos> {
  CarouselController buttonCarouselController = CarouselController();
  int _currentIndex = 0;
  @override
  Widget build(BuildContext context) {
    return Container(
      alignment: Alignment.topCenter,
      child: Column(
        children: [
          Padding(padding: EdgeInsets.only(top: 40)),
          Row(
            mainAxisAlignment: MainAxisAlignment.center,
            children: indicators(3, _currentIndex),
          ),
          CarouselSlider(
            carouselController: buttonCarouselController,
            options: CarouselOptions(
              height: 382,
              // autoPlay: true,
              // autoPlayInterval: const Duration(seconds: 3),
              // autoPlayAnimationDuration: const Duration(milliseconds: 800),
              // autoPlayCurve: Curves.fastOutSlowIn,
              // pauseAutoPlayOnTouch: true,
              viewportFraction: 1,
              aspectRatio: 2.0,
              onPageChanged: (index, reason) {
                setState(() {
                  _currentIndex = index;
                });
              },
            ),
            items: cardList.map((card) {
              return Builder(builder: (BuildContext context) {
                return Container(
                  child: Card(
                    child: card,
                  ),
                );
              });
            }).toList(),
          ),
        ],
      ),
    );
  }
}

List cardList = [
  const PaginaCarousel(),
  const PaginaCarousel(),
  const PaginaCarousel(),
];
List<T> map<T>(List list, Function handler) {
  List<T> result = [];
  for (var i = 0; i < list.length; i++) {
    result.add(handler(i, list[i]));
  }
  return result;
}

List<Widget> indicators(imagesLength, currentIndex) {
  return List<Widget>.generate(imagesLength, (index) {
    return Container(
      margin: const EdgeInsets.all(1),
      width: 15,
      height: 15,
      decoration: BoxDecoration(
          color: currentIndex == index
              ? PaletaCores.cinza01()
              : PaletaCores.cinza03(),
          shape: BoxShape.circle),
    );
  });
}
