import 'package:flutter/material.dart';
import 'package:pn_lmj/splashscreen.dart';

void main(List<String> args) {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      title: 'PN Lumajang',
      theme: ThemeData(
        primarySwatch: Colors.blue,
      ),
      home: const SplashScreenView(),
    );
  }
}
