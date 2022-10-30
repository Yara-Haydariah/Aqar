import 'package:flutter/material.dart';

import 'package:testered/splash.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return const MaterialApp(
      // title: 'Onboarding Screen',
      debugShowCheckedModeBanner: false,
      home: SplashScreen(),
    );
  }
}
