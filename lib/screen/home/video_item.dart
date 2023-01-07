import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:learn_with_mee/@core/data/repo/model/data_video_detail_model.dart';
import 'package:video_player/video_player.dart';

class VideoPlayerItem extends GetWidget {
  final String videoUrl;
  final DataVideoDetail? dataVideoDetail;
  final VideoPlayerController videoPlayerController;
  final bool isShowThumbnail;

  const VideoPlayerItem(
      {Key? key,
      required this.videoUrl,
      required this.dataVideoDetail,
      required this.videoPlayerController,
      required this.isShowThumbnail})
      : super(key: key);

  @override
  Widget build(BuildContext context) {
    final size = MediaQuery.of(context).size;

    return Stack(
      children: [
        Container(
          width: size.width,
          height: size.height,
          decoration: const BoxDecoration(
            color: Colors.black,
          ),
          child: VideoPlayer(videoPlayerController),
        ),
        if (dataVideoDetail?.poster != null && isShowThumbnail) ...[
          Image.network(
            dataVideoDetail!.urlThumbnail!,
            fit: BoxFit.fitHeight,
          ),
        ],
      ],
    );
  }
}
