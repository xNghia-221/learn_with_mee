import 'package:get/get.dart';
import 'package:learn_with_mee/@core/data/api/video_list_api.dart';
import 'package:learn_with_mee/@core/data/repo/video_repo.dart';

import 'home.controller.dart';

class HomeBinding extends Bindings {
  @override
  void dependencies() {
    Get.put(HomeController());
    Get.lazyPut(() => VideoListApi());
    Get.lazyPut(() => VideoRepo(Get.find()));
  }
}
