import 'package:flutter/material.dart';
import 'package:messenger_clone/core/constant/color_const.dart';
import 'package:messenger_clone/core/constant/image_const.dart';
import 'package:messenger_clone/view/dummy_db.dart';
import 'package:messenger_clone/view/home_screen/chat_screen/channel_tab.dart';
import 'package:messenger_clone/view/home_screen/chat_screen/chat_list.dart';
import 'package:messenger_clone/view/home_screen/chat_screen/widget/circleava_tab.dart';

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
