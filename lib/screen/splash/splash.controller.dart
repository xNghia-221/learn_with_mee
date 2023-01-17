import 'package:flutter/material.dart';
import 'package:get/get.dart';

class SplashController extends GetxController with WidgetsBindingObserver {
  var counter = 0.obs;

  var login = "".obs;

  updateCounter() {
    counter.value++;
  }

  @override
  void didChangeAppLifecycleState(AppLifecycleState state) {
    // TODO: implement didChangeAppLifecycleState
    super.didChangeAppLifecycleState(state);
    if (state == AppLifecycleState.resumed) updateCounter();
  }

  @override
  void onInit() {
    WidgetsBinding.instance.addObserver(this);
    Get.log("onInit");
    once(counter, (_) => print("$_ was changed once (once)"));
    debounce(counter, (_) => print("debouce$_ (debounce)"),
        time: Duration(seconds: 1));
    ever(counter, (_) => print("$_ has been changed (ever)"));
    super.onInit();
  }

  // getData() async {
  //   goTo(screen: ROUTER_HOME, argument: login.value);
  // }

  @override
  void onReady() {
    super.onReady();
    Get.log("onReady");
    //getData();
  }

  @override
  void onClose() {
    Get.log("onClose");
    WidgetsBinding.instance.removeObserver(this);
    super.onClose();
  }
}
