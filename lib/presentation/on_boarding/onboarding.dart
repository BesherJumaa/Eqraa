import 'package:flutter/material.dart';
import 'package:lottie/lottie.dart';
import 'package:eqraa/core/app_export.dart';
import 'package:eqraa/widgets/onBoarding/boarding_body.dart';
import 'package:eqraa/widgets/onBoarding/skip_button.dart';
import 'static_data.dart';
import 'onboarding_controller.dart';
import '../../../core/constant/color.dart';
import '../../widgets/onBoarding/dotcontroller.dart';

class OnBoarding extends StatelessWidget {
  const OnBoarding({super.key});

  @override
  Widget build(BuildContext context) {
    Get.put(OnBoardingControllerImp());

    return Scaffold(
      backgroundColor: AppColor.white,
      resizeToAvoidBottomInset: false,
      body: GetBuilder<OnBoardingControllerImp>(builder: (controller) {
        return PageView.builder(
          controller: controller.pageController,
          onPageChanged: (val) {
            controller.onPageChanged(val);
          },
          itemCount: onBoardingList.length,
          itemBuilder: (context, i) => Column(
            children: [
              Container(
                  height: 320.adaptSize,
                  width: 339.adaptSize,
                  margin: EdgeInsets.only(
                    top: 104.adaptSize,
                    bottom: 4.adaptSize,
                  ),
                  child: Lottie.asset(onBoardingList[i].image!)),
              // CustomImageView(
              //   imagePath: onBoardingList[i].image!,
              //   height: 320.v,
              //   width: 339.h,
              //   margin: EdgeInsets.only(
              //     top: 104.v,
              //     bottom: 4.v,
              //   ),
              // ),
              SizedBox(height: 33.adaptSize),
              const CustomDotControllerOnBoarding(),
              SizedBox(height: 24.adaptSize),
              SizedBox(
                height: 249.adaptSize,
                width: 361.adaptSize,
                child: OnBoardingBody(
                  title: onBoardingList[i].title!,
                  body: onBoardingList[i].body!,
                ),
              ),
              Align(
                  alignment: Alignment.centerRight,
                  child: SkipButton(
                    text: controller.currentPage == onBoardingList.length - 1
                        ? "lbl6".tr
                        : "lbl2".tr,
                    onTap: () {
                      Get.toNamed(AppRoutes.login);
                    },
                  )),
            ],
          ),
        );
      }),
    );
  }
}
