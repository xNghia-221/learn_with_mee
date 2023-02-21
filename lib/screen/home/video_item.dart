import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:learn_with_mee/@core/data/repo/model/data_video_detail_model.dart';
import 'package:learn_with_mee/screen/home/video_item_controller.dart';
import 'package:video_player/video_player.dart';
import 'package:wakelock/wakelock.dart';

class VideoPlayerItem extends GetWidget<VideoItemController> {
  final DataVideoDetail? dataVideoDetail;
  final int snappedPageIndex;
  final int currentIndex;

  const VideoPlayerItem({
    Key? key,
    required this.dataVideoDetail,
    required this.snappedPageIndex,
    required this.currentIndex,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    final size = MediaQuery.of(context).size;
    if (snappedPageIndex != currentIndex) controller.isVideoPlaying = true;
    (snappedPageIndex == currentIndex && controller.isVideoPlaying)
        ? controller.videoController.play()
        : controller.videoController.pause();
    controller.isVideoPlaying ? Wakelock.enable() : Wakelock.disable();

    return Container(
      width: size.width,
      height: size.height,
      decoration: const BoxDecoration(
        color: Colors.black,
      ),
      child: FutureBuilder(
        future: controller.initializeVideoPlayer,
        builder: (context, snapshot) {
          if (snapshot.connectionState == ConnectionState.done) {
            return VideoPlayer(controller.videoController);
          } else {
            return Container();
          }
        },
      ),
    );
  }
}
