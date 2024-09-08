import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:universe_ai/app/app.dart';

Future<void> main() async {
  // Make the intial things to exectue before the app runs
  WidgetsFlutterBinding.ensureInitialized();

  // To trigger the fullscreen while splash screen is appearing
  await SystemChrome.setEnabledSystemUIMode(SystemUiMode.immersiveSticky);
  await SystemChrome.setPreferredOrientations([DeviceOrientation.portraitUp, DeviceOrientation.portraitDown]);

  runApp(const MyApp());
}
