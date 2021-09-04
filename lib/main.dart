import 'package:device_preview/device_preview.dart';
import 'package:fantasia/app/app.dart';
import 'package:fantasia/app/locator/locator.dart';
import 'package:flutter/material.dart';
import 'package:logger/logger.dart';
import 'package:stacked_themes/stacked_themes.dart';

Future<void> main() async {
  WidgetsFlutterBinding.ensureInitialized();
  await ThemeManager.initialise();

  Logger.level = Level.debug;

  setupLocator();

  runApp(
    DevicePreview(
      builder: (BuildContext context) => FantasiaApp(),
    ),
  );
}
