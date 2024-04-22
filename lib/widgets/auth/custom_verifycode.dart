// ignore_for_file: must_be_immutable

import 'package:flutter/material.dart';
import 'package:flutter_otp_text_field/flutter_otp_text_field.dart';

class CustomVerifyCode extends StatelessWidget {
  void Function(String)? onSubmit;
  CustomVerifyCode({
    required this.onSubmit,
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return OtpTextField(
      fieldWidth: 50.0,
      borderRadius: BorderRadius.circular(20),
      numberOfFields: 5,
      borderColor: const Color(0xFF512DA8),
      //set to true to show as box or false to show as dash
      showFieldAsBox: true,
      //runs when a code is typed in
      onCodeChanged: (String code) {
        //handle validation or checks here
      },
      //runs when every textField is filled
      onSubmit: (String verificationCode) {
        onSubmit;
      }, // end onSubmit
    );
  }
}
