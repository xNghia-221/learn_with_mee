import 'dart:ui';

import 'package:get/get.dart';

import 'en_US.localize.dart';
import 'ja_JP.localize.dart';

class Localizes extends Translations {
  static final locale = Get.deviceLocale;
  static final fallbackLocale = Locale('en', 'US');

  @override
  Map<String, Map<String, String>> get keys => {
        'ja_JP': ja_JP,
        'en_US': en_US,
      };
}
