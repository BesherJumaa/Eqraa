// ignore_for_file: avoid_print

import 'package:http/http.dart';

import '../../../../core/class/crud.dart';
import '../../../../core/class/status_request.dart';
import '../../../../linkapi.dart';

class SignupData {
  Crud crud;
  SignupData(this.crud);

  postData(String username, String email, String password, phone) async {
    const maxRetries = 5;
    for (var i = 0; i < maxRetries; i++) {
      try {
        var response = await crud.postData(AppLink.signUp, {
          "username": username,
          "email": email,
          "password": password,
          "phone": phone,
        });
        return response.fold((l) => l, (r) => r);
      } catch (e) {
        await Future.delayed(const Duration(seconds: 2));
        print("Retrying ...$maxRetries");
        if (e is ClientException) {
          return StatusRequest.offlineFailure;
        } else {
          // Handle other exceptions
          print('Unexpected error: $e');
        }
      }
    }
    throw Exception('Failed after $maxRetries retries');
  }
}
