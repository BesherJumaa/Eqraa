import 'package:eqraa/core/app_export.dart';

class SplashController extends GetxController {
  @override
  void onReady() {
    Future.delayed(const Duration(milliseconds: 4000), () {
      // Get.off(const OnBoarding(),
      //     transition: Transition.fadeIn,
      //     routeName: AppRoutes.onBoarding,
      //     duration: const Duration(milliseconds: 200));
      Get.offNamed(AppRoutes.onBoarding);
    });
  }
}
