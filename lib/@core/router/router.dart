import 'package:get/get_navigation/get_navigation.dart';
import 'package:learn_with_mee/@core/router/pages.dart';

import '../../screen/home/home.binding.dart';
import '../../screen/home/home.screen.dart';
import '../../screen/splash/splash.binding.dart';
import '../../screen/splash/splash.screen.dart';

class Routers {
  static final route = [
    GetPage(
        name: ROUTER_SPLASH,
        page: () => SplashScreen(),
        binding: SplashBinding()),
    GetPage(
        name: ROUTER_HOME, page: () => HomeScreen(), binding: HomeBinding()),
  ];
}
