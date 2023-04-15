import 'package:flutter/material.dart';
import 'package:flutter_dotenv/flutter_dotenv.dart';
import 'package:get_storage/get_storage.dart';

import 'app_config.dart';
import 'application/app.dart';
import 'constant.dart';

void main() async {
  await initProject();
  runApp(Application());
}

Future<void> initProject() async {
  WidgetsFlutterBinding.ensureInitialized();

  // Get flavor
  AppConfig.flavor =
      await Constants.platformChannel.invokeMethod(Constants.getFlavor);

  // Check load environment follow flavor
  if (AppConfig.flavor == Flavor.development.name) {
    await dotenv.load(fileName: ".env_dev");
  } else {
    await dotenv.load(fileName: ".env_prd"); // add .enc_production
  }

  await GetStorage.init();
}