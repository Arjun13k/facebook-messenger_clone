import 'package:flutter/material.dart';

class MyCircle extends StatelessWidget {
  const MyCircle({super.key, required this.active});
  final active;

  @override
  Widget build(BuildContext context) {
    return Stack(children: [
      CircleAvatar(
        backgroundImage: NetworkImage(active),
        radius: 30,
      ),
      Positioned(
          child: CircleAvatar(
        radius: 7,
        backgroundColor: Colors.green,
      ))
    ]);
  }
}
