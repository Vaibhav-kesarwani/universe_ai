import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:universe_ai/app/app.dart';

void main() {
  // To trigger the fullscreen while splash screen is appearing
  SystemChrome.setEnabledSystemUIMode(SystemUiMode.immersiveSticky);
  SystemChrome.setPreferredOrientations([DeviceOrientation.portraitUp, DeviceOrientation.portraitDown]);

  runApp(const MyApp());
}
