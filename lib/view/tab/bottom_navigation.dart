import 'package:flutter/material.dart';
import 'package:messenger_clone/view/home_screen/call_screen/call_screen.dart';
import 'package:messenger_clone/view/home_screen/chat_screen/chat_screen.dart';
import 'package:messenger_clone/view/home_screen/people_screen/people_screen.dart';

class BottomNav extends StatefulWidget {
  const BottomNav({super.key});

  @override
  State<BottomNav> createState() => _BottomNavState();
}

class _BottomNavState extends State<BottomNav> {
  int indexValue = 0;
  final List screen = [ChatScreen(), Call(), MyPeople()];
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: screen[indexValue],
      bottomNavigationBar: BottomNavigationBar(
          onTap: (value) {
            setState(() {
              indexValue = value;
            });
          },
          type: BottomNavigationBarType.fixed,
          currentIndex: indexValue,
          items: [
            BottomNavigationBarItem(
                icon: Icon(Icons.chat_bubble_outlined), label: "chat"),
            BottomNavigationBarItem(
                icon: Icon(Icons.videocam_rounded), label: "call"),
            BottomNavigationBarItem(icon: Icon(Icons.group), label: "people"),
          ]),
    );
  }
}
