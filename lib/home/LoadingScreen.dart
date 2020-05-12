import 'package:flare_flutter/flare_actor.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'dart:io';
import 'FactsScreen.dart';


class SplashScreen extends StatefulWidget {
  @override
  _SplashScreenState createState() => _SplashScreenState();
}

class _SplashScreenState extends State<SplashScreen> {
  @override
  void initState() {
    super.initState();
    Future.delayed(const Duration(milliseconds: 3500), () {
      Navigator.pushReplacement(context, MaterialPageRoute(builder: (context) {
        return FactsScreen();
      }));
    });
  }


  @override
  Widget build(BuildContext context) {
    return  Scaffold(
      body: FlareActor("assets/Sahaaya.flr", alignment: Alignment.center,
          fit: BoxFit.contain,
          animation: "Splash"),
    );
  }
}