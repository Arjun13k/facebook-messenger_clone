import 'package:flutter/material.dart';

class IconList extends StatelessWidget {
  const IconList({super.key, required this.profile, required this.username});
  final String profile;
  final String username;

  @override
  Widget build(BuildContext context) {
    return Row(
      children: [
        CircleAvatar(
          radius: 20,
          backgroundImage: NetworkImage(profile),
        ),
        SizedBox(
          width: 10,
        ),
        Text(
          username,
          style: TextStyle(fontWeight: FontWeight.bold),
        ),
      ],
    );
  }
}
