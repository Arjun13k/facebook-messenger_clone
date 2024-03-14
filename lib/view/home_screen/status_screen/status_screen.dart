import 'package:flutter/material.dart';
import 'package:messenger_clone/view/dummy_db.dart';
import 'package:messenger_clone/view/home_screen/status_screen/widget/status_grid.dart';

class StatusScreen extends StatelessWidget {
  const StatusScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SingleChildScrollView(
        child: GridView.builder(
          shrinkWrap: true,
          physics: NeverScrollableScrollPhysics(),
          gridDelegate: SliverGridDelegateWithFixedCrossAxisCount(
              childAspectRatio: 9 / 12,
              crossAxisCount: 2,
              mainAxisSpacing: 7,
              crossAxisSpacing: 0),
          itemCount: DummyDb.story.length,
          itemBuilder: (context, index) => StatusGrid(
            storyPic: DummyDb.story[index]["storyPic"],
            text: DummyDb.story[index]["text"],
            circlePic: DummyDb.story[index]["circlePic"],
            me: DummyDb.story[index]["me"],
          ),
        ),
      ),
    );
  }
}
