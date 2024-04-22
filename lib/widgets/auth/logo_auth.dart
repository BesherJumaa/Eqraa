import 'package:flutter/material.dart';
import 'package:eqraa/core/app_export.dart';

class LogoAuth extends StatelessWidget {
  const LogoAuth({super.key});

  @override
  Widget build(BuildContext context) {
    return Container(
        margin: EdgeInsets.only(top: 95.v),
        child: Image.asset(AppImageAssets.book, height: 250.v, width: 255.h));
  }
}
