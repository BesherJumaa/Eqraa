import '../../core/class/crud.dart';
import '../../linkapi.dart';

class TestData {
  Crud crud;
  TestData(this.crud);

  /// you just need to use the link, and to insert the form data
  getData() async {
    var response = await crud.postData(AppLink.test, {});
    return response.fold((l) => l, (r) => r);
  }
}
