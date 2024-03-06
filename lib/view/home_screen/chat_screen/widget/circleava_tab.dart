import 'package:flutter/material.dart';
import 'package:messenger_clone/core/constant/color_const.dart';

class MyCircle extends StatelessWidget {
  const MyCircle({
    super.key,
    required this.profile,
  });

  final String profile;
  @override
  Widget build(BuildContext context) {
    return Row(
      children: [
        Stack(alignment: Alignment.bottomRight, children: [
          CircleAvatar(
            backgroundImage: NetworkImage(profile),
            radius: 30,
          ),
          Positioned(
              bottom: 0,
              child: CircleAvatar(
                radius: 7,
                backgroundColor: ColorConstant.primaryWhite,
                child: CircleAvatar(
                  radius: 5,
                  backgroundColor: Colors.green,
                ),
              ))
        ]),
        SizedBox(
          width: 10,
        )
      ],
    );
  }
}
