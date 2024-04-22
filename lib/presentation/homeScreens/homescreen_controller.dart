import 'package:flutter/material.dart';
import 'package:get/get.dart';
import '../../core/services/services.dart';
import '../home/home.dart';

abstract class HomeScreenController extends GetxController {
  changePage(int i);
}

class HomeScreenControllerImp extends HomeScreenController {
  int currentPage = 0;
  late PageController pageController;
  String? username;
  String? id, phone;
  String? lang;
  MyServices myServices = Get.find();

  List<Widget> listPage = [
    const HomePage(),
  ];

  List bottomAppBar = [
    {
      "title": "43".tr,
      "icon": Icons.home,
    },
    {
      "title": "44".tr,
      "icon": Icons.settings,
    },
  ];
  initialData() {
    lang = myServices.sharedPreferences.getString("lang");
    username = myServices.sharedPreferences.getString("username");
    id = myServices.sharedPreferences.getString("id");
    phone = myServices.sharedPreferences.getString("phone");
  }

  @override
  void onInit() {
    pageController = PageController(initialPage: currentPage);
    initialData();
    super.onInit();
  }

  @override
  changePage(int i) {
    currentPage = i;

    update();
  }

  @override
  void onClose() {
    pageController.dispose();
    super.onClose();
  }
}
