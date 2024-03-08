import 'package:flutter/material.dart';
import 'package:messenger_clone/core/constant/color_const.dart';

class DownWardAvathar extends StatelessWidget {
  const DownWardAvathar(
      {super.key, required this.profile, required this.username});
  final String username;
  final String profile;
  @override
  Widget build(BuildContext context) {
    return Row(
      children: [
        Stack(children: [
          CircleAvatar(
            backgroundImage: NetworkImage(profile),
            radius: 20,
          ),
          Positioned(
              bottom: 0,
              right: 3,
              child: CircleAvatar(
                radius: 6,
                backgroundColor: ColorConstant.primaryWhite,
                child: CircleAvatar(
                  radius: 4,
                  backgroundColor: Colors.green,
                ),
              ))
        ]),
        SizedBox(
          width: 20,
        ),
        Text(username)
      ],
    );
  }
}
