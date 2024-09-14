import 'package:flutter/material.dart';
import 'package:universe_ai/helper/global.dart';
import 'package:universe_ai/helper/pref.dart';
import 'package:universe_ai/screens/home_screen/home_screen.dart';
import 'package:universe_ai/screens/onboarding_screen/onboarding_screen.dart';
import 'package:universe_ai/widget/custom_loader.dart';

class SplashScreen extends StatefulWidget {
  const SplashScreen({super.key});

  @override
  State<SplashScreen> createState() => _SplashScreenState();
}

class _SplashScreenState extends State<SplashScreen> {
  // Wait for the some time and than move ahead to home screen
  @override
  void initState() {
    super.initState();
    Future.delayed(
      const Duration(seconds: 5),
      () {
        Navigator.of(context).pushReplacement(
          MaterialPageRoute(
            builder: (_) => Pref.showOnboarding ? const OnboardingScreen() : const HomeScreen(),
          ),
        );
      },
    );
  }

  @override
  Widget build(BuildContext context) {
    // Intializing the device size
    mq = MediaQuery.sizeOf(context);

    return Scaffold(
      body: SizedBox(
        width: double.maxFinite,
        child: Column(
          children: [
            const Spacer(flex: 2),
            Card(
              elevation: 0,
              color: Colors.transparent,
              shape: const RoundedRectangleBorder(
                borderRadius: BorderRadius.all(
                  Radius.circular(20),
                ),
              ),
              child: Image.asset(
                'assets/images/logo.png',
                width: mq.width * 1,
              ),
            ),
            const Spacer(),
            const CustomLoader(),
            const Spacer(),
          ],
        ),
      ),
    );
  }
}
