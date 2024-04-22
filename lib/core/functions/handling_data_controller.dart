import '../class/status_request.dart';

/// HERE WE HANDLE THE RESPONSE
handlingData(response) {
  if (response is StatusRequest) {
    return response;
  } else {
    return StatusRequest.success;
  }
}
