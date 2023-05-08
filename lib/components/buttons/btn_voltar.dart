import 'package:flutter/material.dart';
import 'package:onaccess/assets/color/paleta_cores.dart';
import 'package:onaccess/pages/login/login.dart';

class BtnVoltar extends StatelessWidget {
  const BtnVoltar({super.key});

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: () => Navigator.pop(context),
      child: Container(
        height: 46,
        width: 46,
        decoration: BoxDecoration(
            borderRadius: const BorderRadius.all(Radius.circular(100)),
            color: PaletaCores.cinza03()),
        child: Center(
          child: Icon(
            Icons.keyboard_arrow_left,
            size: 42,
            color: PaletaCores.cinza01(),
          ),
        ),
      ),
    );
  }
}
