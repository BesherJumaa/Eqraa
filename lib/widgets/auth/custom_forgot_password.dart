import 'package:flutter/material.dart';
import 'package:eqraa/core/app_export.dart';

import '../../../core/constant/color.dart';
import '../../core/constant/apptheme.dart';

class CustomForgotPassword extends StatelessWidget {
  final void Function()? onTap;

  const CustomForgotPassword({super.key, this.onTap});

  @override
  Widget build(BuildContext context) {
    return Container(
      margin: EdgeInsets.only(right: 150.h),
      child: InkWell(
          onTap: onTap,
          child: Text(
            "14".tr,
            textAlign: TextAlign.right,
            style: MyTextStyle().body,
          )),
    );
  }
}
