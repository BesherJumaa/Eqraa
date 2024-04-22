import 'package:flutter/material.dart';

class AppColor {
  static const Color gray = Color(0xff595a5d);

  // ----------------Light Theme
  static const Color primaryColor = Color(0xff6c7245);
  static const Color secondColor = Color(0xffe09132);
  static const Color thirdColor = Color(0xffa58e74);
  static const Color fourthColor = Color(0xffffefcd);
  // static const Color fifthColor = Color(0xff6c7245);

  //**********************************************
  static const Color black = Color(0xff595858);
  static const Color white = Color(0xffffffff);
  static const Color backGroundColor = Color(0xfff8f9fc);
  static const Color green = Color(0xFF7EE749);
  static const Color red = Color(0xFFAD2626);
  static const Color amber = Color(0xFFFFC507);
  static const Color text = Color(0xFF411530);
  static const Color background = Color(0xFFF5E8E4);
  static const Color pr = Color(0xFF014953);
  static const Color sec = Color(0xFF539EA8);

  static const MaterialColor primarymaterialcolor = Colors.lightGreen;
}

Color getPrimaryColor() {
  const gradient = LinearGradient(
    begin: Alignment.topCenter,
    end: Alignment.bottomCenter,
    colors: [AppColor.pr, AppColor.sec],
  );

  return gradient.colors.first;
}
