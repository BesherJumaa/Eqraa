import 'package:eqraa/core/app_export.dart';
import 'package:flutter/material.dart';
import 'package:lottie/lottie.dart';

import 'controller/splash_controller.dart'; // ignore_for_file: must_be_immutable

class SplashScreen extends GetWidget<SplashController> {
  const SplashScreen({Key? key})
      : super(
          key: key,
        );
  @override
  Widget build(BuildContext context) {
    return Lottie.asset(AppImageAssets.splash, repeat: false);
  }
}
