import 'package:flutter/material.dart';
import 'package:messenger_clone/core/constant/color_const.dart';

class ChatAlign extends StatelessWidget {
  const ChatAlign({super.key, required this.text, required this.isSender});
  final String text;
  final bool isSender;

  @override
  Widget build(BuildContext context) {
    return Align(
      alignment: isSender ? Alignment.centerRight : Alignment.centerLeft,
      child: Container(
        padding: EdgeInsets.symmetric(horizontal: 10, vertical: 5),
        decoration: BoxDecoration(
            borderRadius: BorderRadius.circular(20),
            color: isSender
                ? ColorConstant.primaryblue
                : ColorConstant.primaryBlack.withOpacity(.1)),
        child: Text(
          text,
          style: TextStyle(
              color: isSender
                  ? ColorConstant.primaryWhite
                  : ColorConstant.primaryBlack),
        ),
      ),
    );
  }
}
