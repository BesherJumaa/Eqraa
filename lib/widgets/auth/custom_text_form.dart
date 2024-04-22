import 'package:flutter/material.dart';

import '../../../core/constant/color.dart';

class AuthTextFormField extends StatelessWidget {
  final String? hintText;
  final IconData? iconPrefix;
  final IconData? iconSuffix;
  final TextEditingController? mycontroller;
  final String? Function(String?)? validator;
  final TextInputType? keyboardtype;
  const AuthTextFormField({
    super.key,
    this.hintText,
    this.iconSuffix,
    this.mycontroller,
    this.keyboardtype,
    this.validator,
    this.iconPrefix,
  });

  @override
  Widget build(BuildContext context) {
    return Container(
      margin: const EdgeInsets.only(top: 15),
      child: TextFormField(
        cursorColor: AppColor.primaryColor,
        textDirection: TextDirection.ltr,
        keyboardType: keyboardtype,
        controller: mycontroller,
        autovalidateMode: AutovalidateMode.onUserInteraction,
        validator: validator,
        style: TextStyle(
          color: AppColor.primaryColor, // Change typing color here
        ),
        decoration: InputDecoration(
          floatingLabelBehavior: FloatingLabelBehavior.always,
          contentPadding:
              const EdgeInsets.symmetric(vertical: 10, horizontal: 40),
          // label: Container(
          //     // color: AppColor.primaryColor,
          //     margin: const EdgeInsets.symmetric(horizontal: 7),
          //     child: Text(textBox!)),
          hintStyle: const TextStyle(fontSize: 16, fontWeight: FontWeight.w400),
          hintText: hintText,
          prefixIcon: Icon(
            iconPrefix,
            color: AppColor.gray,
          ),
          suffixIcon: Icon(
            iconSuffix,
            color: AppColor.primaryColor,
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
          fillColor: AppColor.fourthColor,
        ),
      ),
    );
  }
}
