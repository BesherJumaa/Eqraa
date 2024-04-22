import 'package:get/get.dart';

import '../core/class/crud.dart';
import '../core/utils/size_utils.dart';

class InitialBindings extends Bindings {
  @override
  void dependencies() {
    Get.put(Crud());
  }
}
