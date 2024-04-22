// ignore_for_file: avoid_print

import 'package:cool_alert/cool_alert.dart';

import 'package:flutter/cupertino.dart';
import 'package:get/get.dart';

import '../../../../core/class/status_request.dart';
import '../../../../core/constant/color.dart';
import '../../../../core/functions/handling_data_controller.dart';
import '../../../../routes.dart';
import '../../data/datasource/forgetpassword/resetpassword_data.dart';

abstract class ResetPasswordController extends GetxController {
  checkPassword();
  goToSuccessResetPassword();
}

class ResetPasswordControllerImp extends ResetPasswordController {
  GlobalKey<FormState> formState = GlobalKey<FormState>();
  late TextEditingController password;
  String? email;
  late TextEditingController rePassword;
  StatusRequest statusRequest = StatusRequest.none;
  ResetPasswordData resetPasswordData = ResetPasswordData(Get.find());
  @override
  checkPassword() {}

  @override
  goToSuccessResetPassword() async {
    var formdata = formState.currentState;
    if (password.text != rePassword.text) {
      Get.defaultDialog(title: "Warning", middleText: "Password Doesn't match");
      return statusRequest = StatusRequest.failure;
    }
    if (formdata!.validate()) {
      statusRequest = StatusRequest.loading;
      update();
      var response = await resetPasswordData.postdata(email!, password.text);
      print("=============================== Controller $response ");
      statusRequest = handlingData(response);
      if (StatusRequest.success == statusRequest) {
        print(statusRequest);
        if (response['status'] == "success") {
          print(response['status']);
          // Get.offAndToNamed(AppRoutes.successResetPassword);
        } else {
          CoolAlert.show(
              context: Get.overlayContext!,
              type: CoolAlertType.warning,
              text: "Try Again",
              confirmBtnColor: AppColor.primaryColor,
              onConfirmBtnTap: () {
                statusRequest = StatusRequest.failure;
                update();
              });
          return statusRequest = StatusRequest.failure;
        }
      }
      update();
    } else {
      print("Not Valid");
    }
  }

  @override
  void onInit() {
    // TODO: implement onInit
    password = TextEditingController();
    rePassword = TextEditingController();
    email = Get.arguments['email'];
    super.onInit();
  }

  @override
  void dispose() {
    // TODO: implement dispose
    password.dispose();
    rePassword.dispose();

    super.dispose();
  }
}
