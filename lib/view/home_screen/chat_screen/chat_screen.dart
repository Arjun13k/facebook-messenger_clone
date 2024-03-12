import 'package:flutter/material.dart';
import 'package:messenger_clone/core/constant/color_const.dart';
import 'package:messenger_clone/core/constant/image_const.dart';
import 'package:messenger_clone/view/dummy_db.dart';
import 'package:messenger_clone/view/home_screen/chat_screen/channel_tab.dart';
import 'package:messenger_clone/view/home_screen/chat_screen/chat_list.dart';
import 'package:messenger_clone/view/home_screen/chat_screen/home_tab.dart';
import 'package:messenger_clone/view/home_screen/chat_screen/widget/circleava_tab.dart';
import 'package:messenger_clone/view/home_screen/menu_bar/market_place.dart';

class ChatScreen extends StatefulWidget {
  ChatScreen({super.key});

  var currentContinerIndex = 0;
  @override
  State<ChatScreen> createState() => _ChatScreenState();
}

class _ChatScreenState extends State<ChatScreen> {
  @override
  Widget build(BuildContext context) {
    return DefaultTabController(
      length: 2,
      child: Scaffold(
        appBar: AppBar(
          // leading: IconButton.filledTonal(
          //   onPressed: () {},
          //   icon: Icon(
          //     Icons.menu,
          //     size: 25,
          //   ),
          // ),
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
        drawer: Drawer(
          child: ListView(
            padding: EdgeInsets.symmetric(horizontal: 10, vertical: 20),
            children: [
              InkWell(
                child: Container(
                  child: Row(
                    children: [
                      CircleAvatar(
                        radius: 30,
                      ),
                      SizedBox(
                        width: 20,
                      ),
                      Text(
                        "ARJUN K",
                        style: TextStyle(
                            fontSize: 20, fontWeight: FontWeight.bold),
                      ),
                      Icon(Icons.arrow_drop_down_rounded),
                      Spacer(),
                      IconButton(onPressed: () {}, icon: Icon(Icons.settings))
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
                onTap: () {},
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
                onTap: () {},
              )
            ],
          ),
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
                          backgroundImage:
                              NetworkImage(ImageCOnstant.profilepic),
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
                TabBar(
                    onTap: (value) {
                      setState(() {
                        widget.currentContinerIndex = value;
                      });
                    },
                    labelColor: ColorConstant.primaryBlack,
                    unselectedLabelColor:
                        ColorConstant.primaryBlack.withOpacity(.4),
                    indicatorSize: TabBarIndicatorSize.tab,
                    indicatorPadding:
                        EdgeInsets.symmetric(horizontal: 0, vertical: 5),
                    dividerHeight: 0,
                    indicator: BoxDecoration(
                        shape: BoxShape.rectangle,
                        borderRadius: BorderRadius.circular(50),
                        color: ColorConstant.primaryBlack.withOpacity(.1)),
                    tabs: [
                      Tab(
                        text: "Home",
                      ),
                      Tab(
                        text: "Channel",
                      )
                    ]),
                // TabBarView(children: [ChatList(), ChannelTab()])
                widget.currentContinerIndex == 0 ? ChatList() : ChannelTab()
              ],
            ),
          ),
        ),
      ),
    );
  }
}
