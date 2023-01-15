import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:learn_with_mee/@share/utils/util.dart';
import 'package:learn_with_mee/screen/login/login.screen.dart';
import 'package:learn_with_mee/screen/splash/splash.controller.dart';

class SplashScreen extends GetView<SplashController> {
  const SplashScreen({super.key});

  Widget _buildBody() {
    return Column(
      mainAxisAlignment: MainAxisAlignment.spaceAround,
      children: <Widget>[
        Obx(() => Text(controller.contactText.value)),
        ElevatedButton(
          onPressed: () {
            Get.bottomSheet(
                SizedBox(
                    height: heightScreen(percent: 90),
                    child: const LoginScreen()),
                isScrollControlled: true);
          },
          child: const Text('SIGN IN'),
        ),
      ],
    );
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(
          title: const Text('Google Sign In'),
        ),
        body: ConstrainedBox(
          constraints: const BoxConstraints.expand(),
          child: _buildBody(),
        ));
  }
}
