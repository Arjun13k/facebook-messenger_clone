import 'package:flutter/material.dart';
import 'package:messenger_clone/view/dummy_db.dart';
import 'package:messenger_clone/view/home_screen/people_screen/widget/facebook_updates/facebook_update.dart';

class SeeAllFb extends StatelessWidget {
  const SeeAllFb({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Facebook updates'),
      ),
      body: Padding(
        padding: const EdgeInsets.all(8.0),
        child: ListView.separated(
            shrinkWrap: true,
            itemBuilder: (context, index) => FacebookUpdates(
                profile: DummyDb.nameAndPic[index]["profile"],
                username: DummyDb.nameAndPic[index]["username"],
                message: DummyDb.nameAndPic[index]["message"]),
            separatorBuilder: (context, index) => SizedBox(
                  height: 10,
                ),
            itemCount: DummyDb.nameAndPic.length),
      ),
    );
  }
}
