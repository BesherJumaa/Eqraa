import 'package:flutter/material.dart';
import 'package:get/get.dart';
import '../../presentation/homeScreens/homescreen_controller.dart';
import '../../../core/constant/color.dart';
import 'customBottomappBarButton.dart';

class CustomBottomAppBarHome extends StatelessWidget {
  const CustomBottomAppBarHome({Key? key}) : super(key: key);
  @override
  Widget build(BuildContext context) {
    return GetBuilder<HomeScreenControllerImp>(
        builder: (controller) => BottomAppBar(
            color: AppColor.white,
            height: 69,
            notchMargin: 10,
            child: Row(
              // mainAxisAlignment: MainAxisAlignment.start,
              children: [
                ...List.generate(controller.listPage.length + 1, ((index) {
                  int i = index > 2 ? index - 1 : index;
                  return index == 2
                      ? const Spacer()
                      : Expanded(
                          child: CustomBottomAppBarButton(
                              title: controller.bottomAppBar[i]['title'],
                              icon: controller.bottomAppBar[i]['icon'],
                              onPressed: () {
                                controller.changePage(i);
                              },
                              active:
                                  controller.currentPage == i ? true : false),
                        );
                }))
              ],
            )));
  }
}
