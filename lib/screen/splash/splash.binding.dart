import 'package:get/get.dart';
import 'package:get/get_core/src/get_main.dart';
import 'package:learn_with_mee/screen/splash/splash.controller.dart';

import '../../@core/data/api/user.api.dart';
import '../../@core/data/local/storage/data.storage.dart';
import '../../@core/data/repo/user.repo.dart';

class SplashBinding implements Bindings {
  @override
  void dependencies() {
    Get.lazyPut(() => SplashController());
    Get.lazyPut(() => DataStorage());
    Get.lazyPut(() => UserApi());
    Get.lazyPut(() => UserRepo(Get.find()));
  }
}
