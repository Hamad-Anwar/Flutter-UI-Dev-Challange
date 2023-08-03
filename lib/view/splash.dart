import 'dart:async';

import 'package:flutter/material.dart';

import 'home_page.dart';

class Splash extends StatefulWidget {
  const Splash({super.key});

  @override
  State<Splash> createState() => _SplashState();
}

class _SplashState extends State<Splash> {


  @override
  void initState() {
    // TODO: implement initState
    super.initState();
    Timer(Duration(milliseconds: 1000), () {
      Navigator.pushReplacement(
          context,PageRouteBuilder(
        transitionDuration: Duration(milliseconds: 800),
        pageBuilder: (context, animation, secondaryAnimation) {
        return HomePage();
      },));
    });
  }

  @override
  Widget build(BuildContext context) {
    return Hero(
      tag: 'TAG0',
      child: Scaffold(
        backgroundColor: Colors.black,
        body: Center(
          child: RichText(text: const TextSpan(
            children: [
              TextSpan(
                text: "Cars",style: TextStyle(color: Colors.white,fontWeight: FontWeight.bold,fontSize: 40)
              ),
              TextSpan(
                  text: ".",style: TextStyle(color: Colors.yellow,fontWeight: FontWeight.bold,fontSize: 60)
              )
            ]
          )),
        ),
      ),
    );
  }
}
