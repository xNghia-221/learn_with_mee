import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:learn_with_mee/@core/data/local/storage/data.storage.dart';
import 'package:learn_with_mee/@core/data/repo/model/credentials.model.dart';
import 'package:learn_with_mee/@core/data/repo/user.repo.dart';
import 'package:learn_with_mee/@share/utils/util.dart';
import 'package:learn_with_mee/key.dart';
import 'package:learn_with_mee/screen/login/login.screen.dart';
import '../repo/response/base.response.dart';

const unAuthorizedError = 401;
const UnAuthenticated = "Unauthenticated.";
const InvalidUserToken = "InvalidUserToken";

class BaseRepo {
  errorApi({required BaseResponse? response}) async {
    switch (response?.code) {
      case unAuthorizedError:
        {
          if (response?.message == UnAuthenticated) {
            var userRepo = Get.find<UserRepo>();
            var dataStorage = Get.find<DataStorage>();
            var value = await userRepo.clientCredentials(
                credentials: Credentials(
                    grantType: grantType,
                    clientId: clientId,
                    clientSecret: clientSecret));
            if (value != null) {
              dataStorage.setCredentials(value);
              goToAndRemoveAll(screen: Get.currentRoute);
            }
          } else if (response?.error == InvalidUserToken) {
            Get.bottomSheet(
                SizedBox(
                    height: heightScreen(percent: 90),
                    child: const LoginScreen()),
                isScrollControlled: true);
          }
        }
    }
    return null;
  }
}
