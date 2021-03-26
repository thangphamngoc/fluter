import 'package:flutter/material.dart';
import 'package:diseno/View/splash/splash_screen.dart';
import 'package:diseno/animation/heroanimation.dart';
import 'package:diseno/extension/theme/color.dart';


void main() {
  runApp(Diseno());
}

class Diseno extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      theme: lightTheme,
      debugShowCheckedModeBanner: false,
      home: SplashScreen(),
    );
  }
}
