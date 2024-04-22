import 'package:flutter/material.dart';
import 'package:get/get.dart';

import '../../routes.dart';
import '../services/services.dart';

class MyMiddleware extends GetMiddleware {
  MyServices myServices = Get.find();
  @override
  int? get priority => 1;

  @override
  RouteSettings? redirect(String? route) {
    /// IF USER LOGGED IN, WHEN HE OPEN THE APP LATER GO TO HOMEPAGE DIRECTLY WITHOUT RE SIGN IN
    if (myServices.sharedPreferences.getString("step") == "2") {
      return const RouteSettings(name: AppRoutes.homePage);
    }
    if (myServices.sharedPreferences.getString("step") == "1") {
      return const RouteSettings(name: AppRoutes.login);
    }

    return const RouteSettings(name: AppRoutes.login);
  }
}
