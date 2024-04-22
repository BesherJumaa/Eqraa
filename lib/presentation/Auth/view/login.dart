// ignore_for_file: avoid_print, deprecated_member_use

import 'package:eqraa/core/class/handlingdataview.dart';
import 'package:eqraa/core/class/status_request.dart';
import 'package:eqraa/core/constant/color.dart';
import 'package:eqraa/core/functions/alert_exit_app.dart';
import 'package:eqraa/core/functions/valid_input.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';

import '../../../widgets/auth/custom_button_auth.dart';
import '../../../widgets/auth/custom_forgot_password.dart';
import '../../../widgets/auth/custom_password_textform.dart';
import '../../../widgets/auth/custom_text_body_auth.dart';
import '../../../widgets/auth/custom_text_form.dart';
import '../../../widgets/auth/custom_title_auth.dart';
import '../../../widgets/auth/logo_auth.dart';
import '../../../widgets/auth/no_account_auth.dart';
import '../controller/login_controller.dart';

class Login extends StatelessWidget {
  const Login({super.key});

  @override
  Widget build(BuildContext context) {
    Get.lazyPut(() => LoginControllerImp());
    return Scaffold(
      resizeToAvoidBottomInset: true,
      backgroundColor: AppColor.white,
      body: GetBuilder<LoginControllerImp>(
        builder: (controller) => HandlingDataRequest(
          statusRequest: controller.statusRequest,
          onOffline: () {
            controller.statusRequest = StatusRequest.none;
            controller.onInit();
          },
          widget: WillPopScope(
            onWillPop: alertExitApp,
            child: Form(
              key: controller.formstate,
              child: Container(
                padding:
                    const EdgeInsets.symmetric(horizontal: 35, vertical: 15),
                child: SingleChildScrollView(
                  child: Column(
                    children: [
                      const LogoAuth(),
                      CustomTitleAuth(title: "26".tr),

                      CustomTextBodyAuth(body: "10".tr),
                      const SizedBox(
                        height: 20,
                      ),
                      //Enter Your Email
                      AuthTextFormField(
                        keyboardtype: TextInputType.text,
                        mycontroller: controller.email,
                        hintText: "18".tr,
                        iconPrefix: Icons.email,
                        validator: (String? val) {
                          print(val);
                          return validInput(val!, 5, 50, "email");
                        },
                      ),
                      //Enter Password
                      AuthPasswordTextFormField(
                        validator: (val) {
                          print(val);
                          return validInput(val!, 5, 50, "password");
                        },
                        // secure: controller.secure.value,
                        // onIconPressed: controller.secures(controller.secure.value),
                        mycontroller: controller.password,
                        hintText: "lbl10".tr,
                      ),

                      const SizedBox(
                        height: 10,
                      ),
                      CustomForgotPassword(onTap: () {
                        controller.toForgotPassword();
                      }),
                      CustomBottomAuth(
                        text: '15'.tr,
                        onPressed: () {
                          controller.login();
                        },
                      ),
                      const SizedBox(
                        height: 20,
                      ),
                      NoAccountAuth(
                          text: "16".tr,
                          buttonText: "17".tr,
                          onTap: () {
                            controller.toSignUp();
                          }),
                    ],
                  ),
                ),
              ),
            ),
          ),
        ),
      ),
    );
  }
}
