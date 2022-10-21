
import 'dart:async';

import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:movies_flutter_example/navigation/screens.dart';

class SplashScreen extends StatefulWidget {
  const SplashScreen({Key? key}) : super(key: key);

  @override
  State<SplashScreen> createState() => _SplashScreenState();
}

class _SplashScreenState extends State<SplashScreen> {

  @override
  void initState() {
    Timer.periodic(const Duration(seconds: 2),
        (Timer t) =>  Navigator.pushNamed(context, mainScreenRoute)
    );
    super.initState();
  }

  @override
  Widget build(BuildContext context) {

    Timer(
        const Duration(seconds: 3), () =>
        Navigator.pushNamedAndRemoveUntil(context, mainScreenRoute,(route) => false)
    );

    return Scaffold(
      body: Center(
        child: Image.asset('assets/images/popcorn.png'),
      ),
    );
  }
}
