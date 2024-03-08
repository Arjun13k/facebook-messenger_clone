import 'package:flutter/material.dart';
import 'package:messenger_clone/core/constant/color_const.dart';
import 'package:messenger_clone/view/dummy_db.dart';
import 'package:messenger_clone/view/home_screen/people_screen/widget/facebook_updates/facebook_seeall.dart';
import 'package:messenger_clone/view/home_screen/people_screen/widget/facebook_updates/facebook_update.dart';
import 'package:messenger_clone/view/home_screen/people_screen/widget/active_now/people_screen_avathar.dart';
import 'package:messenger_clone/view/home_screen/people_screen/widget/suggest_for_you/suggest_for_you.dart';
import 'package:messenger_clone/view/home_screen/people_screen/widget/suggest_for_you/suggest_for_you_seeall.dart';
import 'package:messenger_clone/view/home_screen/people_screen/widget/suggested_communities/communities_seeall.dart';
import 'package:messenger_clone/view/home_screen/people_screen/widget/suggested_communities/suggested_communites.dart';

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
        child: Padding(
          padding: const EdgeInsets.symmetric(horizontal: 10, vertical: 5),
          child: Column(
            mainAxisAlignment: MainAxisAlignment.start,
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Row(
                children: [
                  Text(
                    'Facebook updates(7)',
                    style: TextStyle(
                        color: ColorConstant.primaryBlack.withOpacity(.4)),
                  ),
                  Spacer(),
                  TextButton(
                      onPressed: () {
                        Navigator.push(
                            context,
                            MaterialPageRoute(
                              builder: (context) => SeeAllFb(),
                            ));
                      },
                      child: Text(
                        'See all',
                        style: TextStyle(
                            color: ColorConstant.primaryblue,
                            fontWeight: FontWeight.bold),
                      ))
                ],
              ),
              ListView.separated(
                  shrinkWrap: true,
                  itemBuilder: (context, index) => FacebookUpdates(
                        profile: DummyDb.nameAndPic[index]["profile"],
                        username: DummyDb.nameAndPic[index]["username"],
                        message: DummyDb.nameAndPic[index]["message"],
                      ),
                  separatorBuilder: (context, index) => SizedBox(
                        height: 7,
                      ),
                  itemCount: 3),
              SizedBox(
                height: 5,
              ),
              Row(
                children: [
                  Text(
                    'Suggested for you',
                    style: TextStyle(
                        color: ColorConstant.primaryBlack.withOpacity(.4)),
                  ),
                  Spacer(),
                  TextButton(
                      onPressed: () {
                        Navigator.push(
                            context,
                            MaterialPageRoute(
                              builder: (context) => SuggestForYouSeeAll(),
                            ));
                      },
                      child: Text(
                        'See all',
                        style: TextStyle(
                            color: ColorConstant.primaryblue,
                            fontWeight: FontWeight.bold),
                      ))
                ],
              ),
              ListView.separated(
                  shrinkWrap: true,
                  itemBuilder: (context, index) => SuggestForYou(
                      circleProfile: DummyDb.foryoulist[index]["circleprofile"],
                      continerProfile: DummyDb.foryoulist[index]
                          ["continerprofile"],
                      active: DummyDb.foryoulist[index]["Active"],
                      page: DummyDb.foryoulist[index]["page"],
                      pageName: DummyDb.foryoulist[index]["pagedetails"]),
                  separatorBuilder: (context, index) => SizedBox(
                        height: 5,
                      ),
                  itemCount: 3),
              SizedBox(
                height: 5,
              ),
              Row(
                children: [
                  Text(
                    'Suggested communities',
                    style: TextStyle(
                        color: ColorConstant.primaryBlack.withOpacity(.4)),
                  ),
                  Spacer(),
                  TextButton(
                      onPressed: () {
                        Navigator.push(
                            context,
                            MaterialPageRoute(
                              builder: (context) => CommunitiesSeeAll(),
                            ));
                      },
                      child: Text(
                        'See all',
                        style: TextStyle(
                            color: ColorConstant.primaryblue,
                            fontWeight: FontWeight.bold),
                      ))
                ],
              ),
              ListView.separated(
                  shrinkWrap: true,
                  itemBuilder: (context, index) => SuggestCommunities(
                      profile: DummyDb.communiteeList[index]["profile"],
                      communitename: DummyDb.communiteeList[index]
                          ["communitiesname"],
                      followers: DummyDb.communiteeList[index]["followers"]),
                  separatorBuilder: (context, index) => SizedBox(
                        height: 5,
                      ),
                  itemCount: 3),
              SizedBox(
                height: 5,
              ),
              Text(
                "Active Now (135)",
                style: TextStyle(
                    color: ColorConstant.primaryBlack.withOpacity(.4)),
              ),
              SizedBox(
                height: 8,
              ),
              ListView.separated(
                  shrinkWrap: true,
                  physics: NeverScrollableScrollPhysics(),
                  itemBuilder: (context, index) => DownWardAvathar(
                      profile: DummyDb.nameAndPic[index]["profile"],
                      username: DummyDb.nameAndPic[index]["username"]),
                  separatorBuilder: (context, index) => SizedBox(
                        height: 7,
                      ),
                  itemCount: DummyDb.nameAndPic.length),
            ],
          ),
        ),
      ),
    );
  }
}
