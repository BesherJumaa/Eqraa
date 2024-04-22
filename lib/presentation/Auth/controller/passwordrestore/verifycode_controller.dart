import 'package:cool_alert/cool_alert.dart';

import 'package:flutter/material.dart';
import 'package:get/get.dart';

import '../../../../core/class/status_request.dart';
import '../../../../core/constant/color.dart';
import '../../../../core/functions/handling_data_controller.dart';
import '../../../../routes.dart';
import '../../data/datasource/forgetpassword/verifycodepassword_data.dart';

abstract class VerifyCodeController extends GetxController {
  checkCode();
  goToResetPassword(String verifyCode);
  resend();
}

class VerifyCodeControllerImp extends VerifyCodeController {
  VerifyCodeData verifyCodeData = VerifyCodeData(Get.find());
  StatusRequest statusRequest = StatusRequest.none;
  String? email;
  GlobalKey<FormState> formstate = GlobalKey<FormState>();
  @override
  checkCode() {}

  @override
  goToResetPassword(String verifyCode) async {
    statusRequest = StatusRequest.loading;
    update();
    var response = await verifyCodeData.postdata(email!, verifyCode);
    statusRequest = handlingData(response);
    if (StatusRequest.success == statusRequest) {
      if (response['status'] == "success") {
        // Get.offNamed(AppRoutes.resetPassword, arguments: {"email": email});
      } else {
        CoolAlert.show(
            context: Get.overlayContext!,
            type: CoolAlertType.warning,
            text: "Verify Code Not Correct",
            confirmBtnText: "Try Again",
            confirmBtnColor: AppColor.primaryColor,
            onConfirmBtnTap: () {
              statusRequest = StatusRequest.failure;
              // update();
            });

        statusRequest = StatusRequest.failure;
      }
    }
    update();
  }

  @override
  resend() {
    verifyCodeData.resendData(email!);
    Get.rawSnackbar(
        title: "32".tr,
        icon: const Icon(
          Icons.refresh,
          // color: AppColor.primaryColor,
        ),
        messageText: Text(
          "52".tr,
          style: const TextStyle(color: AppColor.white),
        ),
        backgroundColor: AppColor.thirdColor,
        isDismissible: true);
  }

  @override
  void onInit() {
    email = Get.arguments['email'];
    super.onInit();
  }
}
