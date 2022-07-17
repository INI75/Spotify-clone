import 'dart:async';

import 'package:flutter/material.dart';

import 'package:spotify/screens/aut_screen.dart';

class SplashScreen extends StatefulWidget {
  const SplashScreen({Key? key}) : super(key: key);

  @override
  State<SplashScreen> createState() => _SplashScreenState();
}

class _SplashScreenState extends State<SplashScreen> {
  @override
  void initState() {
    // TODO: implement initState
    Timer(
      const Duration(seconds: 4),
      () => Navigator.pushNamed(context, AutScreen.route),
    );

    super.initState();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Container(
          height: double.infinity,
          width: double.infinity,
          child: Center(
            child: Image.asset(
              'assets/Logo.png',
            ),
          )),
    );
  }
}
