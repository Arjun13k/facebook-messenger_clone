import 'package:flutter/material.dart';
import 'package:messenger_clone/core/constant/color_const.dart';
import 'package:messenger_clone/view/dummy_db.dart';
import 'package:messenger_clone/view/home_screen/chat_screen/widget/home_widget/chat_align.dart';

class ChatInside extends StatelessWidget {
  const ChatInside({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        leading: IconButton(
            onPressed: () {
              Navigator.pop(context);
            },
            icon: Icon(Icons.arrow_back)),
        title: Row(
          children: [
            Stack(alignment: Alignment.bottomRight, children: [
              CircleAvatar(
                backgroundImage: NetworkImage(
                    "https://images.pexels.com/photos/7782941/pexels-photo-7782941.jpeg?auto=compress&cs=tinysrgb&w=1260&h=750&dpr=1"),
                radius: 20,
              ),
              Positioned(
                  bottom: 0,
                  child: CircleAvatar(
                    radius: 7,
                    backgroundColor: ColorConstant.primaryWhite,
                    child: CircleAvatar(
                      radius: 5,
                      backgroundColor: Colors.green,
                    ),
                  ))
            ]),
            SizedBox(
              width: 10,
            ),
            Column(
              mainAxisAlignment: MainAxisAlignment.start,
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Text(
                  'username',
                  style: TextStyle(fontSize: 20, fontWeight: FontWeight.bold),
                ),
                Text(
                  'Active now',
                  style: TextStyle(
                      fontSize: 15,
                      color: ColorConstant.primaryBlack.withOpacity(.4)),
                )
              ],
            ),
          ],
        ),
        actions: [
          Icon(
            Icons.call,
            color: ColorConstant.primaryblue,
          ),
          SizedBox(
            width: 10,
          ),
          Icon(
            Icons.videocam,
            color: ColorConstant.primaryblue,
          ),
          SizedBox(
            width: 10,
          ),
          Icon(
            Icons.error,
            color: ColorConstant.primaryblue,
          ),
          SizedBox(
            width: 10,
          ),
        ],
      ),
      body: Padding(
        padding: const EdgeInsets.symmetric(horizontal: 10, vertical: 10),
        child: Column(
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          children: [
            ListView.separated(
                shrinkWrap: true,
                itemBuilder: (context, index) => ChatAlign(
                    text: DummyDb.chat[index]["text"],
                    isSender: DummyDb.chat[index]["isSender"]),
                separatorBuilder: (context, index) => SizedBox(
                      height: 15,
                    ),
                itemCount: DummyDb.chat.length),
            Row(
              children: [
                Icon(
                  Icons.add,
                  color: ColorConstant.primaryblue,
                ),
                SizedBox(
                  width: 10,
                ),
                Icon(
                  Icons.camera_alt,
                  color: ColorConstant.primaryblue,
                ),
                SizedBox(
                  width: 10,
                ),
                Icon(
                  Icons.image,
                  color: ColorConstant.primaryblue,
                ),
                SizedBox(
                  width: 10,
                ),
                Icon(
                  Icons.mic,
                  color: ColorConstant.primaryblue,
                ),
                Expanded(
                  child: TextField(
                    decoration: InputDecoration(
                        isDense: true,
                        border: OutlineInputBorder(
                            borderSide: BorderSide.none,
                            borderRadius: BorderRadius.circular(25)),
                        filled: true,
                        hintText: "Message",
                        hintStyle: TextStyle(
                            color: ColorConstant.primaryBlack.withOpacity(.4)),
                        suffixIcon: Icon(
                          Icons.emoji_emotions,
                          color: ColorConstant.primaryblue,
                        )),
                  ),
                ),
                SizedBox(
                  width: 10,
                ),
                Icon(
                  Icons.thumb_up_alt,
                  color: ColorConstant.primaryblue,
                )
              ],
            )
          ],
        ),
      ),
    );
  }
}
