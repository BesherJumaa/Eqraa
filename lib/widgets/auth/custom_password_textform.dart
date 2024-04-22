import 'package:flutter/material.dart';
import 'package:get/get.dart';

import '../../../core/constant/color.dart';
import '../../presentation/Auth/controller/login_controller.dart';

class AuthPasswordTextFormField extends StatelessWidget {
  final String? hintText;
  final TextEditingController? mycontroller;
  final String? Function(String?)? validator;
  final void Function()? onIconPressed;
  const AuthPasswordTextFormField({
    super.key,
    required this.hintText,
    this.mycontroller,
    this.onIconPressed,
    required this.validator,
  });

  @override
  Widget build(BuildContext context) {
    LoginControllerImp controller = LoginControllerImp();
    return Container(
      margin: const EdgeInsets.only(top: 15),
      child: Obx(
        () => TextFormField(
          textDirection: TextDirection.ltr,
          controller: mycontroller,
          autovalidateMode: AutovalidateMode.onUserInteraction,
          validator: validator,
          enableSuggestions: true,
          obscureText: controller.secure.value,
          showCursor: true,
          cursorColor: AppColor.primaryColor,
          style: const TextStyle(
            color: AppColor.primaryColor, // Change typing color here
          ),
          decoration: InputDecoration(
              floatingLabelBehavior: FloatingLabelBehavior.always,
              contentPadding:
                  const EdgeInsets.symmetric(vertical: 10, horizontal: 40),
              // label: Container(
              //     margin: const EdgeInsets.symmetric(horizontal: 7),
              //     child: Text(textBox!)),
              hintStyle:
                  const TextStyle(fontSize: 16, fontWeight: FontWeight.w400),
              hintText: hintText,
              prefixIcon: const Icon(
                Icons.lock,
                color: AppColor.gray,
              ),
              suffixIcon: IconButton(
                icon: Icon(
                  controller.secure.value
                      ? Icons.visibility
                      : Icons.visibility_off,
                  // Icons.lock_outline,
                  color: AppColor.gray,
                ),
                onPressed: () {
                  controller.secure.value = !controller.secure.value;
                },
              ),
              enabledBorder: OutlineInputBorder(
                borderSide: const BorderSide(
                  color: AppColor.gray,
                ),
                borderRadius: BorderRadius.circular(30),
              ),
              border: OutlineInputBorder(
                borderSide: const BorderSide(
                  color: AppColor.gray,
                ),
                borderRadius: BorderRadius.circular(30),
              ),
              filled: true,
              fillColor: AppColor.fourthColor),
        ),
      ),
    );
  }
}
