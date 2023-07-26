import 'package:animated_splash_screen/animated_splash_screen.dart';
import 'package:flutter/material.dart';
import 'package:pn_lmj/homescreen.dart';

class SplashScreenView extends StatelessWidget {
  const SplashScreenView({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return AnimatedSplashScreen(
      splash: Image.asset('assets/images/launch_image.png'),
      splashIconSize: double.infinity,
      backgroundColor: Colors.white,
      duration: 3000,
      nextScreen: const MyHomePage(),
    );
  }
}
