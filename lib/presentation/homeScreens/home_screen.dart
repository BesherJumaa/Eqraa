// ignore_for_file: deprecated_member_use

import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'homescreen_controller.dart';
import '../../../core/functions/alert_exit_app.dart';
import '../../widgets/homeScreen/custom_bottom_app_bar_home.dart';
import '../../widgets/homeScreen/customappbar.dart';

class HomeScreen extends StatelessWidget {
  const HomeScreen({super.key});

  @override
  Widget build(BuildContext context) {
    Get.put(HomeScreenControllerImp());

    return GetBuilder<HomeScreenControllerImp>(
      builder: (controller) {
        return WillPopScope(
          onWillPop: () => alertExitApp(),
          child: Scaffold(
            appBar: const CustomAppBarHome(),
            bottomNavigationBar: const CustomBottomAppBarHome(),
            body: controller.listPage.elementAt(controller.currentPage),
          ),
        );
      },
    );
  }
}
