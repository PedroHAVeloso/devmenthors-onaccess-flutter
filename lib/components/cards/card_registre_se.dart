import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:onaccess/assets/color/paleta_cores.dart';
import 'package:onaccess/components/buttons/btn_azul.dart';
import 'package:onaccess/components/buttons/btn_branco.dart';
import 'package:onaccess/pages/login/login.dart';

class CardRegistreSe extends StatefulWidget {
  const CardRegistreSe({super.key});

  @override
  State<CardRegistreSe> createState() => _CardRegistreSeState();
}

class _CardRegistreSeState extends State<CardRegistreSe> {
  @override
  Widget build(BuildContext context) {
    return Container(
      height: 182,
      width: 330,
      decoration: BoxDecoration(
        borderRadius: BorderRadius.all(Radius.circular(55)),
        color: PaletaCores.cinza04(),
      ),
      child: Column(
        children: [
          const Padding(padding: EdgeInsets.only(top: 14)),
          Text(
            "Não perca os eventos que\nestão acontecendo:",
            style: TextStyle(
              fontSize: 20,
              color: PaletaCores.cinza01(),
              fontFamily: 'Baloo',
              fontWeight: FontWeight.w600,
            ),
          ),
          const Padding(padding: EdgeInsets.only(top: 14)),
          Container(
            height: 90,
            width: 330,
            decoration: BoxDecoration(
              borderRadius: BorderRadius.all(Radius.circular(100)),
              color: PaletaCores.cinza03(),
            ),
            child: Padding(
              padding: const EdgeInsets.only(left: 20, right: 20),
              child: Row(
                mainAxisAlignment: MainAxisAlignment.center,
                children: const [
                  BtnBranco(
                      texto: "Entrar",
                      altura: 50,
                      largura: 115,
                      tamanhoFonte: 20,
                      tamanhoBorda: 2,
                      fontTipo: FontWeight.w700,
                      rota: Login()),
                  Padding(padding: EdgeInsets.only(left: 10)),
                  BtnAzul(
                      texto: "Inscrever-se",
                      altura: 50,
                      largura: 140,
                      tamanhoFonte: 20,
                      fontTipo: FontWeight.w900,
                      rota: null),
                ],
              ),
            ),
          ),
        ],
      ),
    );
  }
}
