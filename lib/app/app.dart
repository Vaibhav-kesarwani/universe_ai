import 'package:flutter/material.dart';
import 'package:universe_ai/screens/splash_screen/splash_screen.dart';

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return const MaterialApp(
      debugShowCheckedModeBanner: false,
      title: 'Universe AI',
      home: SplashScreen(),
    );
  }
}
