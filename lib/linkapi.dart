class AppLink {
  static const String server = "";

  //============Image=============================
  static const String imageStatic = "";

  //============================================
  static const String test = "$server/test.php";

  //***************Auth****************
  static const String signUp = "$server/auth/signup.php";
  static const String verifycode = "$server/auth/verifycode.php";
  static const String signIn = "$server/auth/login.php";
  static const String resend = "$server/auth/resend.php";

  //--------------resetPassword=============
  static const String checkEmail = "$server/forgetpassword/checkemail.php";
  static const String resetPassword =
      "$server/forgetpassword/resetpassword.php";
  static const String verifyCodePassword =
      "$server/forgetpassword/verifycode.php";

  //------home-----
  static const String home = "$server/home.php";
}
