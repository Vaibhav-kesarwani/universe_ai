import 'package:flutter/material.dart';
import 'package:lottie/lottie.dart';
import 'package:universe_ai/helper/global.dart';
import 'package:universe_ai/model/onboard.dart';

class OnboardingScreen extends StatelessWidget {
  const OnboardingScreen({super.key});

  @override
  Widget build(BuildContext context) {
    final list = [
      // Onboarding screen 1
      Onboard(
        title: 'Ask me Anything',
        subtitle:
            'I can be your Best Friend & Your can ask me anything & I will help you!',
        animation: 'ai_ask_me',
      ),
      // Onboarding screen 2
      Onboard(
        title: 'Imagination to Reality',
        subtitle:
            'Just Imagine anything & I will make it Reality for you. Just Ask me!',
        animation: 'ai_play',
      ),
    ];

    return Scaffold(
      body: Column(
        children: [
          // Lottie animation
          Lottie.asset(
            'assets/onboarding_animation/ai_ask_me.json',
            height: mq.height * .6,
          ),
          // Title
          const Text(
            'Ask me Anything',
            style: TextStyle(
              fontSize: 18,
              fontWeight: FontWeight.w900,
              letterSpacing: .5,
            ),
          ),
          // Spacing
          SizedBox(height: mq.height * .01),
          // Subtitle
          SizedBox(
            width: mq.width * .7,
            child: const Text(
              'I can be your Best Friend & Your can ask me anything & I will help you!',
              textAlign: TextAlign.center,
              style: TextStyle(
                fontSize: 13.5,
                letterSpacing: .5,
                color: Colors.black54,
              ),
            ),
          ),
          // Spacer
          const Spacer(),
          // Page Indicator
          Wrap(
            spacing: 5,
            children: List.generate(
              2,
              (i) => Container(
                width: 10,
                height: 8,
                decoration: const BoxDecoration(
                  color: Colors.grey,
                  borderRadius: BorderRadius.all(Radius.circular(5)),
                ),
              ),
            ),
          ),
          // Spacer
          const Spacer(),
          // Button
          ElevatedButton(
            style: ElevatedButton.styleFrom(
              backgroundColor: Colors.lightBlue,
              padding: const EdgeInsets.symmetric(horizontal: 30, vertical: 15),
              shape: const StadiumBorder(),
              elevation: 0,
              minimumSize: Size(mq.width * .4, 50),
            ),
            onPressed: () {},
            child: const Text(
              "Next",
              style: TextStyle(
                color: Colors.white,
                fontSize: 16,
                fontWeight: FontWeight.w500,
              ),
            ),
          ),
          const Spacer(flex: 2),
        ],
      ),
    );
  }
}
