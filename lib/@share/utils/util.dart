import 'package:flutter/material.dart';
import 'package:flutter_easyloading/flutter_easyloading.dart';
import 'package:get/get.dart';
import 'package:learn_with_mee/@share/style/colors.dart';

import '../constants/language.constant.dart';

getLocalize(String key, {List<String> args = const []}) => key.trArgs(args);

widthScreen({required int percent}) =>
    percent != null ? (Get.width * percent) / 100 : Get.width;

heightScreen({required int percent}) =>
    percent != null ? (Get.height * percent) / 100 : Get.height;

goTo({required String screen, dynamic argument}) =>
    Get.toNamed(screen, arguments: argument);

goToAndRemove({required String screen, dynamic argument}) =>
    Get.offNamed(screen, arguments: argument);

goToAndRemoveAll({required String screen, dynamic argument}) =>
    Get.offAllNamed(screen, arguments: argument);

goBack({dynamic argument}) => Get.back(result: argument);

getArgument() => Get.arguments;

openDialog(
        {required Widget dialog,
        bool dismiss = false,
        bool useSafeArea = true,
        Function(bool)? onDismiss}) =>
    Get.dialog(dialog, barrierDismissible: dismiss, useSafeArea: useSafeArea)
        .then((value) {
      if (onDismiss != null) onDismiss(true);
    });

showToast(String content) =>
    EasyLoading.showToast(getLocalize(content, args: []) ?? content);

showLoading({String? content}) => EasyLoading.show(
    status: content != null
        ? getLocalize(content, args: [])
        : getLocalize(loading, args: []));

hideLoading() => EasyLoading.dismiss();

showConfirmDialog(
        {required String message,
        bool isCancel = true,
        VoidCallback? actionConfirm,
        String? title,
        String? textConfirm}) =>
    Get.defaultDialog(
      barrierDismissible: false,
      confirmTextColor: AppColors.black,
      textConfirm: textConfirm ?? getLocalize(ok),
      textCancel: isCancel ? getLocalize(cancel) : null,
      title: title ?? '',
      content: Column(
        children: [
          title != null
              ? Container(
                  width: widthScreen(percent: 100),
                  child: lineVertical(3.0),
                )
              : Container(),
          SizedBox(height: title != null ? 15.0 : 0),
          Container(
              alignment: Alignment.center,
              height: heightScreen(percent: 10),
              width: widthScreen(percent: 70),
              child: Text(
                message,
                style: TextStyle(color: AppColors.primaryDarkColor),
              )),
        ],
      ),
      onCancel: !isCancel ? null : () => {},
      onConfirm: () {
        if (Get.isDialogOpen == true) {
          goBack();
        }
        actionConfirm != null ? actionConfirm() : goBack();
      },
      buttonColor: AppColors.white,
    );

// divider horizontal
Widget lineHorizontal(double width, [HexColor? color, double? height]) =>
    Container(
      color: color ?? AppColors.lightGrayBackground,
      width: width,
      height: height ?? double.infinity,
    );

// divider vertical
Widget lineVertical(double height, [HexColor? color]) => Container(
      color: color ?? AppColors.lightGrayBackground,
      width: widthScreen(percent: 100),
      height: height,
    );
