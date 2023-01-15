import 'package:get/get.dart';
import 'package:get/get_core/src/get_main.dart';
import 'package:learn_with_mee/screen/login/login.controller.dart';
import 'package:learn_with_mee/screen/splash/splash.controller.dart';

import '../../@core/data/api/user.api.dart';
import '../../@core/data/local/storage/data.storage.dart';
import '../../@core/data/repo/user.repo.dart';

class LoginBinding implements Bindings {
  @override
  void dependencies() {
    Get.lazyPut(() => LoginController());
    Get.lazyPut(() => DataStorage());
    Get.lazyPut(() => UserApi());
    Get.lazyPut(() => UserRepo(Get.find()));
  }
}
