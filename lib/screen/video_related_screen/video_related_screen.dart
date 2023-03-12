import 'dart:math' as math;

import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:get/get.dart';
import 'package:learn_with_mee/screen/home/home.controller.dart';
import 'package:learn_with_mee/screen/video_related_screen/video_related_controller.dart';
import 'package:velocity_x/velocity_x.dart';

import '../../@core/data/repo/model/data_video_detail_model.dart';
import '../../@core/router/pages.dart';
import '../../@share/constants/value.constant.dart';
import '../../@share/utils/util.dart';
import '../../widget/circle_animation.dart';
import '../home/video_item.dart';

class VideoRelatedScreen extends StatefulWidget {
  const VideoRelatedScreen({super.key});

  @override
  State<StatefulWidget> createState() {
    return VideoRelatedState();
  }
}

class VideoRelatedState extends State<VideoRelatedScreen>
    with SingleTickerProviderStateMixin {
  int _snappedPageIndex = 0;
  final controller = Get.find<VideoRelatedController>();
  final homeController = Get.find<HomeController>();

  @override
  Widget build(BuildContext context) {
    return Obx(
      () => Scaffold(
          backgroundColor: Colors.black,
          body: SafeArea(
            child: Stack(
              alignment: Alignment.topCenter,
              children: [
                PageView.builder(
                  physics: const ClampingScrollPhysics(),
                  itemCount: controller.videosDetail?.length ?? 0,
                  controller: controller.pageControllerMainVideoVertical,
                  scrollDirection: Axis.vertical,
                  onPageChanged: (page) {
                    setState(() => _snappedPageIndex = page);
                  },
                  itemBuilder: (context, index) {
                    final data = controller.videosDetail?[index];
                    homeController.videoUrl =
                        controller.videosDetail?[index]?.urlVideoPlay ?? "";
                    return Stack(
                      children: [
                        VideoPlayerItem(
                          currentIndex: index,
                          dataVideoDetail: data,
                          snappedPageIndex: _snappedPageIndex,
                          callBack: (videoItemController) {
                            controller.videoControllerPlayer =
                                videoItemController.videoController;
                          },
                        ),
                        Column(
                          children: [
                            SizedBox(
                              height: 100.h,
                            ),
                            Expanded(
                              child: Row(
                                mainAxisSize: MainAxisSize.max,
                                crossAxisAlignment: CrossAxisAlignment.end,
                                children: [
                                  Expanded(
                                    child: Container(
                                      padding: EdgeInsets.only(
                                        left: 20.w,
                                      ),
                                      child: Column(
                                        mainAxisSize: MainAxisSize.min,
                                        crossAxisAlignment:
                                            CrossAxisAlignment.start,
                                        mainAxisAlignment:
                                            MainAxisAlignment.spaceEvenly,
                                        children: [
                                          Text(
                                            data?.teacher?.name ?? "",
                                            style: TextStyle(
                                              fontSize: 20.sp,
                                              color: Colors.white,
                                              fontWeight: FontWeight.bold,
                                            ),
                                          ),
                                          Padding(
                                            padding: EdgeInsets.symmetric(
                                                vertical: 4.h),
                                            child: Text(
                                              data?.title ?? "",
                                              style: TextStyle(
                                                fontSize: 15.sp,
                                                color: Colors.white,
                                              ),
                                            ),
                                          ),
                                          Row(
                                            children: [
                                              Padding(
                                                padding:
                                                    EdgeInsets.only(right: 4.w),
                                                child: const Icon(
                                                  Icons.music_note,
                                                  color: Colors.white,
                                                ),
                                              ),
                                              Expanded(
                                                child: Text(
                                                  data?.description ?? "",
                                                  style: TextStyle(
                                                    fontSize: 15.sp,
                                                    color: Colors.white,
                                                    fontWeight: FontWeight.bold,
                                                  ),
                                                ),
                                              ),
                                            ],
                                          ),
                                        ],
                                      ),
                                    ),
                                  ),
                                  buildItemInteractive(
                                      dataVideoDetail: data,
                                      homeController: homeController,
                                      onHandleLikeVideo: (dataVideoDetailNew) {
                                        homeController.updateListFavoriteTemp(
                                          videoId: dataVideoDetailNew?.id ?? "",
                                          dataVideoDetail: dataVideoDetailNew
                                                      ?.isLiked ==
                                                  0
                                              ? dataVideoDetailNew?.copyWith(
                                                  isLiked: 1,
                                                  numberOfLikes:
                                                      dataVideoDetailNew!
                                                              .numberOfLikes! +
                                                          1)
                                              : dataVideoDetailNew?.copyWith(
                                                  isLiked: 0,
                                                  numberOfLikes:
                                                      dataVideoDetailNew!
                                                              .numberOfLikes! -
                                                          1),
                                        );
                                      }),
                                ],
                              ),
                            ),
                          ],
                        ),
                      ],
                    );
                  },
                ),
              ],
            ),
          )),
    );
  }

  buildMusicAlbum(String profilePhoto) {
    return SizedBox(
      width: 80.w,
      height: 80.w,
      child: Column(
        children: [
          Container(
              padding: const EdgeInsets.all(11),
              height: 80.w,
              width: 80.w,
              child: ClipRRect(
                borderRadius: BorderRadius.circular(45),
                child: Image(
                  image: NetworkImage(profilePhoto),
                  fit: BoxFit.cover,
                ),
              ))
        ],
      ),
    );
  }

  buildItemInteractive(
      {DataVideoDetail? dataVideoDetail,
      required Function(DataVideoDetail? dataVideoDetail) onHandleLikeVideo,
      required HomeController homeController}) {
    return Container(
      width: 100,
      margin: EdgeInsets.only(top: heightScreen(percent: 100) / 5),
      child: Column(
        children: [
          const Spacer(),
          Expanded(
            flex: 1,
            child: Obx(
              () => Column(
                children: [
                  GestureDetector(
                    onTap: () => onHandleLikeVideo(homeController
                        .listFavoriteVerticalTemp[dataVideoDetail?.id]),
                    child: Icon(
                      homeController
                                  .listFavoriteVerticalTemp[dataVideoDetail?.id]
                                  ?.isLiked ==
                              1
                          ? Icons.favorite_rounded
                          : Icons.favorite_border_rounded,
                      size: 40.w,
                      color: homeController
                                  .listFavoriteVerticalTemp[dataVideoDetail?.id]
                                  ?.isLiked ==
                              1
                          ? Colors.green
                          : Colors.white,
                    ),
                  ),
                  SizedBox(height: 7.h),
                  Text(
                    "${homeController.listFavoriteVerticalTemp[dataVideoDetail?.id]?.numberOfLikes ?? 0}",
                    style: TextStyle(
                      fontSize: 20.sp,
                      color: Colors.white,
                    ),
                  )
                ],
              ),
            ),
          ),
          Expanded(
            flex: 1,
            child: Visibility(
              visible: false,
              child: Column(
                children: [
                  Icon(
                    Icons.comment,
                    size: 40.w,
                    color: Colors.white,
                  ),
                  const SizedBox(height: 7),
                  Text(
                    "${dataVideoDetail?.numberOfComments ?? 0}",
                    style: TextStyle(
                      fontSize: 20.sp,
                      color: Colors.white,
                    ),
                  )
                ],
              ),
            ),
          ),
          Expanded(
            flex: 1,
            child: Visibility(
              visible: false,
              child: Column(
                children: [
                  InkWell(
                    onTap: () {},
                    child: Transform.rotate(
                      angle: -math.pi,
                      child: Icon(
                        Icons.reply,
                        size: 40.w,
                        color: Colors.white,
                      ),
                    ),
                  ),
                  SizedBox(height: 7.h),
                ],
              ),
            ),
          ),
          CircleAnimation(
            child: buildMusicAlbum(dataVideoDetail?.teacher?.avatar ?? ""),
          ).onTap(() async {
            if (dataVideoDetail?.id != null) {
              controller.videoControllerPlayer.pause();
              var dataBack = await goTo(screen: ROUTER_PROFILE, argument: {
                TEACHER_ID: dataVideoDetail?.teacherId,
              });
              if (dataBack[RESUME_VIDEO] == true) {
                controller.videoControllerPlayer.play();
              }
            }
          }),
        ],
      ),
    );
  }
}
