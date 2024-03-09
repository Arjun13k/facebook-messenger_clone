import 'package:flutter/material.dart';
import 'package:messenger_clone/core/constant/color_const.dart';
import 'package:messenger_clone/view/dummy_db.dart';
import 'package:messenger_clone/view/home_screen/call_screen/widget/call_list.dart';
import 'package:messenger_clone/view/home_screen/call_screen/widget/list_of_calls.dart';

class StartACall extends StatelessWidget {
  const StartACall({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(
          title: Text('Start an audio call'),
          bottom: PreferredSize(
            preferredSize: Size.fromHeight(60),
            child: TextField(
              decoration: InputDecoration(
                  border: UnderlineInputBorder(borderSide: BorderSide.none),
                  prefixIcon: Padding(
                      padding:
                          const EdgeInsets.only(top: 2.5, right: 6, left: 7),
                      child: Text(
                        'with :',
                        style: TextStyle(
                          fontSize: 16,
                          color: ColorConstant.primaryBlack.withOpacity(.4),
                        ),
                      )),
                  contentPadding: EdgeInsets.symmetric(horizontal: 10),
                  prefixStyle: TextStyle(color: ColorConstant.primaryBlack),
                  hintText: "Type a name or group",
                  enabledBorder: UnderlineInputBorder(
                      borderSide: BorderSide(
                          width: 1,
                          color: ColorConstant.primaryBlack.withOpacity(.4))),
                  hintStyle: TextStyle(
                      color: ColorConstant.primaryBlack.withOpacity(.4))),
            ),
          ),
        ),
        body: SingleChildScrollView(
          child: Padding(
            padding: const EdgeInsets.symmetric(horizontal: 10, vertical: 10),
            child: Column(
              children: [
                Row(
                  children: [
                    Icon(Icons.groups),
                    SizedBox(
                      width: 20,
                    ),
                    Text(
                      'Start a new group audio call',
                      style:
                          TextStyle(fontWeight: FontWeight.bold, fontSize: 18),
                    )
                  ],
                ),
                Column(
                  children: List.generate(
                      DummyDb.nameAndPic.length,
                      (index) => CallList(
                            profile: DummyDb.nameAndPic[index]["profile"],
                            username: DummyDb.nameAndPic[index]["username"],
                          )),
                )
              ],
            ),
          ),
        ));
  }
}
