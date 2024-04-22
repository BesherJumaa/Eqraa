import 'package:flutter/material.dart';
import '../../core/constant/apptheme.dart';

class CustomTextBodyAuth extends StatelessWidget {
  final String? body;
  const CustomTextBodyAuth({super.key, required this.body});

  @override
  Widget build(BuildContext context) {
    return Container(
      margin: const EdgeInsets.only(top: 15),
      child: Text(
        body!,
        style: MyTextStyle().body,
      ),
    );
  }
}
