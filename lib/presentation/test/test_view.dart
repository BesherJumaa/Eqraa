import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:lottie/lottie.dart';

import 'test_controlller.dart';
import '../../../core/class/handlingdataview.dart';
import '../../../core/constant/color.dart';
import '../../../core/constant/imageassets.dart';

class TestView extends StatelessWidget {
  const TestView({super.key});

  @override
  Widget build(BuildContext context) {
    // Get.put(TestController());
    return Scaffold(
      appBar: AppBar(
        actions: [Lottie.asset(AppImageAssets.loading)],
        backgroundColor: AppColor.primaryColor,
      ),
      body: GetBuilder<TestController>(builder: (controller) {
        return HandlingDataView(
          statusRequest: controller.statusRequest,
          widget: ListView.builder(
              itemCount: controller.data.length,
              itemBuilder: (context, index) {
                return Text("${controller.data}");
              }),
        );
      }),
    );
  }
}
