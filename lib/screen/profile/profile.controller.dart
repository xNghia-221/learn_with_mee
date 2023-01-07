import 'package:get/get.dart';
import 'package:learn_with_mee/@core/data/repo/model/user.dart';
import 'package:learn_with_mee/@core/data/repo/user.repo.dart';
import 'package:learn_with_mee/@share/utils/util.dart';

class ProfileController extends GetxController {
  Rx<User?> user = User().obs;

  final _userRepo = Get.find<UserRepo>();


  @override
  void onReady() {
    super.onReady();
    _getVideoList();
  }

  _getVideoList() async {
    showLoading();
    var res = await _userRepo.getProfile(id: "c3e7b420-c895-4e95-b049-5091abf80e93");
    hideLoading();
    user.value = res?[0];
  }
}
