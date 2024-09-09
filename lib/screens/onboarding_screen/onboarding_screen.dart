import 'package:flutter/material.dart';
import 'package:lottie/lottie.dart';
import 'package:universe_ai/helper/global.dart';
import 'package:universe_ai/model/onboard.dart';
import 'package:universe_ai/screens/home_screen/home_screen.dart';

class OnboardingScreen extends StatelessWidget {
  const OnboardingScreen({super.key});

  @override
  Widget build(BuildContext context) {
    final c = PageController();

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
      body: PageView.builder(
        controller: c,
        itemCount: list.length,
        itemBuilder: (ctx, i) {
          final isLast = i == list.length - 1;
          return Column(
            children: [
              // Lottie animation
              Lottie.asset(
                'assets/onboarding_animation/${list[i].animation}.json',
                height: mq.height * .6,
                width: isLast ? mq.width * .7 : null,
              ),
              // Title
              Text(
                list[i].title,
                style: const TextStyle(
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
                child: Text(
                  list[i].subtitle,
                  textAlign: TextAlign.center,
                  style: const TextStyle(
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
                  list.length,
                  (ind) => Container(
                    width: ind == i ? 20 : 10,
                    height: 8,
                    decoration: BoxDecoration(
                      color: ind == i ? Colors.blue : Colors.grey,
                      borderRadius: const BorderRadius.all(Radius.circular(5)),
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
                  padding:
                      const EdgeInsets.symmetric(horizontal: 30, vertical: 15),
                  shape: const StadiumBorder(),
                  elevation: 0,
                  minimumSize: Size(mq.width * .4, 50),
                ),
                onPressed: () {
                  if (isLast) {
                    Navigator.of(context).pushReplacement(
                      MaterialPageRoute(
                        builder: (_) => const HomeScreen(),
                      ),
                    );
                  } else {
                    c.nextPage(
                      duration: const Duration(milliseconds: 600),
                      curve: Curves.ease,
                    );
                  }
                },
                child: Text(
                  isLast ? "Finish" : "Next",
                  style: const TextStyle(
                    color: Colors.white,
                    fontSize: 16,
                    fontWeight: FontWeight.w500,
                  ),
                ),
              ),
              const Spacer(flex: 2),
            ],
          );
        },
      ),
    );
  }
}
