import 'package:flutter/material.dart';

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
            radius: 30,
          ),
          Positioned(
              child: CircleAvatar(
            radius: 7,
            backgroundColor: Colors.green,
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
