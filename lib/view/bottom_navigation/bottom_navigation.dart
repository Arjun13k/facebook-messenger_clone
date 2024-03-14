import 'package:flutter/material.dart';
import 'package:messenger_clone/core/constant/color_const.dart';
import 'package:messenger_clone/core/constant/image_const.dart';
import 'package:messenger_clone/view/home_screen/call_screen/call_screen.dart';
import 'package:messenger_clone/view/home_screen/call_screen/widget/call_list/start_a_Call.dart';
import 'package:messenger_clone/view/home_screen/call_screen/widget/viedo_list/viedo_call_list.dart';
import 'package:messenger_clone/view/home_screen/chat_screen/chat_screen.dart';
import 'package:messenger_clone/view/home_screen/chat_screen/widget/icon_widget/icon_widget.dart';
import 'package:messenger_clone/view/home_screen/menu_bar/Archive.dart';
import 'package:messenger_clone/view/home_screen/menu_bar/market_place.dart';
import 'package:messenger_clone/view/home_screen/menu_bar/message_request.dart';
import 'package:messenger_clone/view/home_screen/menu_bar/personal_account/personal_acount.dart';
import 'package:messenger_clone/view/home_screen/people_screen/people_screen.dart';
import 'package:messenger_clone/view/home_screen/status_screen/status_screen.dart';

class BottomNav extends StatefulWidget {
  const BottomNav({super.key});

  @override
  State<BottomNav> createState() => _BottomNavState();
}

class _BottomNavState extends State<BottomNav> {
  int indexValue = 0;
  final List screen = [ChatScreen(), Call(), MyPeople(), StatusScreen()];
  final List<String> text = ["Chat", "Call", "People", "Stories"];

  late List secondIcon;
  late List icons;
  @override
  void initState() {
    secondIcon = [
      SizedBox(),
      IconButton(
          onPressed: () {
            Navigator.push(
                context,
                MaterialPageRoute(
                  builder: (context) => ViedoCall(),
                ));
          },
          icon: Icon(Icons.videocam)),
      SizedBox(),
      SizedBox()
    ];
    icons = [
      IconButton(
          onPressed: () {
            Navigator.push(
                context,
                MaterialPageRoute(
                  builder: (context) => EditIcon(),
                ));
          },
          icon: Icon(Icons.edit)),
      IconButton(
          onPressed: () {
            Navigator.push(
                context,
                MaterialPageRoute(
                  builder: (context) => StartACall(),
                ));
          },
          icon: Icon(Icons.call)),
      IconButton(
          onPressed: () {}, icon: Icon(Icons.quick_contacts_dialer_outlined)),
      SizedBox()
    ];

    super.initState();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text(
          text[indexValue],
          style: TextStyle(fontWeight: FontWeight.bold, fontSize: 28),
        ),
        actions: [
          icons[indexValue],
          secondIcon[indexValue],
        ],
      ),
      drawer: Drawer(
        child: ListView(
          padding: EdgeInsets.symmetric(horizontal: 10, vertical: 20),
          children: [
            InkWell(
              child: Container(
                child: Row(
                  children: [
                    CircleAvatar(
                      backgroundImage: NetworkImage(ImageCOnstant.profilepic),
                      radius: 30,
                    ),
                    SizedBox(
                      width: 20,
                    ),
                    Text(
                      "ARJUN K",
                      style:
                          TextStyle(fontSize: 20, fontWeight: FontWeight.bold),
                    ),
                    Icon(Icons.arrow_drop_down_rounded),
                    Spacer(),
                    IconButton(
                        onPressed: () {
                          Navigator.push(
                              context,
                              MaterialPageRoute(
                                builder: (context) => PersonalAcoount(),
                              ));
                        },
                        icon: Icon(Icons.settings))
                  ],
                ),
              ),
            ),
            ListTile(
              leading: Icon(
                Icons.chat_bubble,
                color: ColorConstant.primaryBlack,
              ),
              title: Text(
                'Chats',
                style: TextStyle(
                  color: ColorConstant.primaryBlack,
                ),
              ),
              onTap: () {
                Navigator.push(
                    context,
                    MaterialPageRoute(
                      builder: (context) => ChatScreen(),
                    ));
              },
            ),
            ListTile(
              leading: Icon(
                Icons.storefront,
                color: ColorConstant.primaryBlack,
              ),
              title: Text(
                'Marketplace',
                style: TextStyle(
                  color: ColorConstant.primaryBlack,
                ),
              ),
              onTap: () {
                Navigator.push(context,
                    MaterialPageRoute(builder: (context) => MarketPlace()));
              },
            ),
            ListTile(
              leading: Icon(
                Icons.message_rounded,
                color: ColorConstant.primaryBlack,
              ),
              title: Text(
                'Message request',
                style: TextStyle(
                  color: ColorConstant.primaryBlack,
                ),
              ),
              onTap: () {
                Navigator.push(
                    context,
                    MaterialPageRoute(
                      builder: (context) => MessageRequest(),
                    ));
              },
            ),
            ListTile(
              leading: Icon(
                Icons.inventory_2,
                color: ColorConstant.primaryBlack,
              ),
              title: Text(
                'Archive',
                style: TextStyle(
                  color: ColorConstant.primaryBlack,
                ),
              ),
              onTap: () {
                Navigator.push(
                    context,
                    MaterialPageRoute(
                      builder: (context) => Archive(),
                    ));
              },
            )
          ],
        ),
      ),
      body: screen[indexValue],
      bottomNavigationBar: BottomNavigationBar(
          onTap: (value) {
            setState(() {
              indexValue = value;
            });
          },
          type: BottomNavigationBarType.fixed,
          selectedItemColor: ColorConstant.primaryblue,
          unselectedItemColor: ColorConstant.primaryBlack.withOpacity(.4),
          currentIndex: indexValue,
          items: [
            BottomNavigationBarItem(
                icon: Icon(Icons.chat_bubble_outlined), label: "chat"),
            BottomNavigationBarItem(
                icon: Icon(Icons.videocam_rounded), label: "call"),
            BottomNavigationBarItem(icon: Icon(Icons.group), label: "people"),
            BottomNavigationBarItem(
                icon: Icon(Icons.layers_rounded), label: "Stories")
          ]),
    );
  }
}
