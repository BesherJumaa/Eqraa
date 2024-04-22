// ignore_for_file: file_names

import 'package:flutter/material.dart';
import 'package:shimmer/shimmer.dart';

import '../../../core/constant/color.dart';

class CustomBottomAppBarButton extends StatelessWidget {
  final String title;
  final IconData? icon;
  final void Function()? onPressed;
  final bool active;
  final Color color = AppColor.black;
  const CustomBottomAppBarButton(
      {super.key,
      required this.title,
      required this.icon,
      required this.onPressed,
      required this.active});

  @override
  Widget build(BuildContext context) {
    return Container(
      margin: const EdgeInsets.symmetric(horizontal: 15),
      child: InkWell(
        onTap: onPressed,
        child: Column(
          // mainAxisSize: MainAxisSize.min,
          children: [
            Shimmer.fromColors(
              baseColor: active == true ? AppColor.primaryColor : color,
              highlightColor: active == true ? AppColor.fourthColor : color,
              period: const Duration(seconds: 4),
              child: Icon(
                icon,
                color: active == true ? AppColor.primaryColor : color,
              ),
            ),
            Shimmer.fromColors(
              baseColor: active == true ? AppColor.primaryColor : color,
              highlightColor: active == true ? AppColor.fourthColor : color,
              period: const Duration(seconds: 4),
              child: Text(
                title,
                style: TextStyle(
                  color: active == true ? AppColor.primaryColor : color,
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }
}
