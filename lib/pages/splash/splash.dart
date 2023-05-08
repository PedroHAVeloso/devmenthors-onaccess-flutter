import 'dart:async';
import 'package:flutter/material.dart';
import 'package:onaccess/pages/initial/initial.dart';

class Splash extends StatefulWidget {
  const Splash({super.key});
  @override
  State<Splash> createState() => _SplashState();
}

class _SplashState extends State<Splash> {
  @override
  void initState() {
    super.initState();
  }

  @override
  Widget build(BuildContext context) {
    Timer(
        const Duration(milliseconds: 1),
        () => Navigator.of(context).pushReplacement(MaterialPageRoute(
            builder: (BuildContext context) => const Initial())));

    return const FractionallySizedBox(
      heightFactor: 0.5,
      widthFactor: 0.7,
      child: Center(
          child: Image(
        image: AssetImage("lib/assets/images/OnAccess.png"),
      )),
    );
  }
}
