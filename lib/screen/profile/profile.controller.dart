import 'package:get/get.dart';
import 'package:learn_with_mee/@core/data/repo/model/data_model.dart';
import 'package:learn_with_mee/@core/data/repo/model/user.dart';
import 'package:learn_with_mee/@core/data/repo/user.repo.dart';
import 'package:learn_with_mee/@core/data/repo/video_repo.dart';
import 'package:learn_with_mee/@share/constants/value.constant.dart';
import 'package:learn_with_mee/@share/utils/util.dart';
import 'package:velocity_x/velocity_x.dart';

class ProfileController extends GetxController {
  Rx<User?> user = User().obs;
  Rx<Data?> videos = Data().obs;

  String? teacherId;

  @override
  void onReady() {
    super.onReady();
    teacherId = Get.arguments[TEACHER_ID];
    _getProfile();
  }

  _getProfile() async {
    if (teacherId.isNotEmptyAndNotNull) {
      showLoading();
      var userRepo = Get.find<UserRepo>();
      var res = await userRepo.getProfile(id: teacherId!);
      hideLoading();
      user.value = res;
      var id = user.value?.id;
      if (id != null) {
        _getVideoOfTeacher(id: id.toString(), page: 1);
      }
    }
  }

  _getVideoOfTeacher({required String id, int page = 1}) async {
    showLoading();
    var videoRepo = Get.find<VideoRepo>();
    var data =
        await videoRepo.getListVideoOfTeacher(LIMIT_PAGE, page, teacherId: id);
    hideLoading();
    videos.value = data;
  }

  Future<void> followTeacher(
      {required String teacherId, required int isFollow}) async {
    showLoading();
    var userRepo = Get.find<UserRepo>();
    await userRepo.followTeacher(teacherId: teacherId, isFollow: isFollow);
    await _getProfile();
  }
}
