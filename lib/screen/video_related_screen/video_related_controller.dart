import 'package:flutter/cupertino.dart';
import 'package:get/get.dart';
import 'package:video_player/video_player.dart';

import '../../@core/data/repo/model/data_model.dart';
import '../../@core/data/repo/model/data_video_detail_model.dart';
import '../../@share/constants/value.constant.dart';

class VideoRelatedController extends GetxController
    with GetSingleTickerProviderStateMixin {
  PageController? pageControllerMainVideoVertical =
      PageController(initialPage: 1, viewportFraction: 1, keepPage: true);
  Data? data;
  RxList<DataVideoDetail?> videosDetail = <DataVideoDetail>[].obs;

  late VideoPlayerController videoControllerPlayer;

  int indexVideo = 0;

  @override
  void onReady() {
    super.onReady();
    data = Get.arguments[LIST_VIDEO_DETAIL];
    indexVideo = Get.arguments[INDEX_VIDEO];
    videosDetail.value = (data?.data != null ? data!.data : [])!;
    pageControllerMainVideoVertical!.animateToPage(
      indexVideo,
      duration: const Duration(milliseconds: 200),
      curve: Curves.easeInOut,
    );
    update();
  }
}
