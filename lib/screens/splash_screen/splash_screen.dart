import 'package:flutter/material.dart';
import 'package:universe_ai/helper/global.dart';

class SplashScreen extends StatefulWidget {
  const SplashScreen({super.key});

  @override
  State<SplashScreen> createState() => _SplashScreenState();
}

class _SplashScreenState extends State<SplashScreen> {
  @override
  Widget build(BuildContext context) {
    // Intializing the device size
    mq = MediaQuery.sizeOf(context);

    return Scaffold(
      body: Center(
        child: Card(
          color: Colors.blue,
          shape: const RoundedRectangleBorder(
            borderRadius: BorderRadius.all(
              Radius.circular(20),
            ),
          ),
          child: Image.asset(
            'assets/images/logo.png',
            width: mq.width * .55,
          ),
        ),
      ),
    );
  }
}
