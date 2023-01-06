import 'package:flutter_dotenv/flutter_dotenv.dart';

class Constants {
  const Constants._({required this.endpoint});

  factory Constants.dev() {
    return Constants._(endpoint: dotenv.get("DEV_API", fallback: ""));
  }

  final String endpoint;
}
