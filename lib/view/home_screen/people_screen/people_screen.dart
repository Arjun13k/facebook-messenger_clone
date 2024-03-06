import 'package:flutter/material.dart';
import 'package:messenger_clone/core/constant/color_const.dart';
import 'package:messenger_clone/view/dummy_db.dart';
import 'package:messenger_clone/view/home_screen/people_screen/people_screen_avathar.dart';

class MyPeople extends StatelessWidget {
  const MyPeople({super.key});

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
          'People',
          style: TextStyle(fontWeight: FontWeight.bold, fontSize: 28),
        ),
        actions: [
          IconButton.filledTonal(
              onPressed: () {},
              icon: Icon(
                Icons.contact_phone_outlined,
              ))
        ],
      ),
      body: SingleChildScrollView(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.start,
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Text(
              'Suggested communities',
              style:
                  TextStyle(color: ColorConstant.primaryBlack.withOpacity(.4)),
            ),
            SizedBox(
              height: 10,
            ),
            Text(
              "Active Now (135)",
              style:
                  TextStyle(color: ColorConstant.primaryBlack.withOpacity(.4)),
            ),
            SizedBox(
              height: 15,
            ),
            ListView.separated(
                shrinkWrap: true,
                physics: NeverScrollableScrollPhysics(),
                itemBuilder: (context, index) => DownWardAvathar(
                    profile: DummyDb.nameAndPic[index]["profile"],
                    username: DummyDb.nameAndPic[index]["username"]),
                separatorBuilder: (context, index) => SizedBox(
                      height: 20,
                    ),
                itemCount: DummyDb.nameAndPic.length)
          ],
        ),
      ),
    );
  }
}
