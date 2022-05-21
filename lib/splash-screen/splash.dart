import 'dart:async';
import 'package:fixo/language-screen/language.dart';
import 'package:flutter/material.dart';

class Splash extends StatefulWidget {
  const Splash({Key? key}) : super(key: key);

  @override
  State<Splash> createState() => _SplashState();
}

class _SplashState extends State<Splash> {
  @override
  void initState(){
    super.initState();
    Timer(const Duration(seconds: 3),
            ()=>
        Navigator.pushReplacement(context,
            MaterialPageRoute(builder: (context)=> const LanguageScreen())));
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: const Color(0xFF182061),
      body:Center(
        child: SizedBox(
          width: 153.83,
          height: 136.43,
           // decoration: BoxDecoration(gradient: LinearGradient()),
            child: Image.asset('assets/images/splash.png')),
      ),
    );
  }
}