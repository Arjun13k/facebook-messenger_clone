import 'package:flutter/material.dart';
import 'package:messenger_clone/view/dummy_db.dart';
import 'package:messenger_clone/view/home_screen/people_screen/widget/suggest_for_you/suggest_for_you.dart';

class SuggestForYouSeeAll extends StatelessWidget {
  const SuggestForYouSeeAll({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Community chat'),
      ),
      body: Padding(
        padding: const EdgeInsets.symmetric(horizontal: 10),
        child: ListView.separated(
            shrinkWrap: true,
            itemBuilder: (context, index) => SuggestForYou(
                circleProfile: DummyDb.foryoulist[index]["circleprofile"],
                continerProfile: DummyDb.foryoulist[index]["continerprofile"],
                active: DummyDb.foryoulist[index]["Active"],
                page: DummyDb.foryoulist[index]["page"],
                pageName: DummyDb.foryoulist[index]["pagedetails"]),
            separatorBuilder: (context, index) => SizedBox(
                  height: 10,
                ),
            itemCount: DummyDb.foryoulist.length),
      ),
    );
  }
}
