// ignore_for_file: deprecated_member_use

import 'package:flutter/material.dart';
import 'package:eqraa/core/app_export.dart';

import 'color.dart';

ThemeData get theme => ThemeData();
ThemeData themeEnglish = ThemeData(
  appBarTheme: AppBarTheme(
    backgroundColor: AppColor.primaryColor,
    foregroundColor: AppColor.white,
  ),
  bottomNavigationBarTheme: BottomNavigationBarThemeData(
    backgroundColor: AppColor.white,
    elevation: 5,
    selectedItemColor: AppColor.primaryColor,
  ),
  bottomAppBarTheme: const BottomAppBarTheme(
      color: AppColor.white, shape: CircularNotchedRectangle()),
  scaffoldBackgroundColor: AppColor.white,
  buttonTheme: ButtonThemeData(
    buttonColor: AppColor.primaryColor,
    textTheme: ButtonTextTheme.normal,
    shape: RoundedRectangleBorder(
      borderRadius: BorderRadius.circular(30.0),
    ),
  ),
  primaryColor: AppColor.primaryColor,
  dialogBackgroundColor: AppColor.backGroundColor,
  floatingActionButtonTheme: FloatingActionButtonThemeData(
    elevation: 10,
    backgroundColor: AppColor.thirdColor,
    shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(30)),
  ),
  fontFamily: "Inter",
  textTheme: TextTheme(
    button: const TextStyle(color: AppColor.white),
    bodyText1: TextStyle(
      color: AppColor.gray,
      fontSize: 16.fSize,
      fontFamily: 'Inter',
      fontWeight: FontWeight.w400,
    ),
    headline6: TextStyle(
      color: AppColor.primaryColor,
      fontSize: 24.fSize,
      fontFamily: 'Inter',
      fontWeight: FontWeight.w700,
    ),
    headline5: TextStyle(
      color: AppColor.primaryColor,
      fontSize: 20.fSize,
      fontFamily: 'Inter',
      fontWeight: FontWeight.w400,
    ),
    headline4: TextStyle(
      color: AppColor.secondColor,
      fontSize: 18.fSize,
      fontFamily: 'Inter',
      fontWeight: FontWeight.w700,
    ),
  ),
  colorScheme:
      ColorScheme.fromSwatch(primarySwatch: AppColor.primarymaterialcolor)
          .copyWith(background: AppColor.backGroundColor),
);

ThemeData themeArabic = ThemeData(
  appBarTheme: const AppBarTheme(
    color: AppColor.primaryColor,
    foregroundColor: AppColor.white,
  ),
  dropdownMenuTheme: const DropdownMenuThemeData(
      inputDecorationTheme:
          InputDecorationTheme(focusColor: AppColor.primaryColor)),
  bottomNavigationBarTheme: const BottomNavigationBarThemeData(
    backgroundColor: AppColor.white,
    elevation: 5,
    selectedItemColor: AppColor.primaryColor,
  ),
  bottomAppBarTheme: const BottomAppBarTheme(
      color: AppColor.white,
      elevation: 5,
      shadowColor: AppColor.primaryColor,
      shape: CircularNotchedRectangle()),
  scaffoldBackgroundColor: AppColor.backGroundColor,
  buttonTheme: ButtonThemeData(
    buttonColor: AppColor.primaryColor,
    textTheme: ButtonTextTheme.normal,
    shape: RoundedRectangleBorder(
      borderRadius: BorderRadius.circular(30.0),
    ),
  ),
  primaryColor: AppColor.primaryColor,
  dialogBackgroundColor: AppColor.backGroundColor,
  floatingActionButtonTheme: FloatingActionButtonThemeData(
    elevation: 10,
    backgroundColor: AppColor.thirdColor,
    shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(30)),
  ),
  fontFamily: "Inter",
  textTheme: TextTheme(
    button: const TextStyle(color: AppColor.white),
    bodyText1: TextStyle(
      color: AppColor.gray,
      fontSize: 16.fSize,
      fontFamily: 'Inter',
      fontWeight: FontWeight.w400,
    ),
    headline6: TextStyle(
      color: AppColor.primaryColor,
      fontSize: 24.fSize,
      fontFamily: 'Inter',
      fontWeight: FontWeight.w700,
    ),
    headline5: TextStyle(
      color: AppColor.primaryColor,
      fontSize: 20.fSize,
      fontFamily: 'Inter',
      fontWeight: FontWeight.w400,
    ),
    headline4: TextStyle(
      color: AppColor.secondColor,
      fontSize: 18.fSize,
      fontFamily: 'Inter',
      fontWeight: FontWeight.w700,
    ),
  ),
  colorScheme:
      ColorScheme.fromSwatch(primarySwatch: AppColor.primarymaterialcolor)
          .copyWith(background: AppColor.backGroundColor),
);

class MyTextStyle {
  TextStyle title = theme.textTheme.headline6!.copyWith(
    color: AppColor.primaryColor,
    fontSize: 24.fSize,
    fontFamily: 'Inter',
    fontWeight: FontWeight.w700,
  );

  TextStyle body = theme.textTheme.bodyText1!.copyWith(
    color: AppColor.gray,
    fontSize: 18.fSize,
    fontFamily: 'Inter',
    fontWeight: FontWeight.w500,
  );

  TextStyle bodyLarge = theme.textTheme.headline5!.copyWith(
    color: AppColor.thirdColor,
    fontSize: 20.fSize,
    fontFamily: 'Inter',
    fontWeight: FontWeight.w600,
  );
  TextStyle bodySmall = theme.textTheme.headline4!.copyWith(
    color: AppColor.gray,
    fontSize: 16.fSize,
    fontFamily: 'Inter',
    fontWeight: FontWeight.w400,
  );
}
