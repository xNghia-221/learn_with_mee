import 'package:cached_network_image/cached_network_image.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:get/get.dart';
import 'package:get/get_state_manager/get_state_manager.dart';
import 'package:learn_with_mee/@core/data/repo/model/data_video_detail_model.dart';
import 'package:learn_with_mee/@core/router/pages.dart';
import 'package:learn_with_mee/@share/constants/value.constant.dart';
import 'package:learn_with_mee/@share/style/colors.dart';
import 'package:learn_with_mee/@share/utils/util.dart';
import 'package:learn_with_mee/screen/profile/profile.controller.dart';
import 'package:velocity_x/velocity_x.dart';

class ProfileScreen extends GetWidget<ProfileController> {
  const ProfileScreen({
    Key? key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Obx(
      () => WillPopScope(
        onWillPop: () async {
          goBack(argument: {
            RESUME_VIDEO: true,
          });
          return false;
        },
        child: SafeArea(
          child: SingleChildScrollView(
            child: Column(
              children: [
                SizedBox(
                  child: Column(
                    children: [
                      Stack(
                        children: [
                          const Icon(Icons.arrow_back_ios).p20().onTap(() {
                            goBack(argument: {
                              RESUME_VIDEO: true,
                            });
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
                              errorWidget: (context, url, error) => const Icon(
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
                                      controller.user.value?.following == 1
                                          ? 0
                                          : 1);
                            },
                            child: Text(
                              controller.user.value?.following == 1
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
                          itemCount: controller.videos.value?.data?.length ?? 0,
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
