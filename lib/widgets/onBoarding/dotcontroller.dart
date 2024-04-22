import 'package:flutter/material.dart';
import 'package:eqraa/core/app_export.dart';
import 'package:eqraa/core/constant/color.dart';
import '../../presentation/on_boarding/static_data.dart';
import '../../presentation/on_boarding/onboarding_controller.dart';

class CustomDotControllerOnBoarding extends StatelessWidget {
  const CustomDotControllerOnBoarding({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return GetBuilder<OnBoardingControllerImp>(
      builder: (controller) => SizedBox(
        height: 13.v,
        child: Row(
          mainAxisSize: MainAxisSize.min,
          children: List.generate(
            onBoardingList.length,
            (index) => AnimatedContainer(
              duration: const Duration(milliseconds: 500),
              width: 13.v,
              height: 13.v,
              margin: const EdgeInsets.symmetric(horizontal: 5.0),
              decoration: BoxDecoration(
                shape: BoxShape.circle,
                color: index == controller.currentPage
                    ? AppColor.primaryColor
                    : AppColor.white,
                border: index != controller.currentPage
                    ? Border.all(color: AppColor.primaryColor, width: 2.0)
                    : null,
              ),
            ),
          ),
        ),
      ),
    );
  }
}
