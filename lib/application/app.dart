import 'package:flutter/material.dart';
import 'package:flutter_easyloading/flutter_easyloading.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:get/get.dart';
import 'package:get/get_navigation/get_navigation.dart';
import 'package:learn_with_mee/@core/data/api/user.api.dart';
import 'package:learn_with_mee/@core/data/local/storage/data.storage.dart';
import 'package:learn_with_mee/@core/data/repo/model/LoginResponse.dart';
import 'package:learn_with_mee/@core/data/repo/user.repo.dart';
import 'package:learn_with_mee/@share/utils/util.dart';
import 'package:package_info_plus/package_info_plus.dart';

import '../@core/router/pages.dart';
import '../@core/router/router.dart';
import '../@share/localize/localize.dart';

class Application extends StatefulWidget {
  @override
  _ApplicationState createState() => _ApplicationState();
}

class _ApplicationState extends State<Application> {
  final storage = Get.put(DataStorage());
  final userApi = Get.put(UserApi());
  final userRepo = Get.put(UserRepo(Get.find()));

  @override
  void initState() {
    super.initState();
    _initLoading();
  }

  _checkForceUpdate({required Function action}) async {
    PackageInfo packageInfo = await PackageInfo.fromPlatform();
    String versionApp = packageInfo.version;
    var response = await userRepo.getVersion();
    var version = response?.version ?? versionApp;
    if (isForceUpdate(versionApp, version)) {
      action();
    }
  }

  @override
  Widget build(BuildContext context) {
    final token = storage.getToken() != null
        ? LoginResponse.fromJson(storage.getToken())
        : null;
    _checkForceUpdate(action: () {
      openDialog(
          dialog: showConfirmDialog(message: "Force Update !", isCancel: false),
          dismiss: false);
    });
    return ScreenUtilInit(
      designSize: const Size(375, 734),
      builder: (BuildContext context, Widget? child) {
        return GetMaterialApp(
          debugShowCheckedModeBanner: false,
          navigatorKey: Get.key,
          theme: _applicationTheme(),
          defaultTransition: Transition.fadeIn,
          builder: (_, child) => FlutterEasyLoading(child: child),
          initialRoute: token != null ? ROUTER_HOME : ROUTER_LOGIN,
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

  bool isForceUpdate(String currentVersion, String forceUpdateVersion) {
    bool _isForceUpdate = false;
    final splitCurrentVersion = currentVersion.split(".");
    final splitForceUpdateVersion = forceUpdateVersion.split(".");

    //Compare version
    try {
      for (int i = 0; i < splitForceUpdateVersion.length; i++) {
        if (splitCurrentVersion.length > i) {
          if (int.parse(splitForceUpdateVersion[i]) >
              int.parse(splitCurrentVersion[i])) {
            _isForceUpdate = true;
            return _isForceUpdate;
          } else if (int.parse(splitForceUpdateVersion[i]) <
              int.parse(splitCurrentVersion[i])) {
            return _isForceUpdate;
          }
        } else {
          // in case fore update version have length bigger than current version. ex: 1.0.9.1 vs 1.0.9
          _isForceUpdate = true;
          return _isForceUpdate;
        }
      }
    } on Exception catch (_) {}
    return _isForceUpdate;
  }
}
