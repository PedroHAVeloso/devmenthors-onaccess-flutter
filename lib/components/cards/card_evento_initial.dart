import 'package:flutter/material.dart';
import 'package:onaccess/assets/color/paleta_cores.dart';

class CardEventoInitial extends StatefulWidget {
  const CardEventoInitial({super.key});

  @override
  State<CardEventoInitial> createState() => _CardEventoInitialState();
}

class _CardEventoInitialState extends State<CardEventoInitial> {
  @override
  Widget build(BuildContext context) {
    return Container(
      alignment: Alignment.center,
      child: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        crossAxisAlignment: CrossAxisAlignment.center,
        children: [
          Text(
            "4º EU CONTABILISTA",
            style: TextStyle(
                fontFamily: 'Baloo',
                fontWeight: FontWeight.w500,
                fontSize: 20,
                color: PaletaCores.cinza01()),
          ),
          Row(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              Container(
                height: 90,
                width: 170,
                decoration: BoxDecoration(
                  image: DecorationImage(
                    image: AssetImage("lib/assets/images/eventoEuCont.png"),
                    fit: BoxFit.cover,
                  ),
                  shape: BoxShape.rectangle,
                  borderRadius: BorderRadius.all(Radius.circular(20)),
                ),
              ),
              Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Container(
                    height: 27,
                    width: 100,
                    alignment: Alignment.centerLeft,
                    padding: EdgeInsets.only(left: 10),
                    child: Text(
                      "13/10/2022",
                      textAlign: TextAlign.start,
                      style: TextStyle(
                        color: PaletaCores.azul01(),
                        fontFamily: 'Baloo',
                        fontWeight: FontWeight.w500,
                        fontSize: 15,
                      ),
                    ),
                    decoration: BoxDecoration(
                      borderRadius: BorderRadius.only(
                        topRight: Radius.circular(20),
                        bottomRight: Radius.circular(20),
                      ),
                      color: PaletaCores.cinza03(),
                    ),
                  ),
                  Padding(padding: EdgeInsets.all(1.5)),
                  Container(
                    height: 27,
                    width: 60,
                    alignment: Alignment.centerLeft,
                    padding: EdgeInsets.only(left: 10),
                    child: Text(
                      "19h",
                      textAlign: TextAlign.start,
                      style: TextStyle(
                        color: PaletaCores.cinza01(),
                        fontFamily: 'Baloo',
                        fontWeight: FontWeight.w300,
                        fontSize: 15,
                      ),
                    ),
                    decoration: BoxDecoration(
                      borderRadius: BorderRadius.only(
                        topRight: Radius.circular(20),
                        bottomRight: Radius.circular(20),
                      ),
                      color: PaletaCores.cinza04(),
                    ),
                  ),
                ],
              ),
            ],
          ),
        ],
      ),
    );
  }
}
