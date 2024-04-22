import 'package:flutter/material.dart';
import 'package:flutter_svg/svg.dart';
import 'package:get/get.dart';
import 'package:eqraa/core/app_export.dart';

import '../../core/constant/imageassets.dart';
import '../../presentation/on_boarding/onboarding_controller.dart';
import '../../../core/constant/color.dart';

class CustomButtonOnBoarding extends GetView<OnBoardingControllerImp> {
  const CustomButtonOnBoarding({Key? key}) : super(key: key);
  @override
  Widget build(BuildContext context) {
    return IconButton(
      onPressed: () {
        controller.next();
      },
      icon: SizedBox(
        height: 53.v,
        width: 53.h,
        child: Stack(
          children: [
            SvgPicture.asset(
              AppImageAssets.onboardingbutton,
              color: AppColor.primaryColor,
              height: 53.v,
              width: 53.h,
            ),
            const Center(
              child: Icon(
                Icons.arrow_forward_ios,
                color: AppColor.white,
              ),
            )
          ],
        ),
      ),
    );
  }
}
