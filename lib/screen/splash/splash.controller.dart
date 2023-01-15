import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:google_sign_in/google_sign_in.dart';
import 'package:learn_with_mee/@core/data/repo/model/credentials.model.dart';
import 'package:learn_with_mee/@core/data/repo/user.repo.dart';
import 'package:learn_with_mee/key.dart';

import '../../@core/router/pages.dart';
import '../../@share/utils/util.dart';

class SplashController extends GetxController with WidgetsBindingObserver {
  var contactText = ''.obs;
  late Rx<GoogleSignInAccount?> currentUser;

  @override
  void onInit() {
    getClientCredentials();
    super.onInit();
  }

  getClientCredentials() async {
    showLoading();
    var userRepo = Get.find<UserRepo>();
    var value = await userRepo.clientCredentials(
        credentials: Credentials(
            grantType: grantType,
            clientId: clientId,
            clientSecret: clientSecret));
    hideLoading();
  }
}
