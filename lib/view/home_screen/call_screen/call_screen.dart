import 'package:flutter/material.dart';

class Call extends StatelessWidget {
  const Call({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        leading: IconButton.filledTonal(
          onPressed: () {},
          icon: Icon(
            Icons.menu,
            size: 25,
          ),
        ),
        title: Text("Calls",
            style: TextStyle(fontWeight: FontWeight.bold, fontSize: 28)),
        actions: [
          IconButton.filledTonal(
            onPressed: () {},
            icon: Icon(
              Icons.call,
              size: 25,
            ),
          ),
          SizedBox(
            width: 10,
          ),
          IconButton.filledTonal(
            onPressed: () {},
            icon: Icon(
              Icons.videocam_rounded,
              size: 25,
            ),
          ),
          SizedBox(
            width: 10,
          )
        ],
      ),
    );
  }
}
