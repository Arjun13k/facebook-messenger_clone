import 'package:flutter/material.dart';
import 'package:messenger_clone/core/constant/color_const.dart';
import 'package:messenger_clone/view/home_screen/status_screen/widget/my_status.dart';
import 'package:messenger_clone/view/home_screen/status_screen/widget/story_images.dart';

class StatusGrid extends StatelessWidget {
  const StatusGrid(
      {super.key,
      required this.storyPic,
      required this.text,
      required this.circlePic,
      this.me = true});
  final String storyPic;
  final String text;
  final String circlePic;
  final bool me;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SingleChildScrollView(
        child: Padding(
          padding: const EdgeInsets.symmetric(horizontal: 8),
          child: Row(
            children: [
              me == true
                  ? InkWell(
                      onTap: () {
                        Navigator.push(
                            context,
                            MaterialPageRoute(
                              builder: (context) => MyStatus(),
                            ));
                      },
                      child: Container(
                        child: Stack(
                          children: [
                            Container(
                              height: 250,
                              width: 180,
                              decoration: BoxDecoration(
                                image: DecorationImage(
                                    image: NetworkImage(storyPic),
                                    fit: BoxFit.cover),
                                borderRadius: BorderRadius.circular(20),
                              ),
                            ),
                            Positioned(
                                top: 10,
                                left: 10,
                                child: CircleAvatar(
                                  radius: 30,
                                  child: Icon(
                                    Icons.add,
                                    size: 35,
                                  ),
                                )),
                            Positioned(
                                bottom: 10,
                                right: 15,
                                child: Text(
                                  text,
                                  style: TextStyle(
                                      fontWeight: FontWeight.bold,
                                      color: ColorConstant.primaryWhite),
                                ))
                          ],
                        ),
                      ),
                    )
                  : InkWell(
                      onTap: () {
                        Navigator.push(
                            context,
                            MaterialPageRoute(
                              builder: (context) => StoryImage(),
                            ));
                      },
                      child: Container(
                        child: Stack(
                          children: [
                            Container(
                              height: 250,
                              width: 180,
                              decoration: BoxDecoration(
                                image: DecorationImage(
                                    image: NetworkImage(storyPic),
                                    fit: BoxFit.cover),
                                borderRadius: BorderRadius.circular(20),
                              ),
                            ),
                            Positioned(
                                top: 10,
                                left: 10,
                                child: CircleAvatar(
                                    backgroundColor: Colors.blue,
                                    radius: 30,
                                    child: CircleAvatar(
                                      radius: 26,
                                      backgroundColor: Colors.white,
                                      child: CircleAvatar(
                                        backgroundImage:
                                            NetworkImage(circlePic),
                                      ),
                                    ))),
                            Positioned(
                                bottom: 10,
                                left: 15,
                                child: Text(
                                  text,
                                  style: TextStyle(
                                      color: ColorConstant.primaryWhite),
                                ))
                          ],
                        ),
                      ),
                    ),
            ],
          ),
        ),
      ),
    );
  }
}
