import 'package:flutter/material.dart';

import '../../core/app_export.dart';
import '../../core/constant/apptheme.dart';

class SkipButton extends StatelessWidget {
  final String text;
  final void Function()? onTap;

  SkipButton({super.key, required this.text, this.onTap});

  @override
  Widget build(BuildContext context) {
    // TODO: implement build
    return InkWell(
      onTap: onTap,
      child: Row(
        mainAxisAlignment: MainAxisAlignment.end,
        children: [
          Text(
            text,
            style: theme.textTheme.titleMedium,
          ),
          CustomImageView(
            imagePath: AppImageAssets.onBoardingButtonNext,
            height: 18.v,
            width: 10.h,
            margin: EdgeInsets.only(
              right: 5.h,
              left: 20.h,
              bottom: 4.v,
            ),
          ),
        ],
      ),
    );
  }
}
