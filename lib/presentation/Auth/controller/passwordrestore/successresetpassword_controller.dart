
import 'package:get/get.dart';

import '../../../../routes.dart';


abstract class SuccessResetPasswordController extends GetxController {
  goToLogin();
}

class SuccessResetPasswordControllerImp extends SuccessResetPasswordController {
  @override
  goToLogin() {
    Get.offAllNamed(AppRoutes.login);
    // TODO: implement toSignUp
    throw UnimplementedError();
  }
}
