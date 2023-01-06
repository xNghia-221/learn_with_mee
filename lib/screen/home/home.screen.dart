import 'package:flutter/material.dart';
import 'package:get/get.dart';

import '../../@share/utils/util.dart';
import '../../@share/widget/scaffold.widget.dart';
import 'home.controller.dart';

class HomeScreen extends GetWidget<HomeController> {
  @override
  Widget build(BuildContext context) {
    return CustomScaffold(
      titleAppBar: "Home",
      body: Column(
        children: [
          Text(getArgument()),
          Obx(() => Text(controller.userName.value))
        ],
      ),
    );
  }
}
