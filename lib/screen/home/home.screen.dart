import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:get/get.dart';
import 'package:get_storage/get_storage.dart';
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
        return PageView.builder(
          itemCount: controller.dataVideo?.data?.length ?? 0,
          controller: controller.pageController,
          scrollDirection: Axis.vertical,
          itemBuilder: (context, index) {
            final data = controller.dataVideo?.data?[index];
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
                                mainAxisAlignment:
                                    MainAxisAlignment.spaceEvenly,
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
                                      Text(
                                        data?.description ?? "",
                                        style: const TextStyle(
                                          fontSize: 15,
                                          color: Colors.white,
                                          fontWeight: FontWeight.bold,
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
                                    Icon(
                                      Icons.favorite,
                                      size: 40,
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
                                    const SizedBox(height: 7),
                                    Text(
                                      "2",
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
                                      child: const Icon(
                                        Icons.reply,
                                        size: 40,
                                        color: Colors.white,
                                      ),
                                    ),
                                    const SizedBox(height: 7),
                                    Text(
                                      "2",
                                      style: const TextStyle(
                                        fontSize: 20,
                                        color: Colors.white,
                                      ),
                                    )
                                  ],
                                ),
                                CircleAnimation(
                                  child: buildMusicAlbum(
                                      data?.teacher?.avatar ?? ""),
                                ).onTap(() {
                                  if (data?.id != null) {
                                    goTo(
                                        screen: ROUTER_PROFILE,
                                        argument: {
                                          TEACHER_ID: data?.teacherId,
                                        });
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
      }),
    );
  }

  buildMusicAlbum(String profilePhoto) {
    return SizedBox(
      width: 60,
      height: 60,
      child: Column(
        children: [
          Container(
              padding: EdgeInsets.all(11),
              height: 50,
              width: 50,
              decoration: BoxDecoration(
                  gradient: const LinearGradient(
                    colors: [
                      Colors.grey,
                      Colors.white,
                    ],
                  ),
                  borderRadius: BorderRadius.circular(25)),
              child: ClipRRect(
                borderRadius: BorderRadius.circular(25),
                child: Image(
                  image: NetworkImage(profilePhoto),
                  fit: BoxFit.cover,
                ),
              ))
        ],
      ),
    );
  }
}
