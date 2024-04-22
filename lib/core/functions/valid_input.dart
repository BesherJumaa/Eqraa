import 'package:get/get.dart';

///VALIDATION
validInput(String val, int min, int max, String type) {
  if (type == "") {}
  if (type == "username") {
    if (!GetUtils.isUsername(val)) {
      return "79".tr;
    }
  }
  if (type == "email") {
    if (!GetUtils.isEmail(val)) {
      return "80".tr;
    }
  }
  if (type == "phone") {
    if (!GetUtils.isPhoneNumber(val)) {
      return "81".tr;
    }
  }
  if (val.length < min) {
    return "82".trParams({"min": min.toString()});
  }

  if (val.length > max) {
    return "83".trParams({"max": max.toString()});
  }
  if (val.isEmpty) {
    return "84".tr;
  }
}
