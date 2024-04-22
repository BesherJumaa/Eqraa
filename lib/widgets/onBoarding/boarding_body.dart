import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:eqraa/core/app_export.dart';
import 'package:eqraa/core/constant/color.dart';
import '../../core/constant/apptheme.dart';
import 'custombutton.dart';
import 'package:flutter_svg_provider/flutter_svg_provider.dart' as fs;

class OnBoardingBody extends StatelessWidget {
  final String title;
  final String body;

  const OnBoardingBody({super.key, required this.title, required this.body});

  @override
  Widget build(BuildContext context) {
    // TODO: implement build
    return Stack(
      alignment: Alignment.center,
      children: [
        SvgPicture.asset(
          AppImageAssets.onBoardingSubtract,
          color: AppColor.thirdColor,
          height: 228.v,
          width: 356.h,
        ),
        Align(
          alignment: Alignment.center,
          child: Container(
            margin: EdgeInsets.only(right: 5.h),
            padding: EdgeInsets.symmetric(
              horizontal: 64.h,
              vertical: 11.v,
            ),
            decoration: BoxDecoration(
              borderRadius: BorderRadius.circular(30),
              image: DecorationImage(
                image: fs.Svg(
                  AppImageAssets.onBoardingSubtract,
                ),
                fit: BoxFit.cover,
              ),
            ),
            child: Column(
              mainAxisSize: MainAxisSize.min,
              crossAxisAlignment: CrossAxisAlignment.end,
              children: [
                Padding(
                  padding: EdgeInsets.only(left: 50.h),
                  child: Text(
                    title,
                    style: theme.textTheme.headlineSmall,
                  ),
                ),
                SizedBox(height: 16.v),
                Container(
                  width: 217.h,
                  margin: EdgeInsets.only(left: 9.h),
                  child: Text(
                    body,
                    maxLines: 3,
                    overflow: TextOverflow.ellipsis,
                    textAlign: TextAlign.center,
                    style: theme.textTheme.bodyLarge,
                  ),
                ),
                SizedBox(height: 50.v)
              ],
            ),
          ),
        ),
        Align(
          alignment: Alignment.bottomCenter,
          child: Container(
            margin: const EdgeInsets.only(right: 10),
            child: const CustomButtonOnBoarding(),
          ),
        ),
      ],
    );
  }
}
