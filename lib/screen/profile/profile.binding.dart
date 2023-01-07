import 'package:get/get.dart';
import 'package:learn_with_mee/@core/data/api/user.api.dart';
import 'package:learn_with_mee/@core/data/repo/user.repo.dart';
import 'package:learn_with_mee/screen/profile/profile.controller.dart';

class ProfileBinding extends Bindings {
  @override
  void dependencies() {
    Get.put(ProfileController());
    Get.lazyPut(() => UserApi());
    Get.lazyPut(() => UserRepo(Get.find()));
  }
}
