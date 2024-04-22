import 'package:flutter/material.dart';

import '../constant/color.dart';

class CustomTextFormFields extends StatelessWidget {
  final String? textBox;
  final String? hintText;
  final IconData? iconPrefix;
  final TextEditingController? mycontroller;
  final String? Function(String?)? validator;
  final TextInputType? keyboardtype;
  const CustomTextFormFields({
    super.key,
    required this.textBox,
    this.hintText,
    this.iconPrefix,
    this.mycontroller,
    this.keyboardtype,
    this.validator,
  });

  @override
  Widget build(BuildContext context) {
    return Container(
      margin: const EdgeInsets.only(top: 15),
      child: TextFormField(
        style: TextStyle(
          color: AppColor.primaryColor,
          fontSize: 18,
        ),
        textDirection: TextDirection.ltr,
        keyboardType: keyboardtype,
        controller: mycontroller,
        autovalidateMode: AutovalidateMode.onUserInteraction,
        validator: validator,
        decoration: InputDecoration(
            floatingLabelBehavior: FloatingLabelBehavior.always,
            contentPadding:
                const EdgeInsets.symmetric(vertical: 10, horizontal: 40),
            label: Container(
                margin: const EdgeInsets.symmetric(horizontal: 7),
                child: Text(
                  textBox!,
                  style: const TextStyle(fontWeight: FontWeight.bold),
                )),
            hintStyle: const TextStyle(fontSize: 14),
            hintText: hintText,
            suffixIcon: Icon(
              iconPrefix,
              color: AppColor.primaryColor,
            ),
            border: OutlineInputBorder(
              borderRadius: BorderRadius.circular(30),
            )),
      ),
    );
  }
}
