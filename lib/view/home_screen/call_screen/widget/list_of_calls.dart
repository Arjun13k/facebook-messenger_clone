import 'package:flutter/material.dart';

class ListOfCalls extends StatelessWidget {
  const ListOfCalls({super.key, required this.username, required this.profile});
  final String username;
  final String profile;

  @override
  Widget build(BuildContext context) {
    return Row(
      children: [
        CircleAvatar(
          backgroundImage: NetworkImage(profile),
          radius: 20,
        ),
        SizedBox(
          width: 10,
        ),
        Text(
          username,
          style: TextStyle(fontWeight: FontWeight.bold),
        ),
        Spacer(),
        IconButton.filledTonal(
          onPressed: () {},
          icon: Icon(
            Icons.call,
            size: 20,
          ),
        ),
        SizedBox(
          width: 10,
        ),
        IconButton.filledTonal(
          onPressed: () {},
          icon: Icon(
            Icons.videocam_rounded,
            size: 20,
          ),
        )
      ],
    );
  }
}
