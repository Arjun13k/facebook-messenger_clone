import 'package:flutter/material.dart';
import 'package:messenger_clone/view/dummy_db.dart';
import 'package:messenger_clone/view/home_screen/people_screen/widget/suggested_communities/suggested_communites.dart';

class CommunitiesSeeAll extends StatelessWidget {
  const CommunitiesSeeAll({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Suggested communities'),
      ),
      body: Padding(
        padding: const EdgeInsets.symmetric(horizontal: 10),
        child: ListView.separated(
            shrinkWrap: true,
            itemBuilder: (context, index) => SuggestCommunities(
                profile: DummyDb.communiteeList[index]["profile"],
                communitename: DummyDb.communiteeList[index]["communitiesname"],
                followers: DummyDb.communiteeList[index]["followers"]),
            separatorBuilder: (context, index) => SizedBox(
                  height: 10,
                ),
            itemCount: DummyDb.communiteeList.length),
      ),
    );
  }
}
