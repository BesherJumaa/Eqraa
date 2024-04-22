import 'package:flutter/material.dart';
import 'package:get/get.dart';
import '../../../core/class/handlingdataview.dart';
import '../../../core/constant/color.dart';
import '../../../core/functions/valid_input.dart';
import '../../../widgets/auth/custom_appbar_auth.dart';
import '../../../widgets/auth/custom_button_auth.dart';
import '../../../widgets/auth/custom_password_textform.dart';
import '../../../widgets/auth/custom_text_body_auth.dart';
import '../../../widgets/auth/custom_text_form.dart';
import '../../../widgets/auth/custom_title_auth.dart';
import '../../../widgets/auth/logo_auth.dart';
import '../../../widgets/auth/no_account_auth.dart';
import '../controller/signupcontroller.dart';

class SignUp extends StatelessWidget {
  const SignUp({super.key});
  @override
  Widget build(BuildContext context) {
    // TODO: implement build
    Get.lazyPut(() => SignUpControllerImp());
    return Scaffold(
      backgroundColor: AppColor.white,
      // resizeToAvoidBottomInset: false,
      body: SingleChildScrollView(
        child: GetBuilder<SignUpControllerImp>(
          builder: (controller) => HandlingDataRequest(
            statusRequest: controller.statusRequest,
            widget: Form(
              key: controller.formState,
              child: Container(
                padding:
                    const EdgeInsets.symmetric(horizontal: 35, vertical: 15),
                child: Column(
                  children: [
                    const LogoAuth(),
                    CustomTextBodyAuth(body: "24".tr),
                    const SizedBox(
                      height: 10,
                    ),
                    AuthTextFormField(
                      validator: (val) {
                        return validInput(val!, 5, 50, "username");
                      },
                      mycontroller: controller.username,
                      hintText: "20".tr,
                      iconPrefix: Icons.person_outline,
                    ),
                    AuthTextFormField(
                        validator: (val) {
                          return validInput(val!, 5, 50, "phone");
                        },
                        keyboardtype: const TextInputType.numberWithOptions(
                            decimal: true),
                        mycontroller: controller.phone,
                        hintText: "21".tr,
                        iconPrefix: Icons.phone_outlined),
                    AuthTextFormField(
                      keyboardtype: TextInputType.emailAddress,
                      validator: (val) {
                        return validInput(val!, 5, 50, "email");
                      },
                      mycontroller: controller.email,
                      hintText: "18".tr,
                      iconPrefix: Icons.email_outlined,
                    ),
                    AuthPasswordTextFormField(
                      validator: (val) {
                        return validInput(val!, 5, 50, "password");
                      },
                      // secure: controller.secure.value,
                      // onIconPressed: controller.secures(controller.secure.value),
                      mycontroller: controller.password,

                      hintText: "19".tr,
                    ),
                    const SizedBox(
                      height: 10,
                    ),
                    CustomBottomAuth(
                      text: '17'.tr,
                      onPressed: () {
                        controller.signUp();
                      },
                    ),
                    const SizedBox(
                      height: 20,
                    ),
                    NoAccountAuth(
                      text: "25".tr,
                      buttonText: "26".tr,
                      onTap: () {
                        controller.toLogin();
                      },
                    ),
                  ],
                ),
              ),
            ),
          ),
        ),
      ),
    );
  }
}
