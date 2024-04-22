import 'package:flutter/material.dart';

import '../../../../core/constant/color.dart';

class CustomTitleHome extends StatelessWidget {
  const CustomTitleHome({super.key, required this.title});
  final String title;
  @override
  Widget build(BuildContext context) {
    return Container(
      margin: const EdgeInsets.symmetric(vertical: 10),
      child: Text(
        title,
        style: TextStyle(
            fontSize: 18,
            fontWeight: FontWeight.bold,
            color: AppColor.primaryColor),
      ),
    );
  }
}
