import 'package:flutter/widgets.dart';
import 'package:get/get.dart';
import 'package:learn_with_mee/@core/data/repo/model/data_model.dart';
import 'package:learn_with_mee/@core/data/repo/video_repo.dart';
import 'package:video_player/video_player.dart';

import '../../@share/utils/util.dart';

class HomeController extends GetxController {
  var userName = ''.obs;
  final _dataVideo = Data().obs;
  final _thumbnailFile = "".obs;
  final isShowThumbnail = true.obs;
  var initialVideo = true;

  Data? get dataVideo => _dataVideo.value;

  String? get thumbnailFile => _thumbnailFile.value;

  PageController pageController =
      PageController(initialPage: 0, viewportFraction: 1);

  bool isOnPageTurning = false;
  int current = 0;

  @override
  void onInit() {
    /*pageController.addListener(() {
      scrollListener();
    });*/
    super.onInit();
  }

  void scrollListener() {
    var page = pageController.page;
    if (page != null) {
      if (isOnPageTurning && page == page.roundToDouble()) {
        current = page.toInt();
        isOnPageTurning = false;
        var pageRound = page.round();
        final data = dataVideo?.data?[pageRound];
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

  getVideoList() async {
    showLoading();
    var videoRepo = Get.find<VideoRepo>();
    _dataVideo.value = await videoRepo.getListVideo() ?? Data();
    hideLoading();
  }
}
