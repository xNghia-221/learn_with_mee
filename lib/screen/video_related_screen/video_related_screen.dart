import 'dart:math' as math;

import 'package:cached_network_image/cached_network_image.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:get/get.dart';
import 'package:learn_with_mee/screen/home/home.controller.dart';
import 'package:learn_with_mee/screen/video_related_screen/video_related_controller.dart';
import 'package:velocity_x/velocity_x.dart';

import '../../@core/data/repo/model/data_video_detail_model.dart';
import '../../@core/router/pages.dart';
import '../../@share/constants/value.constant.dart';
import '../../@share/style/colors.dart';
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
    return TabBarView(
      controller: controller.pageControllerHorizontal,
      children: [
        Obx(
          () {
            controller.pageControllerMainVideoVertical =
                !controller.isShouldReInitPageView
                    ? controller.pageControllerMainVideoVertical
                    : PageController(
                        initialPage: _snappedPageIndex, viewportFraction: 1);
            controller.pageControllerMainVideoVertical.addListener(() async {
              if (controller.pageControllerMainVideoVertical.position.pixels ==
                      controller.pageControllerMainVideoVertical.position
                          .maxScrollExtent &&
                  controller.currentPageTeacherVideo <=
                      controller.lastPageTeacherVideo) {
                await controller.getVideoOfTeacher(
                    id: controller.idTeacher,
                    page: controller.currentPageMainVideo + 1);
              }
            });
            return Scaffold(
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
                          final data = controller.videosDetail.value.isNotEmpty
                              ? controller.videosDetail.value[index]
                              : DataVideoDetail();
                          controller.idTeacher = data?.teacherId ?? "";
                          controller.pageControllerHorizontal.addListener(() {
                            debugPrint(
                                "INFO: ${controller.pageControllerHorizontal.index}, ${controller.isScrollNextPage}");
                            if (controller.pageControllerHorizontal.index ==
                                    1.0 &&
                                controller.isScrollNextPage == false) {
                              debugPrint(
                                  "INFO INNER: ${controller.pageControllerHorizontal.index}, ${controller.isScrollNextPage}");
                              controller.isScrollNextPage = true;
                              controller.isShouldReInitPageView = true;
                              controller.getProfile(
                                  teacherId: controller.idTeacher);
                            } else if (controller
                                    .pageControllerHorizontal.index ==
                                0) {
                              controller.clearDataTeacher();
                              controller.isScrollNextPage = false;
                            }
                          });
                          homeController.videoUrl =
                              controller.videosDetail?[index]?.urlVideoPlay ??
                                  "";
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
                                      crossAxisAlignment:
                                          CrossAxisAlignment.end,
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
                                                      padding: EdgeInsets.only(
                                                          right: 4.w),
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
                                                          fontWeight:
                                                              FontWeight.bold,
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
                                            onHandleLikeVideo:
                                                (dataVideoDetailNew) {
                                              homeController
                                                  .updateListFavoriteTemp(
                                                videoId:
                                                    dataVideoDetailNew?.id ??
                                                        "",
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
                ));
          },
        ),
        buildUIProfile()
      ],
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

  buildUIProfile() {
    return Obx(
      () => WillPopScope(
        onWillPop: () async {
          return false;
        },
        child: SafeArea(
          child: Container(
            color: Colors.white,
            child: SingleChildScrollView(
              child: Column(
                children: [
                  SizedBox(
                    child: Column(
                      children: [
                        Stack(
                          children: [
                            const Icon(Icons.arrow_back_ios).p20().onTap(() {
                              controller.pageControllerHorizontal.animateTo(0);
                            }),
                            Center(
                              child: Text(
                                controller.user.value?.name ?? "",
                                style: TextStyle(
                                  fontSize: 20.sp,
                                  fontWeight: FontWeight.bold,
                                ),
                              ).p20(),
                            ),
                          ],
                        ),
                        Row(
                          mainAxisAlignment: MainAxisAlignment.center,
                          children: [
                            ClipOval(
                              child: CachedNetworkImage(
                                fit: BoxFit.cover,
                                imageUrl: controller.user.value?.avatar ?? "",
                                height: 100.w,
                                width: 100.w,
                                placeholder: (context, url) =>
                                    const CircularProgressIndicator(),
                                errorWidget: (context, url, error) =>
                                    const Icon(
                                  Icons.error,
                                ),
                              ),
                            )
                          ],
                        ),
                        SizedBox(
                          height: 15.h,
                        ),
                        Row(
                          mainAxisAlignment: MainAxisAlignment.center,
                          children: [
                            Column(
                              children: [
                                Text(
                                  controller.user.value?.numberOfFollowers
                                          ?.toString() ??
                                      0.toString(),
                                  style: TextStyle(
                                    fontSize: 20.sp,
                                    fontWeight: FontWeight.bold,
                                  ),
                                ),
                                SizedBox(height: 5.h),
                                Text(
                                  'Lượt theo dõi',
                                  style: TextStyle(
                                    color: Colors.grey,
                                    fontSize: 14.sp,
                                  ),
                                ),
                              ],
                            ),
                            Container(
                              color: AppColors.grayLight,
                              width: 1.w,
                              height: 15.h,
                              margin: EdgeInsets.symmetric(
                                horizontal: 15.w,
                              ),
                            ),
                            Column(
                              children: [
                                Text(
                                  controller.user.value?.numberOfLikes
                                          ?.toString() ??
                                      0.toString(),
                                  style: TextStyle(
                                    fontSize: 20.sp,
                                    fontWeight: FontWeight.bold,
                                  ),
                                ),
                                SizedBox(height: 5.h),
                                Text(
                                  'Lượt thích video',
                                  style: TextStyle(
                                    color: Colors.grey,
                                    fontSize: 14.sp,
                                  ),
                                ),
                              ],
                            ),
                          ],
                        ),
                        SizedBox(
                          height: 15.h,
                        ),
                        Container(
                          width: 140.w,
                          height: 47.h,
                          decoration: BoxDecoration(
                            color: AppColors.primaryColor,
                            border: Border.all(
                              color: Colors.black12,
                            ),
                          ),
                          child: Center(
                            child: InkWell(
                              onTap: () async {
                                await controller.followTeacher(
                                    teacherId: controller.user.value?.id ?? "",
                                    isFollow:
                                        controller.user.value?.isFollowed == 1
                                            ? 0
                                            : 1);
                              },
                              child: Text(
                                controller.user.value?.isFollowed == 1
                                    ? "Hủy theo dõi"
                                    : "Theo dõi",
                                style: TextStyle(
                                  fontSize: 15.sp,
                                  fontWeight: FontWeight.bold,
                                ),
                              ),
                            ),
                          ),
                        ),
                        Text(controller.user.value?.introduction ?? "",
                            textAlign: TextAlign.center,
                            style: TextStyle(
                              fontSize: 14.sp,
                            )).pOnly(top: 15.h, bottom: 25.h),
                        // video list
                        Obx(() => GridView.builder(
                            shrinkWrap: true,
                            physics: const NeverScrollableScrollPhysics(),
                            itemCount:
                                controller.videos.value?.data?.length ?? 0,
                            gridDelegate:
                                const SliverGridDelegateWithFixedCrossAxisCount(
                              crossAxisCount: 3,
                              childAspectRatio: 1,
                              crossAxisSpacing: 5,
                            ),
                            itemBuilder: (context, index) {
                              var video = controller.videos.value?.data?[index];
                              return _itemVideo(
                                video: video,
                                index: index,
                                onTapItemVideo: (indexVideo) {
                                  goTo(screen: ROUTER_VIDEO_RELATED, argument: {
                                    LIST_VIDEO_DETAIL: controller.videos.value,
                                    INDEX_VIDEO: indexVideo
                                  });
                                },
                              );
                            })),
                      ],
                    ),
                  ),
                ],
              ),
            ),
          ),
        ),
      ),
    );
  }

  Widget _itemVideo(
      {required DataVideoDetail? video,
      required Function(int index) onTapItemVideo,
      required int index}) {
    return InkWell(
      onTap: () => onTapItemVideo(index),
      child: ZStack([
        Positioned.fill(
          child: CachedNetworkImage(
            errorWidget: (context, url, error) =>
                Container(color: Colors.grey, child: Icon(Icons.error)),
            imageUrl: video?.urlThumbnail ?? "",
            fit: BoxFit.cover,
          ),
        ),
        Positioned(
          bottom: 0,
          child: HStack([
            const Icon(Icons.play_arrow_outlined, color: Colors.white)
                .pOnly(right: 5),
            Text(video?.numberOfLikes?.toString() ?? "0",
                style: TextStyle(
                  color: AppColors.white,
                  fontSize: 14,
                  fontWeight: FontWeight.bold,
                ))
          ]),
        )
      ]),
    );
  }
}
