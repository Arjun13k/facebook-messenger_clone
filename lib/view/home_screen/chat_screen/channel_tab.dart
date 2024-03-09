import 'package:flutter/material.dart';
import 'package:messenger_clone/core/constant/color_const.dart';
import 'package:messenger_clone/view/dummy_db.dart';
import 'package:messenger_clone/view/home_screen/people_screen/widget/suggest_for_you/suggest_for_you.dart';
import 'package:messenger_clone/view/home_screen/people_screen/widget/suggest_for_you/suggest_for_you_seeall.dart';

class ChannelTab extends StatelessWidget {
  const ChannelTab({super.key});

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        Row(
          children: [
            Text(
              'Discover channel',
              style:
                  TextStyle(color: ColorConstant.primaryBlack.withOpacity(.4)),
            ),
            SizedBox(
              width: 5,
            ),
            Icon(Icons.error_outline,
                color: ColorConstant.primaryBlack.withOpacity(.4)),
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
        Column(
          children: List.generate(
              3,
              (index) => SuggestForYou(
                  circleProfile: DummyDb.foryoulist[index]["circleprofile"],
                  continerProfile: DummyDb.foryoulist[index]["continerprofile"],
                  active: DummyDb.foryoulist[index]["Active"],
                  page: DummyDb.foryoulist[index]["page"],
                  pageName: DummyDb.foryoulist[index]["pagedetails"])),
        )
      ],
    );
  }
}
