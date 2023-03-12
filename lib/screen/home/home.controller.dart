import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:learn_with_mee/@core/data/repo/model/data_model.dart';
import 'package:learn_with_mee/@core/data/repo/model/data_video_detail_model.dart';
import 'package:learn_with_mee/@core/data/repo/video_repo.dart';
import 'package:learn_with_mee/screen/home/home.screen.dart';
import 'package:video_player/video_player.dart';

import '../../@core/data/repo/user.repo.dart';
import '../../@share/constants/value.constant.dart';
import '../../@share/utils/util.dart';

class HomeController extends GetxController
    with GetSingleTickerProviderStateMixin {
  var userName = ''.obs;
  final dataVideo = Data();
  final RxList<DataVideoDetail> listVideo = <DataVideoDetail>[].obs;
  final RxList<DataVideoDetail> listTeacherVideo = <DataVideoDetail>[].obs;
  final dataVideoOfTeacher = Data().obs;
  final _thumbnailFile = "".obs;
  final isShowThumbnail = true.obs;
  var idTeacher = "";
  var initialVideo = true;
  List<DataVideoDetail> listVideoTemp = [];
  final screen = [HomeScreen(), HomeScreen()].obs;
  late TabController pageControllerHorizontal;
  var currentPageMainVideo = 0;
  var lastPageMainVideo = 0;
  var currentPageTeacherVideo = 0;
  var lastPageTeacherVideo = 0;

  String videoUrl = "";

  var snappedPageIndex = 0.obs;

  var isScrollNextPage = false;

  final videos = Data().obs;

  late VideoPlayerController videoController;

  String? get thumbnailFile => _thumbnailFile.value;

  PageController pageControllerMainVideoVertical =
      PageController(initialPage: 0, viewportFraction: 1);

  bool isOnPageTurning = false;
  int current = 0;

  RxMap<String, DataVideoDetail?> listFavoriteVerticalTemp =
      <String, DataVideoDetail?>{}.obs;

  var userRepo = Get.find<UserRepo>();

  @override
  void onInit() {
    /*pageController.addListener(() {
      scrollListener();
    });*/
    super.onInit();
    pageControllerHorizontal = TabController(length: 2, vsync: this);

    pageControllerMainVideoVertical.addListener(() {
      if (pageControllerHorizontal.index == 0) {
        if (pageControllerMainVideoVertical.position.pixels ==
                pageControllerMainVideoVertical.position.maxScrollExtent &&
            currentPageMainVideo < lastPageMainVideo) {
          getVideoList(page: currentPageMainVideo + 1);
        }
      } else {
        if (pageControllerMainVideoVertical.position.pixels ==
                pageControllerMainVideoVertical.position.maxScrollExtent &&
            currentPageTeacherVideo < lastPageTeacherVideo) {
          getVideoOfTeacher(id: idTeacher, page: currentPageMainVideo + 1);
        }
      }
    });
  }

  void scrollListener() {
    var page = pageControllerMainVideoVertical.page;
    if (page != null) {
      if (isOnPageTurning && page == page.roundToDouble()) {
        current = page.toInt();
        isOnPageTurning = false;
        var pageRound = page.round();
        //final data = dataVideo?.data?[pageRound];
      } else if (!isOnPageTurning && current.toDouble() != page) {
        if ((current.toDouble() - page).abs() > 0.5) {
          isOnPageTurning = true;
        }
      }
    }
  }

  @override
  void onClose() {
    super.onClose();
  }

  @override
  void onReady() {
    super.onReady();
    getVideoList();
  }

  /*initVideoController(String urlVideo) {
    videoPlayerController.value.dispose();
    videoPlayerController.value = VideoPlayerController.network(urlVideo)
      ..initialize().then((value) async {
        await playVideo();
        videoPlayerController.value.setVolume(1);
      });
  }*/

  /*playVideo() async {
    await videoPlayerController.value.play();
    isShowThumbnail.value = false;
  }*/

  getVideoList({int page = 1}) async {
    showLoading();
    currentPageMainVideo = page;
    var videoRepo = Get.find<VideoRepo>();
    final data = await videoRepo.getListVideo(
            limit: LIMIT_PAGE, page: currentPageMainVideo) ??
        Data();
    lastPageMainVideo = data.lastPage ?? currentPageMainVideo;
    listVideo.value.addAll(data.data ?? []);
    listVideo.refresh();
    listVideoTemp = listVideo.value;
    for (var element in listVideo.value) {
      if (!listFavoriteVerticalTemp.containsKey(element?.id)) {
        updateListFavoriteTemp(
            videoId: element?.id ?? "", dataVideoDetail: element);
      }
    }
    hideLoading();
  }

  getVideoOfTeacher({required String id, int page = 1}) async {
    showLoading();
    currentPageTeacherVideo = page;
    var videoRepo = Get.find<VideoRepo>();
    var data =
        await videoRepo.getListVideoOfTeacher(LIMIT_PAGE, page, teacherId: id);
    lastPageTeacherVideo = data?.lastPage ?? currentPageTeacherVideo;
    listTeacherVideo.value.addAll(data?.data ?? []);
    listTeacherVideo.refresh();
    hideLoading();
  }

  setOldData() {
    listVideo.value = listVideoTemp;
  }

  clearDataMainVideo() {
    listVideoTemp.clear();
    listVideo.value.clear();
    lastPageMainVideo = 1;
    currentPageMainVideo = 1;
    listVideo.refresh();
  }

  clearDataTeacherVideo() {
    if (listTeacherVideo.isNotEmpty) {
      listTeacherVideo.value.clear();
    }
    lastPageTeacherVideo = 1;
    currentPageTeacherVideo = 1;
  }

  void updateListFavoriteTemp({
    String videoId = "",
    DataVideoDetail? dataVideoDetail,
    bool needClear = false,
  }) {
    if (needClear) {
      // Clear state when push or pop route
      listFavoriteVerticalTemp = <String, DataVideoDetail?>{}.obs;
    } else {
      listFavoriteVerticalTemp[videoId] = dataVideoDetail;
      userRepo.likeVideoOfTeacher(
          videoId: videoId, isLike: dataVideoDetail?.isLiked ?? 0);
    }
  }
}
