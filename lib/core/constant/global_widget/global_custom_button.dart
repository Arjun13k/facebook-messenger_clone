import 'package:flutter/material.dart';
import 'package:messenger_clone/core/constant/color_const.dart';

class CustomButton extends StatelessWidget {
  const CustomButton({
    super.key,
    required this.text,
    this.buttonColor = ColorConstant.primaryblue,
    required this.haveBorder,
    this.ontap,
    required this.textColor,
  });
  final String text;
  final Color buttonColor;
  final bool haveBorder;
  final void Function()? ontap;
  final Color textColor;

  @override
  Widget build(BuildContext context) {
    return InkWell(
        onTap: ontap,
        child: Container(
          padding: EdgeInsets.symmetric(vertical: 10),
          decoration: BoxDecoration(
            color: buttonColor,
            borderRadius: BorderRadius.circular(20),
            border: haveBorder == true
                ? Border.all(width: 1, color: ColorConstant.primaryBlack)
                : null,
          ),
          child: Center(
              child: Text(
            text,
            style: TextStyle(
                color: textColor, fontWeight: FontWeight.bold, fontSize: 20),
          )),
        ));
  }
}
