import 'package:flutter/material.dart';
import 'package:messenger_clone/core/constant/color_const.dart';
import 'package:messenger_clone/core/constant/image_const.dart';
import 'package:messenger_clone/view/dummy_db.dart';
import 'package:messenger_clone/view/home_screen/chat_screen/channel_tab.dart';
import 'package:messenger_clone/view/home_screen/chat_screen/widget/circleava_tab.dart';
import 'package:messenger_clone/view/home_screen/chat_screen/home_screen.dart';

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
                    isDense: true,
                    prefixIcon: Icon(Icons.search),
                    hintText: "Search",
                    fillColor: ColorConstant.primaryBlack.withOpacity(.1),
                    filled: true,
                    border: OutlineInputBorder(
                        borderRadius: BorderRadius.circular(20),
                        borderSide: BorderSide.none),
                    contentPadding:
                        EdgeInsets.symmetric(horizontal: 10, vertical: 5)),
              ),
              SizedBox(
                height: 20,
              ),
              SingleChildScrollView(
                scrollDirection: Axis.horizontal,
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.start,
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Stack(alignment: Alignment.topLeft, children: [
                      CircleAvatar(
                        backgroundImage: NetworkImage(ImageCOnstant.profilepic),
                        radius: 30,
                      ),
                      Positioned(
                          top: 0,
                          left: 0,
                          child: CircleAvatar(
                            radius: 10,
                            backgroundImage: NetworkImage(
                                "https://th.bing.com/th/id/OIP.Baci_-540n0LhFBio_V1uAAAAA?rs=1&pid=ImgDetMain"),
                          )),
                    ]),
                    SizedBox(
                      width: 15,
                    ),
                    Row(
                      children: List.generate(
                          DummyDb.profile.length,
                          (index) => MyCircle(
                                profile: DummyDb.profile[index],
                              )),
                    )
                  ],
                ),
              ),
              SizedBox(
                height: 20,
              ),
              Row(
                children: [
                  InkWell(
                    onTap: () {
                      setState(() {});
                      Navigator.push(
                          context,
                          MaterialPageRoute(
                            builder: (context) => HomeTab(),
                          ));
                    },
                    child: Container(
                      padding:
                          EdgeInsets.symmetric(horizontal: 73.5, vertical: 5),
                      decoration: BoxDecoration(
                          color: ColorConstant.primaryBlack.withOpacity(.2),
                          borderRadius: BorderRadius.circular(20)),
                      child: Center(
                          child: Text(
                        "Home",
                        style: TextStyle(fontWeight: FontWeight.bold),
                      )),
                    ),
                  ),
                  InkWell(
                    onTap: () {
                      setState(() {});
                      Navigator.push(
                          context,
                          MaterialPageRoute(
                              builder: (context) => ChannelTab()));
                    },
                    child: Container(
                      padding:
                          EdgeInsets.symmetric(horizontal: 67, vertical: 5),
                      decoration: BoxDecoration(
                          color: ColorConstant.primaryBlack.withOpacity(.2),
                          borderRadius: BorderRadius.circular(20)),
                      child: Center(
                          child: Text(
                        "Channel",
                        style: TextStyle(fontWeight: FontWeight.bold),
                      )),
                    ),
                  )
                ],
              ),
            ],
          ),
        ),
      ),
    );
  }
}
