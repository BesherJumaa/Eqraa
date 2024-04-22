import 'dart:io';
import 'package:cool_alert/cool_alert.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';

import '../constant/color.dart';

Future<bool> alertExitApp() {
  // Get.defaultDialog(title: "60".tr, middleText: "65".tr, actions: [
  //   MaterialButton(
  //     onPressed: () {
  //       exit(0);
  //     },
  //     color: AppColor.primaryColor,
  //     child: Text(
  //       "61".tr,
  //       style: const TextStyle(color: AppColor.white),
  //     ),
  //   ),
  //   MaterialButton(
  //     onPressed: () {
  //       Get.back();
  //     },
  //     color: AppColor.primaryColor,
  //     child: Text(
  //       "62".tr,
  //       style: const TextStyle(color: AppColor.white),
  //     ),
  //   ),
  // ]);

  CoolAlert.show(
      context: Get.context!,
      cancelBtnText: "62".tr,
      confirmBtnText: "61".tr,
      showCancelBtn: true,
      backgroundColor: AppColor.primaryColor,
      animType: CoolAlertAnimType.slideInUp,
      borderRadius: BorderSide.strokeAlignCenter,
      type: CoolAlertType.warning,
      loopAnimation: true,
      confirmBtnColor: AppColor.primaryColor,
      title: "60".tr,
      text: "65".tr,
      onConfirmBtnTap: () async {
        exit(0);
      });
  return Future.value(true);
}
