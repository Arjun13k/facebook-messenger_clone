import 'package:flutter/material.dart';
import 'package:messenger_clone/view/dummy_db.dart';
import 'package:messenger_clone/view/home_screen/chat_screen/home_tab.dart';

class ChatList extends StatelessWidget {
  const ChatList({super.key});

  @override
  Widget build(BuildContext context) {
    return Column(
      children: List.generate(
          DummyDb.homeList.length,
          (index) => HomeTab(
              username: DummyDb.homeList[index]["username"],
              message: DummyDb.homeList[index]["message"],
              time: DummyDb.homeList[index]["time"],
              profile: DummyDb.homeList[index]["profile"])),
    );
  }
}
