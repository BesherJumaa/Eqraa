// ignore_for_file: avoid_print

import 'package:cool_alert/cool_alert.dart';

import 'package:flutter/cupertino.dart';
import 'package:get/get.dart';

import '../../../../core/class/status_request.dart';
import '../../../../core/constant/color.dart';
import '../../../../core/functions/handling_data_controller.dart';
import '../../../../routes.dart';
import '../../data/datasource/forgetpassword/checkemail_data.dart';

abstract class ForgotPasswordController extends GetxController {
  goToVerifyCode();
}

class ForgotPasswordControllerImp extends ForgotPasswordController {
  GlobalKey<FormState> formState = GlobalKey<FormState>();
  late TextEditingController email;
  StatusRequest statusRequest = StatusRequest.none;
  CheckEmailData checkEmailData = CheckEmailData(Get.find());

  @override
  goToVerifyCode() async {
    var formdata = formState.currentState;
    if (formdata!.validate()) {
      statusRequest = StatusRequest.loading;
      update();
      var response = await checkEmailData.postdata(
        email.text,
      );
      statusRequest = handlingData(response);
      if (StatusRequest.success == statusRequest) {
        if (response['status'] == "success") {
          print(response['status']);
          // Get.offAndToNamed(AppRoutes.verifyCode,
          //     arguments: {"email": email.text});
        } else {
          update();
          // Get.defaultDialog(title: "Warning", middleText: "Email not found");
          CoolAlert.show(
              context: Get.overlayContext!,
              type: CoolAlertType.warning,
              text: "Email not found",
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
    // TODO: implement toSignUp
    throw UnimplementedError();
  }

  @override
  void onInit() {
    // TODO: implement onInit
    email = TextEditingController();

    super.onInit();
  }

  @override
  void dispose() {
    // TODO: implement dispose
    email.dispose();

    super.dispose();
  }
}
