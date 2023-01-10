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
  final videoPlayerController = VideoPlayerController.network("").obs;
  final isShowThumbnail = true.obs;
  var initialVideo = true;

  Data? get dataVideo => _dataVideo.value;

  String? get thumbnailFile => _thumbnailFile.value;

  PageController pageController = PageController(initialPage: 0, viewportFraction: 1);

  @override
  void onInit() {
    pageController.addListener(() {
      var page = pageController.page;
      if(page != null) {
        var pageRound = page.round();
        if(page > page.toInt() + 0.5) {
          final data = dataVideo?.data?[pageRound];
          initVideoController(data?.urlVideoPlay ?? "");
        }
        else {
          final data = dataVideo?.data?[pageRound];
          initVideoController(data?.urlVideoPlay ?? "");
        }
      }
    });
    super.onInit();
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

  initVideoController(String urlVideo) {
    videoPlayerController.value.dispose();
    videoPlayerController.value = VideoPlayerController.network(urlVideo)
      ..initialize().then((value) async {
        showLoading();
        await playVideo();
        videoPlayerController.value.setVolume(1);
        hideLoading();
      });
  }

  playVideo() async {
    await videoPlayerController.value.play();
    isShowThumbnail.value = false;
  }

  getVideoList() async {
    showLoading();
    var videoRepo = Get.find<VideoRepo>();
    _dataVideo.value = await videoRepo.getListVideo() ?? Data();
    hideLoading();
  }
}
