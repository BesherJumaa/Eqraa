import 'package:get/get.dart';

import '../presentation/Auth/controller/login_controller.dart';


class MyBinding extends Bindings {
  @override
  void dependencies() {
    Get.lazyPut(() => LoginControllerImp());
  }
}
