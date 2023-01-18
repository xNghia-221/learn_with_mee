import 'package:get/get_navigation/get_navigation.dart';
import 'package:learn_with_mee/@core/router/pages.dart';
import 'package:learn_with_mee/screen/home/home.binding.dart';
import 'package:learn_with_mee/screen/home/home.screen.dart';
import 'package:learn_with_mee/screen/login/login.binding.dart';
import 'package:learn_with_mee/screen/login/login.screen.dart';
import 'package:learn_with_mee/screen/profile/profile.binding.dart';
import 'package:learn_with_mee/screen/profile/profile.screen.dart';
import 'package:learn_with_mee/screen/splash/splash.binding.dart';
import 'package:learn_with_mee/screen/splash/splash.screen.dart';

class Routers {
  static final route = [
    GetPage(
        name: ROUTER_SPLASH,
        page: () => SplashScreen(),
        binding: SplashBinding()),
    GetPage(
        name: ROUTER_HOME, page: () => HomeScreen(), binding: HomeBinding()),
    GetPage(
        name: ROUTER_PROFILE,
        page: () => const ProfileScreen(),
        binding: ProfileBinding()),
    GetPage(
        name: ROUTER_LOGIN,
        page: () => const LoginScreen(),
        binding: LoginBinding()),
  ];
}
