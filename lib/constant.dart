import 'package:flutter/services.dart';
import 'package:flutter_dotenv/flutter_dotenv.dart';

import 'app_config.dart';

class Constants {
  const Constants._({required this.endpoint});

  factory Constants.of() {
    final flavor =
        Flavor.values.firstWhere((element) => element.name == AppConfig.flavor);

    switch (flavor) {
      case Flavor.development:
        return Constants._dev();
      default:
        return Constants._prd();
    }
  }

  factory Constants._dev() {
    return Constants._(
      endpoint: dotenv.get("DEV_API", fallback: ""),
    );
  }

  factory Constants._prd() {
    return Constants._(
      endpoint: dotenv.get("PRD_API", fallback: ""),
    );
  }

  final String endpoint;

  static const platformChannel =
      MethodChannel("com.learn_with_mee/native_channel");

  static const getFlavor = "GET_FLAVOR";
}
