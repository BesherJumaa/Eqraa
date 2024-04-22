import 'package:flutter/material.dart';
import '../../../core/constant/color.dart';

class CustomBottomAuth extends StatelessWidget {
  final String text;
  final void Function()? onPressed;
  const CustomBottomAuth(
      {super.key, required this.text, required this.onPressed});

  @override
  Widget build(BuildContext context) {
    return Container(
      width: double.infinity,
      // padding: const EdgeInsets.symmetric(vertical: 10, horizontal: 40),
      margin: const EdgeInsets.only(top: 15),
      child: MaterialButton(
        shape: RoundedRectangleBorder(
          borderRadius: BorderRadius.circular(20),
        ),
        // height: 40,
        padding: const EdgeInsets.symmetric(vertical: 13),
        onPressed: onPressed!,
        color: AppColor.primaryColor,
        textColor: Colors.white,
        child: Text(
          text,
          style: const TextStyle(
            fontSize: 18,
            fontWeight: FontWeight.w700,
          ),
        ),
      ),
    );
  }
}
