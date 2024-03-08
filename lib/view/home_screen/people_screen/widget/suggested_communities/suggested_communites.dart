import 'package:flutter/material.dart';
import 'package:messenger_clone/core/constant/color_const.dart';

class SuggestCommunities extends StatelessWidget {
  const SuggestCommunities(
      {super.key,
      required this.profile,
      required this.communitename,
      required this.followers});
  final String profile;
  final String communitename;
  final String followers;

  @override
  Widget build(BuildContext context) {
    return Row(
      children: [
        Container(
          height: 50,
          width: 50,
          decoration: BoxDecoration(
              shape: BoxShape.rectangle,
              borderRadius: BorderRadius.circular(10),
              image: DecorationImage(
                  image: NetworkImage(profile), fit: BoxFit.cover)),
        ),
        SizedBox(
          width: 10,
        ),
        Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Text(
              communitename,
              style: TextStyle(fontWeight: FontWeight.bold),
            ),
            Text(followers,
                style: TextStyle(
                    color: ColorConstant.primaryBlack.withOpacity(.4)))
          ],
        )
      ],
    );
  }
}
