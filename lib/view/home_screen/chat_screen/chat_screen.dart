import 'package:flutter/material.dart';
import 'package:messenger_clone/view/dummy_db.dart';
import 'package:messenger_clone/view/home_screen/chat_screen/circleava_tab.dart';

class ChatScreen extends StatefulWidget {
  const ChatScreen({super.key});

  @override
  State<ChatScreen> createState() => _ChatScreenState();
}

class _ChatScreenState extends State<ChatScreen> {
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
        title: Text(
          'Chats',
          style: TextStyle(fontWeight: FontWeight.bold, fontSize: 28),
        ),
        actions: [
          IconButton.filledTonal(
              onPressed: () {},
              icon: Icon(
                Icons.edit,
              )),
          SizedBox(
            width: 10,
          ),
        ],
      ),
      body: Padding(
        padding: const EdgeInsets.all(10),
        child: SingleChildScrollView(
          child: Column(
            children: [
              TextField(
                decoration: InputDecoration(
                  prefixIcon: Icon(
                    Icons.search,
                  ),
                  hintText: "Search",
                  border: OutlineInputBorder(
                      borderRadius: BorderRadius.circular(30),
                      borderSide: BorderSide.none),
                  fillColor: Color.fromARGB(255, 248, 246, 246),
                  filled: true,
                ),
              ),
              SizedBox(
                height: 20,
              ),
              Row(
                mainAxisAlignment: MainAxisAlignment.start,
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Stack(children: [
                    CircleAvatar(
                      backgroundImage: NetworkImage(
                          "https://avatars.githubusercontent.com/u/159136735?v=4"),
                      radius: 30,
                    ),
                    Positioned(
                        top: -10,
                        left: -15,
                        child: IconButton(
                          onPressed: () {},
                          icon: Icon(
                            Icons.add,
                          ),
                        )),
                  ]),
                  SizedBox(
                    width: 15,
                  ),
                  SizedBox(
                    height: 50,
                    child: ListView.separated(
                        scrollDirection: Axis.horizontal,
                        shrinkWrap: true,
                        itemBuilder: (context, index) =>
                            MyCircle(active: DummyDb.profile[index]),
                        separatorBuilder: (context, index) => SizedBox(
                              width: 15,
                            ),
                        itemCount: DummyDb.profile.length),
                  ),
                ],
              ),
              SizedBox(
                height: 20,
              ),
              Container(
                decoration: BoxDecoration(color: Colors.grey),
                child: Center(
                    child: Text(
                  "Home",
                  style: TextStyle(fontWeight: FontWeight.bold),
                )),
              ),
              Container(
                decoration: BoxDecoration(color: Colors.grey),
                child: Center(
                    child: Text(
                  "Home",
                  style: TextStyle(fontWeight: FontWeight.bold),
                )),
              )
            ],
          ),
        ),
      ),
    );
  }
}
