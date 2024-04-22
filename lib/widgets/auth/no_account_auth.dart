// ignore_for_file: deprecated_member_use

import 'package:eqraa/core/constant/apptheme.dart';
import 'package:flutter/material.dart';

class NoAccountAuth extends StatelessWidget {
  final String text;
  final String buttonText;
  final void Function()? onTap;
  const NoAccountAuth(
      {super.key, required this.text, required this.buttonText, this.onTap});

  @override
  Widget build(BuildContext context) {
    return Row(
      mainAxisAlignment: MainAxisAlignment.center,
      children: [
        Text(
          text,
          style: MyTextStyle().body,
        ),
        const Padding(padding: EdgeInsets.all(5)),
        InkWell(
          onTap: onTap,
          child: Text(
            buttonText,
            style: MyTextStyle().bodyLarge,
          ),
        )
      ],
    );
  }
}
