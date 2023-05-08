import 'package:carousel_slider/carousel_slider.dart';
import 'package:flutter/material.dart';
import 'package:onaccess/assets/color/paleta_cores.dart';
import 'package:onaccess/components/cards/card_registre_se.dart';
import 'package:onaccess/components/carousel/carousel_eventos.dart';

class Initial extends StatefulWidget {
  const Initial({super.key});

  @override
  State<Initial> createState() => _InitialState();
}

class _InitialState extends State<Initial> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: PaletaCores.branco(),
      body: Column(
        children: [
          CarouselEventos(),
          Padding(padding: EdgeInsets.only(top: 20)),
          CardRegistreSe(),
        ],
      ),
    );
  }
}
