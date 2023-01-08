import 'package:cached_network_image/cached_network_image.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:get/get_state_manager/get_state_manager.dart';
import 'package:learn_with_mee/@core/data/repo/model/data_video_detail_model.dart';
import 'package:learn_with_mee/@share/style/colors.dart';
import 'package:learn_with_mee/@share/utils/util.dart';
import 'package:learn_with_mee/@share/widget/scaffold.widget.dart';
import 'package:learn_with_mee/screen/profile/profile.controller.dart';
import 'package:velocity_x/velocity_x.dart';

class ProfileScreen extends GetWidget<ProfileController> {
  const ProfileScreen({
    Key? key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Obx(
      () => SafeArea(
        child: SingleChildScrollView(
          child: Column(
            children: [
              SizedBox(
                child: Column(
                  children: [
                    Row(
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      children: [
                        const Icon(Icons.arrow_back_ios).p20().onTap(() {
                          goBack();
                        }),
                        Text(
                          controller.user.value?.name ?? "",
                          style: const TextStyle(
                            fontSize: 20,
                            fontWeight: FontWeight.bold,
                          ),
                        ).p20(),
                        const Icon(Icons.more_horiz).p20().onTap(() {}),
                      ],
                    ),
                    Row(
                      mainAxisAlignment: MainAxisAlignment.center,
                      children: [
                        ClipOval(
                          child: CachedNetworkImage(
                            fit: BoxFit.cover,
                            imageUrl: controller.user.value?.avatar ?? "",
                            height: 100,
                            width: 100,
                            placeholder: (context, url) =>
                                const CircularProgressIndicator(),
                            errorWidget: (context, url, error) => const Icon(
                              Icons.error,
                            ),
                          ),
                        )
                      ],
                    ),
                    const SizedBox(
                      height: 15,
                    ),
                    Row(
                      mainAxisAlignment: MainAxisAlignment.center,
                      children: [
                        Column(
                          children: [
                            Text(
                              controller.user.value?.following?.toString() ??
                                  0.toString(),
                              style: const TextStyle(
                                fontSize: 20,
                                fontWeight: FontWeight.bold,
                              ),
                            ),
                            const SizedBox(height: 5),
                            const Text(
                              'Following',
                              style: TextStyle(
                                color: Colors.grey,
                                fontSize: 14,
                              ),
                            ),
                          ],
                        ),
                        Container(
                          color: AppColors.grayLight,
                          width: 1,
                          height: 15,
                          margin: const EdgeInsets.symmetric(
                            horizontal: 15,
                          ),
                        ),
                        Column(
                          children: [
                            Text(
                              controller.user.value?.numberOfFollowers
                                      ?.toString() ??
                                  0.toString(),
                              style: const TextStyle(
                                fontSize: 20,
                                fontWeight: FontWeight.bold,
                              ),
                            ),
                            const SizedBox(height: 5),
                            const Text(
                              'Follower',
                              style: TextStyle(
                                color: Colors.grey,
                                fontSize: 14,
                              ),
                            ),
                          ],
                        ),
                        Container(
                          color: AppColors.grayLight,
                          width: 1,
                          height: 15,
                          margin: const EdgeInsets.symmetric(
                            horizontal: 15,
                          ),
                        ),
                        Column(
                          children: [
                            Text(
                              controller.user.value?.numberOfLikes
                                      ?.toString() ??
                                  0.toString(),
                              style: const TextStyle(
                                fontSize: 20,
                                fontWeight: FontWeight.bold,
                              ),
                            ),
                            const SizedBox(height: 5),
                            const Text(
                              'Likes',
                              style: TextStyle(
                                color: Colors.grey,
                                fontSize: 14,
                              ),
                            ),
                          ],
                        ),
                      ],
                    ),
                    const SizedBox(
                      height: 15,
                    ),
                    Container(
                      width: 140,
                      height: 47,
                      decoration: BoxDecoration(
                        color: AppColors.primaryColor,
                        border: Border.all(
                          color: Colors.black12,
                        ),
                      ),
                      child: Center(
                        child: InkWell(
                          onTap: () {
                            /*if (widget.uid == authController.user.uid) {
                                authController.signOut();
                              } else {
                                controller.followUser();
                              }*/
                          },
                          child: const Text(
                            /*widget.uid == authController.user.uid
                                  ? 'Sửa Hồ Sơ'
                                  : controller.user['isFollowing']
                                  ? 'Unfollow'
                                  : 'Follow',*/
                            "Follow",
                            style: TextStyle(
                              fontSize: 15,
                              fontWeight: FontWeight.bold,
                            ),
                          ),
                        ),
                      ),
                    ),
                    Text(controller.user.value?.introduction ?? "",
                        textAlign: TextAlign.center,
                        style: const TextStyle(
                          fontSize: 14,
                        )).pOnly(top: 15, bottom: 25),
                    // video list
                    Obx(
                      () => GridView.builder(
                        shrinkWrap: true,
                        physics: const NeverScrollableScrollPhysics(),
                        itemCount: controller.videos.value?.data?.length ?? 0,
                        gridDelegate:
                            const SliverGridDelegateWithFixedCrossAxisCount(
                          crossAxisCount: 3,
                          childAspectRatio: 1,
                          crossAxisSpacing: 5,
                        ),
                        itemBuilder: (context, index) {
                          var video = controller.videos.value?.data?[index];
                          return _itemVideo(video: video);
                        },
                      ),
                    )
                  ],
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }

  Widget _itemVideo({required DataVideoDetail? video}) {
    return ZStack([
      Positioned.fill(
        child: CachedNetworkImage(
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
    ]);
  }
}
