import 'package:flutter/cupertino.dart';
import 'package:get/get.dart';

import '../../routes.dart';
import '../../core/services/services.dart';
import 'static_data.dart';

abstract class OnBoardingController extends GetxController {
  next();
  onPageChanged(int index);
}

class OnBoardingControllerImp extends OnBoardingController {
  late PageController pageController;

  int currentPage = 0;
  MyServices myServices = Get.find();
  @override
  @override
  next() {
    if (currentPage >= onBoardingList.length - 1) {
      myServices.sharedPreferences.setString("step", "1");
      Get.offAllNamed(AppRoutes.login);
    } else {
      currentPage++;
      pageController.animateToPage(
        currentPage,
        duration: const Duration(milliseconds: 800),
        curve: Curves.easeIn,
      );
      onPageChanged(currentPage);
    }
    update();
  }

  @override
  onPageChanged(int index) {
    currentPage = index;
    update();
  }

  @override
  void onInit() {
    pageController = PageController();
    super.onInit();
  }
}
