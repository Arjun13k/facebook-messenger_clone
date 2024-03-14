import 'package:flutter/material.dart';

class GeneratedList extends StatelessWidget {
  const GeneratedList({super.key, required this.profile, required this.text});
  final String profile;
  final String text;

  @override
  Widget build(BuildContext context) {
    return Container(
      child: Row(
        children: [
          CircleAvatar(
            radius: 25,
          ),
          SizedBox(
            width: 10,
          ),
          Column(
            children: [Text("Arjun k"), Text('Signed in')],
          ),
          Spacer(),
          Icon(Icons.done)
        ],
      ),
    );
  }
}
