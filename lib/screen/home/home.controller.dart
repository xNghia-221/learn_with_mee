import 'package:get/get.dart';

import '../../@core/data/repo/user.repo.dart';
import '../../@share/utils/util.dart';

class HomeController extends GetxController {
  var userName = ''.obs;

  @override
  void onInit() {
    super.onInit();
  }

  @override
  void onClose() {
    super.onClose();
  }

  @override
  void onReady() {
    super.onReady();
    _getMyPage();
  }

  _getMyPage() async {
    showLoading(content: '');
    var _userRepo = Get.find<UserRepo>();
    var res = await _userRepo.getMyPage();
    hideLoading();
    userName.value = res?.name ?? "";
  }
}
