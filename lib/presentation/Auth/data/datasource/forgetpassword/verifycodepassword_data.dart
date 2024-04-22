import '../../../../../core/class/crud.dart';
import '../../../../../linkapi.dart';

class VerifyCodeData {
  Crud crud;
  VerifyCodeData(this.crud);

  postdata(
    String email,
    String verifycode,
  ) async {
    var response = await crud.postData(AppLink.verifyCodePassword, {
      "email": email,
      "verifycode": verifycode,
    });
    return response.fold((l) => l, (r) => r);
  }

  resendData(
    String email,
  ) async {
    var response = await crud.postData(AppLink.resend, {
      "email": email,
    });
    return response.fold((l) => l, (r) => r);
  }
}
