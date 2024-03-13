import 'package:flutter/material.dart';
import 'package:messenger_clone/core/constant/color_const.dart';

class MessageRequest extends StatelessWidget {
  const MessageRequest({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text(
          'Message request',
          style: TextStyle(fontWeight: FontWeight.bold),
        ),
        actions: [
          TextButton(
              onPressed: () {},
              child: Text(
                'EDIT',
                style: TextStyle(
                    fontWeight: FontWeight.bold,
                    color: ColorConstant.primaryblue,
                    fontSize: 18),
              ))
        ],
      ),
    );
  }
}
