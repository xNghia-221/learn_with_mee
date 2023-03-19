import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:video_player/video_player.dart';

import '../../@core/data/repo/model/data_model.dart';
import '../../@core/data/repo/model/data_video_detail_model.dart';
import '../../@core/data/repo/model/user.dart';
import '../../@core/data/repo/user.repo.dart';
import '../../@core/data/repo/video_repo.dart';
import '../../@share/constants/value.constant.dart';
import '../../@share/utils/util.dart';

class VideoRelatedController extends GetxController
    with GetSingleTickerProviderStateMixin {
  PageController pageControllerMainVideoVertical =
      PageController(initialPage: 1, viewportFraction: 1, keepPage: true);
  Data? data;
  RxList<DataVideoDetail?> videosDetail = <DataVideoDetail>[].obs;
  final RxList<DataVideoDetail> listTeacherVideo = <DataVideoDetail>[].obs;

  late VideoPlayerController videoControllerPlayer;

  late TabController pageControllerHorizontal;

  bool isShouldReInitPageView = false;
  var currentPageMainVideo = 0;

  int indexVideo = 0;

  final videos = Data().obs;
  Rx<User?> user = User().obs;

  var isScrollNextPage = false;

  var idTeacher = "";

  var currentPageTeacherVideo = 0;
  var lastPageTeacherVideo = 0;

  @override
  void onInit() {
    // TODO: implement onInit
    super.onInit();
    pageControllerHorizontal = TabController(length: 2, vsync: this);
  }

  @override
  void onReady() {
    super.onReady();
    data = Get.arguments[LIST_VIDEO_DETAIL];
    indexVideo = Get.arguments[INDEX_VIDEO];
    videosDetail.value = (data?.data != null ? data!.data : [])!;
    pageControllerMainVideoVertical.animateToPage(
      indexVideo,
      duration: const Duration(milliseconds: 200),
      curve: Curves.easeInOut,
    );
    update();
  }

  getVideoOfTeacher({required String id, int page = 1}) async {
    showLoading();
    currentPageTeacherVideo = page;
    var videoRepo = Get.find<VideoRepo>();
    var data =
        await videoRepo.getListVideoOfTeacher(LIMIT_PAGE, page, teacherId: id);
    videos.value = data ?? Data();
    lastPageTeacherVideo = data?.lastPage ?? currentPageTeacherVideo;
    listTeacherVideo.value.addAll(data?.data ?? []);
    listTeacherVideo.refresh();
    hideLoading();
  }

  getProfile({required String teacherId}) async {
    var userRepo = Get.find<UserRepo>();
    showLoading();
    var res = await userRepo.getProfile(id: teacherId);
    hideLoading();
    user.value = res;
    var id = user.value?.id;
    if (id != null) {
      getVideoOfTeacher(id: id.toString(), page: 1);
    }
  }

  Future<void> followTeacher(
      {required String teacherId, required int isFollow}) async {
    var userRepo = Get.find<UserRepo>();
    showLoading();
    await userRepo.followTeacher(teacherId: teacherId, isFollow: isFollow);
    await getProfile(teacherId: teacherId);
  }

  clearDataTeacher() {
    videos.value = Data();
    user.value = User();
  }
}
