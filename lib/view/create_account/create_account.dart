import 'package:flutter/material.dart';

class AccountCreate extends StatelessWidget {
  const AccountCreate({super.key});

  @override
  Widget build(BuildContext context) {
    return Center(
        child: Column(
      children: [
        Text("Join Facebook to use Messenger"),
        Image.asset(""),
        Text(
            "You'll need a facebook account to use messenger.Create an account to connect with friends,family and people who share your interest ")
      ],
    ));
  }
}
