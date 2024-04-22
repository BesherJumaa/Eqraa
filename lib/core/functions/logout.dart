import 'package:cool_alert/cool_alert.dart';
import 'package:firebase_messaging/firebase_messaging.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';
import '../../routes.dart';
import '../constant/color.dart';
import '../../routes.dart';
import '../services/services.dart';

@override
logOut() {
  MyServices myServices = Get.find();
  CoolAlert.show(
    context: Get.context!,
    cancelBtnText: "62".tr,
    confirmBtnText: "61".tr,
    showCancelBtn: true,
    backgroundColor: AppColor.primaryColor,
    animType: CoolAlertAnimType.rotate,
    borderRadius: BorderSide.strokeAlignCenter,
    type: CoolAlertType.warning,
    loopAnimation: true,
    confirmBtnColor: AppColor.primaryColor,
    title: "63".tr,
    // text: "64".tr,
    onConfirmBtnTap: () async {
      String? userid = myServices.sharedPreferences.getString("id");
      FirebaseMessaging.instance.unsubscribeFromTopic("admin");
      FirebaseMessaging.instance.unsubscribeFromTopic("admin$userid");
      myServices.sharedPreferences.setString("step", "1");
      if (myServices.sharedPreferences.getString("step") == "1") {
        Get.rawSnackbar(
          title: "32".tr,
          backgroundColor: AppColor.primaryColor,
          icon: const Icon(
            Icons.logout_outlined,
            color: AppColor.white,
          ),
          messageText: Text(
            "55".tr,
            style: const TextStyle(color: AppColor.white),
          ),
        );
        myServices.sharedPreferences.clear();
        await Future.delayed(const Duration(milliseconds: 500));
        Get.toNamed(AppRoutes.login);
        // update();
      }
    },
  );
}

logOutDefault() {
  MyServices myServices = Get.find();
  CoolAlert.show(
      context: Get.context!,
      cancelBtnText: "62".tr,
      confirmBtnText: "61".tr,
      showCancelBtn: true,
      backgroundColor: AppColor.primaryColor,
      animType: CoolAlertAnimType.rotate,
      borderRadius: BorderSide.strokeAlignCenter,
      type: CoolAlertType.warning,
      loopAnimation: true,
      confirmBtnColor: AppColor.primaryColor,
      title: "63".tr,
      text: "64".tr,
      onConfirmBtnTap: () async {
        myServices.sharedPreferences.clear();

        Get.rawSnackbar(
          title: "32".tr,
          backgroundColor: AppColor.secondColor,
          icon: const Icon(
            Icons.logout_outlined,
            color: AppColor.white,
          ),
          messageText: Text(
            "55".tr,
            style: const TextStyle(color: AppColor.white),
          ),
        );
        await Future.delayed(const Duration(milliseconds: 500));
        Get.toNamed(AppRoutes.language);
        // update();
      });
}
