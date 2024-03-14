import 'package:flutter/material.dart';
import 'package:messenger_clone/core/constant/color_const.dart';
import 'package:messenger_clone/view/dummy_db.dart';
import 'package:messenger_clone/view/home_screen/chat_screen/widget/icon_widget/icon_list.dart';

class EditIcon extends StatelessWidget {
  const EditIcon({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('New message'),
        bottom: PreferredSize(
          preferredSize: Size.fromHeight(60),
          child: TextField(
            decoration: InputDecoration(
                border: UnderlineInputBorder(borderSide: BorderSide.none),
                prefixIcon: Padding(
                    padding: const EdgeInsets.only(top: 2.5, right: 6, left: 7),
                    child: Text(
                      'To :',
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
        child: Column(
          children: [
            Padding(
              padding: const EdgeInsets.symmetric(horizontal: 10, vertical: 10),
              child: Column(
                mainAxisAlignment: MainAxisAlignment.start,
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Row(
                    children: [
                      Icon(Icons.groups),
                      SizedBox(
                        width: 20,
                      ),
                      Text(
                        'Group chat',
                        style: TextStyle(
                            fontWeight: FontWeight.bold, fontSize: 18),
                      )
                    ],
                  ),
                  SizedBox(
                    height: 10,
                  ),
                  Text(
                    'Suggested',
                    style: TextStyle(
                        color: ColorConstant.primaryBlack.withOpacity(.4)),
                  ),
                  SizedBox(
                    height: 10,
                  ),
                  Column(
                    children: List.generate(
                        DummyDb.nameAndPic.length,
                        (index) => Padding(
                              padding: const EdgeInsets.all(8.0),
                              child: IconList(
                                profile: DummyDb.nameAndPic[index]["profile"],
                                username: DummyDb.nameAndPic[index]["username"],
                              ),
                            )),
                  )
                ],
              ),
            )
          ],
        ),
      ),
    );
  }
}
