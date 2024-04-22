// ignore_for_file: deprecated_member_use
import 'package:eqraa/core/app_export.dart';
import 'package:eqraa/core/constant/apptheme.dart';
import 'package:flutter/material.dart';

class CustomTitleAuth extends StatelessWidget {
  final String? title;
  const CustomTitleAuth({super.key, required this.title});

  @override
  Widget build(BuildContext context) {
    return Text(
      title!,
      style: MyTextStyle().title,
    );
  }
}
