// ignore_for_file: deprecated_member_use, avoid_print

import 'package:flutter/material.dart';
import 'package:get/get.dart';

import '../routes.dart';
import '../../core/localization/changelocal.dart';
import '../widgets/language/custombuttomlang.dart';

class Language extends GetView<LocaleController> {
  const Language({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(),
      body: Container(
        padding: const EdgeInsets.all(15),
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Text(
              "1".tr,
              style: Theme.of(context).textTheme.headline1,
            ),
            const SizedBox(height: 30),
            CustomButtonLang(
                textButton: "86".tr,
                onPressed: () {
                  print("pressed");
                  controller.changeLang("ar");
                  Get.offNamed(AppRoutes.login);
                }),
            CustomButtonLang(
                textButton: "85".tr,
                onPressed: () {
                  print("pressed");
                  controller.changeLang("en");

                  Get.offAndToNamed(AppRoutes.login);
                }),
          ],
        ),
      ),
    );
  }
}
