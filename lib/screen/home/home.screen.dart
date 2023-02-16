import 'dart:math' as math;

import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:get/get.dart';
import 'package:learn_with_mee/@core/data/repo/model/data_video_detail_model.dart';
import 'package:learn_with_mee/@core/router/pages.dart';
import 'package:learn_with_mee/@share/constants/value.constant.dart';
import 'package:learn_with_mee/screen/home/video_item.dart';
import 'package:velocity_x/velocity_x.dart';
import 'package:video_player/video_player.dart';

import '../../@share/utils/util.dart';
import '../../widget/circle_animation.dart';
import 'home.controller.dart';

class HomeScreen extends GetWidget<HomeController> {
  const HomeScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Obx(() {
        return TabBarView(
          controller: controller.pageControllerHorizontal,
          children: [
            RefreshIndicator(
                child: buildListVideo(0),
                onRefresh: () async {
                  controller.listVideo.clear();
                  controller.listVideoTemp.clear();
                  await controller.getVideoList();
                }),
            RefreshIndicator(
                child: buildListVideo(1),
                onRefresh: () async {
                  controller.clearDataTeacherVideo();
                  await controller.getVideoOfTeacher(id: controller.idTeacher);
                })
          ],
        );
      }),
    );
  }

  buildMusicAlbum(String profilePhoto) {
    return SizedBox(
      width: 80,
      height: 80,
      child: Column(
        children: [
          Container(
              padding: const EdgeInsets.all(11),
              height: 80,
              width: 80,
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

  buildListVideo(int indexPageHorizontal) {
    return PageView.builder(
      physics: const ClampingScrollPhysics(),
      itemCount: indexPageHorizontal == 0
          ? controller.listVideo.value.length
          : controller.listTeacherVideo.value.length,
      controller: controller.pageControllerMainVideoVertical,
      scrollDirection: Axis.vertical,
      itemBuilder: (context, index) {
        late DataVideoDetail? data;
        if (indexPageHorizontal == 0) {
          data = controller.listVideo.value.isNotEmpty
              ? controller.listVideo.value[index]
              : DataVideoDetail();
          controller.idTeacher = data.teacherId ?? "";
        } else {
          data = controller.listTeacherVideo.value.isNotEmpty
              ? controller.listTeacherVideo.value[index]
              : DataVideoDetail();
        }
        controller.pageControllerHorizontal.addListener(() {
          debugPrint(
              "INFO: ${controller.pageControllerHorizontal.index}, ${controller.isScrollNextPage}");
          if (controller.pageControllerHorizontal.index == 1.0 &&
              controller.isScrollNextPage == false) {
            debugPrint(
                "INFO INNER: ${controller.pageControllerHorizontal.index}, ${controller.isScrollNextPage}");
            controller.isScrollNextPage = true;
            controller.getVideoOfTeacher(id: controller.idTeacher);
          } else if (controller.pageControllerHorizontal.index == 0) {
            controller.clearDataTeacherVideo();
            controller.isScrollNextPage = false;
            controller.setOldData();
          }
        });
        VideoPlayerController videoPlayerController =
        VideoPlayerController.network(data?.urlVideoPlay ?? "")
          ..initialize()
          ..play()
          ..setLooping(true);

        debugPrint("OKE: $index -  ${data?.urlVideoPlay}");
        return Stack(
          children: [
            VideoPlayerItem(
                dataVideoDetail: data,
                videoPlayerController: videoPlayerController,
                videoUrl: data?.urlVideoPlay ?? "",
                isShowThumbnail: controller.isShowThumbnail.value),
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
                            crossAxisAlignment: CrossAxisAlignment.start,
                            mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                            children: [
                              Text(
                                data?.teacher?.name ?? "",
                                style: const TextStyle(
                                  fontSize: 20,
                                  color: Colors.white,
                                  fontWeight: FontWeight.bold,
                                ),
                              ),
                              Text(
                                data?.title ?? "",
                                style: const TextStyle(
                                  fontSize: 15,
                                  color: Colors.white,
                                ),
                              ),
                              Row(
                                children: [
                                  const Icon(
                                    Icons.music_note,
                                    size: 15,
                                    color: Colors.white,
                                  ),
                                  Expanded(
                                    child: Text(
                                      data?.description ?? "",
                                      style: const TextStyle(
                                        fontSize: 15,
                                        color: Colors.white,
                                        fontWeight: FontWeight.bold,
                                      ),
                                    ),
                                  ),
                                ],
                              )
                            ],
                          ),
                        ),
                      ),
                      Container(
                        width: 100,
                        margin: EdgeInsets.only(
                            top: heightScreen(percent: 100) / 5),
                        child: Column(
                          mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                          children: [
                            // buildProfile(
                            //   data.profilePhoto,
                            // ),
                            Column(
                              children: [
                                const Icon(
                                  Icons.favorite,
                                  size: 40,
                                  color: Colors.white,
                                ),
                                const SizedBox(height: 7),
                                Text(
                                  "${data?.numberOfLikes ?? 0}",
                                  style: const TextStyle(
                                    fontSize: 20,
                                    color: Colors.white,
                                  ),
                                )
                              ],
                            ),
                            Column(
                              children: [
                                const Icon(
                                  Icons.comment,
                                  size: 40,
                                  color: Colors.white,
                                ),
                                const SizedBox(height: 7),
                                Text(
                                  "${data?.numberOfComments ?? 0}",
                                  style: const TextStyle(
                                    fontSize: 20,
                                    color: Colors.white,
                                  ),
                                )
                              ],
                            ),
                            Column(
                              children: [
                                InkWell(
                                  onTap: () {},
                                  child: Transform.rotate(
                                    angle: -math.pi,
                                    child: const Icon(
                                      Icons.reply,
                                      size: 40,
                                      color: Colors.white,
                                    ),
                                  ),
                                ),
                                const SizedBox(height: 7),
                              ],
                            ),
                            CircleAnimation(
                              child:
                              buildMusicAlbum(data?.teacher?.avatar ?? ""),
                            ).onTap(() async {
                              if (data?.id != null) {
                                videoPlayerController.pause();
                                var dataBack = await goTo(
                                    screen: ROUTER_PROFILE,
                                    argument: {
                                      TEACHER_ID: data?.teacherId,
                                    });
                                if (dataBack[RESUME_VIDEO] == true) {
                                  videoPlayerController.play();
                                }
                              }
                            }),
                          ],
                        ),
                      ),
                    ],
                  ),
                ),
              ],
            ),
          ],
        );
      },
    );
  }
}
