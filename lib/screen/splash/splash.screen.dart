import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:learn_with_mee/screen/splash/splash.controller.dart';

import '../../@core/router/pages.dart';
import '../../@share/constants/language.constant.dart';
import '../../@share/utils/util.dart';
import '../../@share/widget/scaffold.widget.dart';

class SplashScreen extends GetView<SplashController> {
  @override
  Widget build(BuildContext context) {
    return CustomScaffold(
        titleAppBar: "Demo Get-X",
        body: GestureDetector(
            onTap: () {
              controller.updateCounter();
              if (controller.counter % 2 == 0) {
                Get.updateLocale(Locale('ja', 'JP'));
              } else {
                Get.updateLocale(Locale('en', 'US'));
              }
              goTo(screen: ROUTER_HOME, argument: controller.login.value);
            },
            child: Column(
              children: [
                Text(getLocalize(helloLang, args: [])),
                Obx(() => Text('${controller.counter}')),
                Obx(() => Text('${controller.login}')),
              ],
            )));
  }
}
