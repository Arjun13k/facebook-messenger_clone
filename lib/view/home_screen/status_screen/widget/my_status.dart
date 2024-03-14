import 'package:flutter/material.dart';
import 'package:messenger_clone/core/constant/color_const.dart';
import 'package:messenger_clone/view/dummy_db.dart';

class MyStatus extends StatelessWidget {
  const MyStatus({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Add to story'),
        actions: [
          IconButton(onPressed: () {}, icon: Icon(Icons.file_present)),
          IconButton(onPressed: () {}, icon: Icon(Icons.done))
        ],
      ),
      body: SingleChildScrollView(
        child: Column(
          children: [
            Padding(
              padding: const EdgeInsets.all(20),
              child: Row(
                children: [
                  Container(
                    decoration: BoxDecoration(
                        borderRadius: BorderRadius.circular(20),
                        color: ColorConstant.primaryBlack.withOpacity(.1)),
                    padding: EdgeInsets.symmetric(horizontal: 60, vertical: 40),
                    child: Column(
                      children: [
                        Icon(Icons.camera_alt),
                        SizedBox(
                          height: 15,
                        ),
                        Text('Camera')
                      ],
                    ),
                  ),
                  SizedBox(
                    width: 10,
                  ),
                  Container(
                    decoration: BoxDecoration(
                        borderRadius: BorderRadius.circular(20),
                        color: ColorConstant.primaryBlack.withOpacity(.1)),
                    padding: EdgeInsets.symmetric(horizontal: 70, vertical: 35),
                    child: Column(
                      children: [
                        Text(
                          'Aa',
                          style: TextStyle(
                              fontWeight: FontWeight.bold, fontSize: 25),
                        ),
                        SizedBox(
                          height: 15,
                        ),
                        Text('Text')
                      ],
                    ),
                  )
                ],
              ),
            ),
            GridView.builder(
              shrinkWrap: true,
              physics: NeverScrollableScrollPhysics(),
              gridDelegate: SliverGridDelegateWithFixedCrossAxisCount(
                  crossAxisCount: 3, mainAxisSpacing: 5, crossAxisSpacing: 5),
              itemBuilder: (context, index) => Image.network(
                DummyDb.profile[index],
                fit: BoxFit.cover,
              ),
              itemCount: DummyDb.profile.length,
            )
          ],
        ),
      ),
    );
  }
}
