import 'package:flutter/material.dart';
import 'package:lottie/lottie.dart';
import 'package:universe_ai/helper/global.dart';

class HomeCard extends StatelessWidget {
  const HomeCard({super.key});

  @override
  Widget build(BuildContext context) {
    return Card(
      color: Colors.blue.withOpacity(0.2),
      elevation: 0,
      shape: RoundedRectangleBorder(
        borderRadius: BorderRadius.circular(20),
      ),
      child: Row(
        children: [
          Lottie.asset(
            'assets/onboarding_animation/ai_hand_play.json',
            width: mq.width * 0.35,
          ),
          const Spacer(),
          const Text(
            "AI ChatBot",
            style: TextStyle(
              color: Colors.black,
              fontSize: 20,
              fontWeight: FontWeight.bold,
              letterSpacing: 0.5,
            ),
          ),
          const Spacer(flex: 2),
        ],
      ),
    );
  }
}
