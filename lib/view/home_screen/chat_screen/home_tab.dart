import 'package:flutter/material.dart';
import 'package:messenger_clone/view/home_screen/chat_screen/widget/home_widget/chat_inside.dart';

class HomeTab extends StatefulWidget {
  const HomeTab(
      {super.key,
      required this.username,
      required this.message,
      required this.time,
      required this.profile});
  final String username;
  final String message;
  final String time;
  final String profile;

  @override
  State<HomeTab> createState() => _HomeTabState();
}

class _HomeTabState extends State<HomeTab> {
  @override
  Widget build(BuildContext context) {
    return InkWell(
      onTap: () {
        Navigator.push(
            context,
            MaterialPageRoute(
              builder: (context) => ChatInside(
                username: widget.username,
                profile: widget.profile,
              ),
            ));
      },
      child: ListTile(
        leading: CircleAvatar(
          backgroundImage: NetworkImage(widget.profile),
          radius: 30,
        ),
        title: Text(
          widget.username,
        ),
        subtitle: Text(widget.message),
        trailing: Text(widget.time),
      ),
    );
  }
}
