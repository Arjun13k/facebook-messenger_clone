import 'package:flutter/material.dart';
import 'package:messenger_clone/core/constant/color_const.dart';

class FacebookUpdates extends StatelessWidget {
  const FacebookUpdates(
      {super.key,
      required this.profile,
      required this.username,
      required this.message});
  final String profile;
  final String username;
  final String message;

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
        Column(
          mainAxisAlignment: MainAxisAlignment.start,
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [Text(username), Text(message)],
        )
      ],
    );
  }
}
