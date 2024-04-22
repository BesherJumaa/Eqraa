// ignore_for_file: avoid_print, unused_local_variable

import 'package:cool_alert/cool_alert.dart';
import 'package:firebase_messaging/firebase_messaging.dart';

// import 'package:firebase_messaging/firebase_messaging.dart';

import 'package:flutter/material.dart';
import 'package:get/get.dart';

import '../../../core/class/status_request.dart';
import '../../../core/constant/color.dart';
import '../../../routes.dart';
import '../../../core/functions/handling_data_controller.dart';
import '../../../core/services/services.dart';
import '../data/datasource/login_data.dart';
import '../data/model/user_model.dart';

abstract class LoginController extends GetxController {
  login();
  toSignUp();
  toForgotPassword();
  logOut();
}

class LoginControllerImp extends LoginController {
  LoginData loginData = LoginData(Get.find());

  GlobalKey<FormState> formstate = GlobalKey<FormState>();

  late TextEditingController email;
  late TextEditingController password;
  late UserModel userModel = UserModel();
  RxBool secure = true.obs;

  StatusRequest statusRequest = StatusRequest.none;

  MyServices myServices = Get.find();
  @override
  void onInit() {
    userModel = UserModel();
    // FirebaseMessaging.instance.getToken().then((value) {
    //   print("Token is : ");
    //   print(value);
    //   String? token = value;
    //   update();
    // });

    email = TextEditingController();
    password = TextEditingController();
    super.onInit();
  }

  showPassword() {
    secure = secure == true.obs ? false.obs : true.obs;
    update();
  }

  @override
  login() async {
    if (formstate.currentState!.validate()) {
      statusRequest = StatusRequest.loading;
      update();
      var response = await loginData.postdata(email.text, password.text);
      print("=============================== Controller $response ");
      statusRequest = handlingData(response);
      if (StatusRequest.success == statusRequest) {
        if (response['status'] == "success") {
          userModel = UserModel.fromJson(response['data']);
          if (userModel.usersApprove == "1") {
            // data.addAll(response['data']);
            myServices.sharedPreferences.setString("id", userModel.usersId!);
            myServices.sharedPreferences
                .setString("username", userModel.email!);
            myServices.sharedPreferences
                .setString("email", userModel.usersName!);
            myServices.sharedPreferences
                .setString("phone", userModel.usersPhone!);
            String? userid = myServices.sharedPreferences.getString("id");
            myServices.sharedPreferences.setString("step", "2");

            ///TODO: FireBase Subscribe to topic
            // FirebaseMessaging.instance.subscribeToTopic("users");
            // FirebaseMessaging.instance.subscribeToTopic("users$userid");

            Get.snackbar(
                "Welcome ${myServices.sharedPreferences.getString("username")} !",
                "57".tr,
                icon: const Icon(
                  Icons.check_box,
                  color: AppColor.green,
                ),
                colorText: AppColor.white,
                backgroundColor: AppColor.primaryColor,
                isDismissible: true);
            Get.offNamed(AppRoutes.homePage);
          } else {
            statusRequest = StatusRequest.success;
            //verify ..
          }
        } else {
          CoolAlert.show(
            context: Get.overlayContext!,
            type: CoolAlertType.error,
            backgroundColor: AppColor.primaryColor,
            confirmBtnColor: AppColor.primaryColor,
            text: "Email Or Password Not Correct",
          );
          // Get.defaultDialog(
          //     title: "ُWarning", middleText: "Email Or Password Not Correct");
          statusRequest = StatusRequest.failure;
        }
      }
      update();
    } else {}
  }

  @override
  void dispose() {
    email.dispose();
    password.dispose();
    super.dispose();
  }

  @override
  toForgotPassword() {
    Get.toNamed(AppRoutes.forgotPassword);
  }

  @override
  toSignUp() {
    Get.offNamed(AppRoutes.signUp);
  }

  @override
  logOut() {
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
        //TODO: LogOut Unsubscribe
        // FirebaseMessaging.instance.unsubscribeFromTopic("users");
        // FirebaseMessaging.instance.unsubscribeFromTopic("users$userid");
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
}
