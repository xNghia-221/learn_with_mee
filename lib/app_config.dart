enum Flavor { development, production }

class AppConfig {
  static String flavor = Flavor.development.name;
}
