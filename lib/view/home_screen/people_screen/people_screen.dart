import 'package:flutter/material.dart';
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
                Icons.contact_phone,
              ))
        ],
      ),
      body: Column(
        children: [
          Text(
            "Active Now (135)",
            style: TextStyle(fontWeight: FontWeight.w100),
          ),
          SizedBox(
            height: 20,
          ),
          ListView.separated(
              shrinkWrap: true,
              itemBuilder: (context, index) => DownWardAvathar(
                  profile: DummyDb.nameAndPic[index]["profile"],
                  username: DummyDb.nameAndPic[index]["username"]),
              separatorBuilder: (context, index) => SizedBox(
                    height: 20,
                  ),
              itemCount: DummyDb.nameAndPic.length)
        ],
      ),
    );
  }
}
