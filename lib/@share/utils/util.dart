import 'package:flutter/material.dart';
import 'package:flutter_easyloading/flutter_easyloading.dart';
import 'package:get/get.dart';

import '../constants/language.constant.dart';

getLocalize(String key, {required List<String> args}) => key.trArgs(args);

widthScreen({required int percent}) =>
    percent != null ? (Get.width * percent) / 100 : Get.width;

heightScreen({required int percent}) =>
    percent != null ? (Get.height * percent) / 100 : Get.height;

goTo({required String screen, dynamic argument}) =>
    Get.toNamed(screen, arguments: argument);

goToAndRemoveAll({required String screen, dynamic argument}) =>
    Get.offAllNamed(screen, arguments: argument);

goBack({dynamic argument}) => Get.back(result: argument);

getArgument() => Get.arguments;

openDialog({required Widget dialog, bool dismiss = false}) =>
    Get.dialog(dialog, barrierDismissible: dismiss);

showToast(String content) =>
    EasyLoading.showToast(getLocalize(content, args: []) ?? content);

showLoading({String? content}) => EasyLoading.show(
    status: content != null
        ? getLocalize(content, args: [])
        : getLocalize(loading, args: []));

hideLoading() => EasyLoading.dismiss();
