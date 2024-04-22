import 'package:get/get.dart';

import '../../core/class/status_request.dart';
import '../../core/functions/handling_data_controller.dart';
import 'test_data.dart';

class TestController extends GetxController {
  TestData testData = TestData(Get.find());

  List data = [];
  late StatusRequest statusRequest;

  getData() async {
    statusRequest = StatusRequest.loading;
    var response = await testData.getData(); // getting the data
    statusRequest = handlingData(response); //TO handle the response status
    if (StatusRequest.success == statusRequest) {
      if (response['status'] == "success") {
        data.addAll(response['data']);
      } else {
        statusRequest = StatusRequest.failure;
      }
    }
    update();
  }

  @override
  void onInit() {
    getData();
    super.onInit();
  }
}
