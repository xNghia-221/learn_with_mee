import 'package:flutter/material.dart';
import 'package:flutter_easyloading/flutter_easyloading.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:get/get.dart';
import 'package:get/get_navigation/get_navigation.dart';

import '../@core/router/pages.dart';
import '../@core/router/router.dart';
import '../@share/localize/localize.dart';

class Application extends StatefulWidget {
  @override
  _ApplicationState createState() => _ApplicationState();
}

class _ApplicationState extends State<Application> {
  @override
  void initState() {
    super.initState();
    _initLoading();
  }

  @override
  Widget build(BuildContext context) {
    return ScreenUtilInit(
      designSize: const Size(375, 734),
      builder: (BuildContext context, Widget? child) {
        return GetMaterialApp(
          debugShowCheckedModeBanner: false,
          navigatorKey: Get.key,
          theme: _applicationTheme(),
          defaultTransition: Transition.fadeIn,
          builder: (_, child) => FlutterEasyLoading(child: child),
          initialRoute: ROUTER_SPLASH,
          getPages: Routers.route,
          translations: Localizes(),
          locale: Localizes.locale,
          fallbackLocale: Localizes.fallbackLocale,
        );
      },
    );
  }

  _applicationTheme() => ThemeData(
        primarySwatch: Colors.deepOrange,
        appBarTheme: const AppBarTheme(color: Colors.deepOrange),
      );

  void _initLoading() => EasyLoading.instance
    ..displayDuration = const Duration(milliseconds: 1500)
    ..indicatorType = EasyLoadingIndicatorType.fadingCircle
    ..maskType = EasyLoadingMaskType.black
    ..loadingStyle = EasyLoadingStyle.light
    ..toastPosition = EasyLoadingToastPosition.bottom
    ..indicatorSize = 45
    ..radius = 10
    ..fontSize = 14
    ..userInteractions = false;
}
