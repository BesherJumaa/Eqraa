// ignore_for_file: deprecated_member_use

import 'package:eqraa/core/constant/apptheme.dart';
import 'package:flutter/material.dart';

import '../../../core/constant/color.dart';

class CustomAppBarAuth extends StatelessWidget implements PreferredSizeWidget {
  final String title;
  const CustomAppBarAuth({super.key, required this.title});

  @override
  Size get preferredSize => AppBar().preferredSize;
  @override
  Widget build(BuildContext context) {
    return AppBar(
      elevation: 0.0,
      centerTitle: true,
      title: Text(
        title,
        style: MyTextStyle().title,
      ),
    );
  }
}
