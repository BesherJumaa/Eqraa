class UserModel {
  String? usersId;
  String? email;
  String? usersName;
  String? usersPassword;
  String? usersPhone;
  String? usersVerifyCode;
  String? usersApprove;
  String? usersCreate;

  UserModel(
      {this.usersId,
      this.email,
      this.usersName,
      this.usersPassword,
      this.usersPhone,
      this.usersVerifyCode,
      this.usersApprove,
      this.usersCreate});

  UserModel.fromJson(Map<String, dynamic> json) {
    usersId = json['user_id'];
    email = json['email'];
    usersName = json['username'];
    usersPassword = json['user_password'];
    usersPhone = json['user_phone'];
    usersVerifyCode = json['user_verifycode'];
    usersApprove = json['user_approve'];
    usersCreate = json['user_create'];
  }

  Map<String, dynamic> toJson() {
    final Map<String, dynamic> data = <String, dynamic>{};
    data['user_id'] = usersId;
    data['email'] = email;
    data['user_username'] = usersName;
    data['user_password'] = usersPassword;
    data['user_phone'] = usersPhone;
    data['user_verifycode'] = usersVerifyCode;
    data['user_approve'] = usersApprove;
    data['user_create'] = usersCreate;
    return data;
  }
}
