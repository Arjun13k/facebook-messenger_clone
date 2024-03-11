import 'package:flutter/material.dart';
import 'package:messenger_clone/core/constant/color_const.dart';

class SuggestForYou extends StatefulWidget {
  const SuggestForYou(
      {super.key,
      required this.circleProfile,
      required this.continerProfile,
      required this.active,
      required this.page,
      required this.pageName});
  final String circleProfile;
  final String continerProfile;
  final String active;
  final String page;
  final String pageName;

  @override
  State<SuggestForYou> createState() => _SuggestForYouState();
}

class _SuggestForYouState extends State<SuggestForYou> {
  @override
  Widget build(BuildContext context) {
    return SizedBox(
      height: 60,
      child: Container(
        child: Row(
          mainAxisAlignment: MainAxisAlignment.start,
          children: [
            Stack(
              children: [
                Container(
                  height: 50,
                  width: 50,
                  color: Colors.transparent,
                ),
                Positioned(
                    top: 0,
                    right: 0,
                    child: Container(
                      height: 30,
                      width: 30,
                      decoration: BoxDecoration(
                          image: DecorationImage(
                              image: NetworkImage(widget.continerProfile),
                              fit: BoxFit.cover),
                          borderRadius: BorderRadius.circular(5)),
                    )),
                Positioned(
                  bottom: 0,
                  child: CircleAvatar(
                    backgroundColor: ColorConstant.primaryWhite,
                    radius: 18,
                    child: CircleAvatar(
                      backgroundImage: NetworkImage(widget.circleProfile),
                      radius: 15,
                    ),
                  ),
                )
              ],
            ),
            SizedBox(
              width: 10,
            ),
            Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [Text(widget.page), Text(widget.pageName)],
            ),
            SizedBox(
              width: 5,
            ),
            Column(
              children: [Text(""), Text(widget.active)],
            )
          ],
        ),
      ),
    );
  }
}
