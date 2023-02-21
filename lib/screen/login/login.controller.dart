import 'package:flutter/material.dart';
import 'package:flutter_facebook_auth/flutter_facebook_auth.dart';
import 'package:get/get.dart';
import 'package:google_sign_in/google_sign_in.dart';
import 'package:learn_with_mee/@core/data/local/storage/data.storage.dart';
import 'package:learn_with_mee/@core/data/repo/model/LoginRequest.dart';
import 'package:learn_with_mee/@core/data/repo/model/credentials.model.dart';
import 'package:learn_with_mee/@core/data/repo/model/data_fb_model.dart';
import 'package:learn_with_mee/@core/data/repo/user.repo.dart';
import 'package:learn_with_mee/@core/router/pages.dart';
import 'package:learn_with_mee/key.dart';

import '../../@share/utils/util.dart';

class LoginController extends GetxController with WidgetsBindingObserver {
  var contactText = ''.obs;
  late Rx<GoogleSignInAccount?> currentUser;

  final GoogleSignIn _googleSignIn = GoogleSignIn(
    // Optional clientId
    scopes: <String>[
      'email',
    ],
  );

  @override
  void onInit() {
    getClientCredentials();
    super.onInit();
  }

  getClientCredentials() async {
    showLoading();
    var userRepo = Get.find<UserRepo>();
    var dataStorage = Get.find<DataStorage>();
    var value = await userRepo.clientCredentials(
        credentials: Credentials(
            grantType: grantType,
            clientId: clientId,
            clientSecret: clientSecret));
    if (value != null) {
      dataStorage.setCredentials(value);
    }
    hideLoading();
  }

  Future<void> handleSignInGoogle() async {
    try {
      var user = await _googleSignIn.signIn();
      if (user != null) {
        submitDataFromGoogle(user);
      }
    } catch (error) {
      hideLoading();
      print(error);
    }
  }

  Future<void> handleSignInFacebook() async {
    try {
      var userRepo = Get.find<UserRepo>();
      var dataStorage = Get.find<DataStorage>();
      FacebookAuth.instance
          .login(permissions: ["public_profile", "email"]).then((value) => {
                FacebookAuth.instance.getUserData().then((userInfo) async {
                  final accessToken = await FacebookAuth.instance.accessToken;
                  final dataFB = DataFBModel.fromJson(userInfo);
                  showLoading();
                  var value = await userRepo.login(
                      loginRequest: LoginRequest(
                          id: accessToken?.userId ?? "",
                          token: accessToken?.token,
                          avatar: dataFB.picture?.data?.url ?? "",
                          email: dataFB.email,
                          name: dataFB.name));
                  if (value != null) {
                    dataStorage.setToken(value);
                    goToAndRemoveAll(screen: ROUTER_HOME);
                  }
                })
              });
      hideLoading();
    } catch (error) {
      print(error);
    }
  }

  submitDataFromGoogle(GoogleSignInAccount gsAccount) async {
    showLoading();
    var userRepo = Get.find<UserRepo>();
    var dataStorage = Get.find<DataStorage>();
    var value = await userRepo.login(
        loginRequest: LoginRequest(
            id: gsAccount.id,
            token: gsAccount.serverAuthCode,
            email: gsAccount.email,
            avatar: gsAccount.photoUrl,
            name: gsAccount.displayName));
    if (value != null) {
      dataStorage.setToken(value);
      if(Get.isBottomSheetOpen == true) {
        Get.back();
      }
      goToAndRemoveAll(screen: ROUTER_HOME);
    }
    hideLoading();
  }

  Future<void> handleSignOut() => _googleSignIn.disconnect();
}
