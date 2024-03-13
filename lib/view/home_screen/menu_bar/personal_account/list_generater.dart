import 'package:flutter/material.dart';

class GeneratedList extends StatelessWidget {
  const GeneratedList({super.key, required this.profile, required this.text});
  final String profile;
  final String text;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: ListTile(
        leading: CircleAvatar(
          backgroundImage: NetworkImage(profile),
          radius: 20,
        ),
        title: Text(text),
      ),
    );
  }
}
