import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:universe_ai/helper/global.dart';
import 'package:universe_ai/helper/pref.dart';
import 'package:universe_ai/widget/home_card.dart';

class HomeScreen extends StatefulWidget {
  const HomeScreen({super.key});

  @override
  State<HomeScreen> createState() => _HomeScreenState();
}

class _HomeScreenState extends State<HomeScreen> {
  // To get back the top bar and bottom bar
  @override
  void initState() {
    super.initState();
    SystemChrome.setEnabledSystemUIMode(SystemUiMode.edgeToEdge);
    Pref.showOnboarding = false;
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        elevation: 1,
        centerTitle: true,
        backgroundColor: Colors.white,
        title: const Text(
          appName,
          style: TextStyle(
              color: Colors.blue, fontSize: 30, fontWeight: FontWeight.bold),
        ),
        actions: [
          Padding(
            padding: const EdgeInsets.only(right: 10),
            child: IconButton(
                onPressed: () {},
                icon: const Icon(
                  Icons.brightness_4_rounded,
                  color: Colors.blue,
                  size: 30,
                )),
          )
        ],
      ),
      body: ListView(
        children: const [HomeCard()],
      ),
    );
  }
}
