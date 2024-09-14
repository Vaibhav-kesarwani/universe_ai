import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:hive/hive.dart';
import 'package:path_provider/path_provider.dart';
import 'package:universe_ai/app/app.dart';

Future<void> main() async {
  // Make the intial things to exectue before the app runs
  WidgetsFlutterBinding.ensureInitialized();

  // To have the local storage for the app
  Hive.defaultDirectory = (await getApplicationDocumentsDirectory()).path;

  // To trigger the fullscreen while splash screen is appearing
  await SystemChrome.setEnabledSystemUIMode(SystemUiMode.immersiveSticky);
  await SystemChrome.setPreferredOrientations([DeviceOrientation.portraitUp, DeviceOrientation.portraitDown]);

  runApp(const MyApp());
}
