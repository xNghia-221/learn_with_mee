import 'package:get/get.dart';
import 'package:learn_with_mee/@core/data/api/video_list_api.dart';
import 'package:learn_with_mee/@core/data/repo/video_repo.dart';
import 'package:learn_with_mee/screen/home/video_item_controller.dart';
import 'package:learn_with_mee/screen/video_related_screen/video_related_controller.dart';

class VideoRelatedBinding extends Bindings {
  @override
  void dependencies() {
    Get.put(VideoRelatedController());
    Get.lazyPut(() => VideoListApi());
    Get.create(() => VideoItemController());
    Get.lazyPut(() => VideoRepo(Get.find()));
  }
}
