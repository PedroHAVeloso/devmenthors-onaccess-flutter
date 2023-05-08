import 'package:flutter/material.dart';
import 'package:flutter/src/widgets/framework.dart';
import 'package:flutter/src/widgets/placeholder.dart';
import 'package:onaccess/components/cards/card_evento_initial.dart';

class PaginaCarousel extends StatefulWidget {
  const PaginaCarousel({super.key});

  @override
  State<PaginaCarousel> createState() => _PaginaCarouselState();
}

class _PaginaCarouselState extends State<PaginaCarousel> {
  @override
  Widget build(BuildContext context) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.center,
      mainAxisAlignment: MainAxisAlignment.center,
      children: [
        CardEventoInitial(),
        CardEventoInitial(),
        CardEventoInitial(),
      ],
    );
  }
}
