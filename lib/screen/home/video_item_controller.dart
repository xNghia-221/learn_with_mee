import 'package:get/get.dart';
import 'package:get/get_core/src/get_main.dart';
import 'package:get/get_state_manager/src/simple/get_controllers.dart';
import 'package:learn_with_mee/@share/utils/util.dart';
import 'package:video_player/video_player.dart';

import 'home.controller.dart';

class VideoItemController extends GetxController {
  late Future initializeVideoPlayer;
  bool isVideoPlaying = true;
  String videoUrl = Get.find<HomeController>().videoUrl;
  late VideoPlayerController videoController;

  @override
  void onInit() {
    videoController = VideoPlayerController.network(videoUrl);
    initializeVideoPlayer = videoController.initialize();
    videoController.setLooping(true);
    videoController.play();
    hideLoading();
    super.onInit();
  }

  @override
  void onClose() {
    videoController.dispose();
    super.onClose();
  }

  @override
  void onReady() {
    super.onReady();
  }

  showLoading() {
    showLoading();
  }
}
