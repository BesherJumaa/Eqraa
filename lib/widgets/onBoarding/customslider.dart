import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:eqraa/core/app_export.dart';
import 'package:flutter_svg_provider/flutter_svg_provider.dart' as fs;
import 'package:eqraa/widgets/onBoarding/dotcontroller.dart';
import '../../core/constant/apptheme.dart';
import '../../presentation/on_boarding/onboarding_controller.dart';
import '../../presentation/on_boarding/static_data.dart';
import 'custombutton.dart';

class CustomSliderOnBoarding extends GetView<OnBoardingControllerImp> {
  const CustomSliderOnBoarding({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return PageView.builder(
      controller: controller.pageController,
      onPageChanged: (val) {
        controller.onPageChanged(val);
      },
      itemCount: onBoardingList.length,
      itemBuilder: (context, i) => Column(
        children: [
          CustomImageView(
            imagePath: onBoardingList[i].image!,
            height: 320.v,
            width: 339.h,
            margin: EdgeInsets.only(
              top: 104.v,
              // left: 23.h,
              bottom: 4.v,
            ),
          ),
          SizedBox(height: 33.v),
          const CustomDotControllerOnBoarding(),
          SizedBox(height: 24.v),
          SizedBox(
            height: 249.v,
            width: 361.h,
            child: Stack(
              alignment: Alignment.center,
              children: [
                CustomImageView(
                  imagePath: AppImageAssets.onBoardingSubtract,
                  height: 228.v,
                  width: 356.h,
                  radius: BorderRadius.circular(
                    30.h,
                  ),
                  alignment: Alignment.topCenter,
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
                          padding: EdgeInsets.only(right: 40.h),
                          child: Text(
                            onBoardingList[i].title!,
                            style: theme.textTheme.headlineSmall,
                          ),
                        ),
                        SizedBox(height: 16.v),
                        Container(
                          width: 217.h,
                          margin: EdgeInsets.only(left: 9.h),
                          child: Text(
                            onBoardingList[i].body!,
                            maxLines: 3,
                            overflow: TextOverflow.ellipsis,
                            textAlign: TextAlign.center,
                            style: theme.textTheme.bodyLarge,
                          ),
                        ),
                        SizedBox(height: 96.v)
                      ],
                    ),
                  ),
                ),
                const Align(
                  alignment: Alignment.bottomCenter,
                  child: SizedBox(
                    // height: 53.adaptSize,
                    // width: 53.adaptSize,
                    child: CustomButtonOnBoarding(),
                  ),
                ),
              ],
            ),
          ),
        ],
      ),
    );
  }
}
