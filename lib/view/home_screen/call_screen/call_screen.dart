import 'package:flutter/material.dart';
import 'package:messenger_clone/core/constant/color_const.dart';
import 'package:messenger_clone/view/dummy_db.dart';
import 'package:messenger_clone/view/home_screen/call_screen/widget/list_of_calls.dart';
import 'package:messenger_clone/view/home_screen/call_screen/widget/start_a_Call.dart';

class Call extends StatelessWidget {
  const Call({super.key});

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
        title: Text("Calls",
            style: TextStyle(fontWeight: FontWeight.bold, fontSize: 28)),
        actions: [
          IconButton.filledTonal(
            onPressed: () {
              Navigator.push(
                  context,
                  MaterialPageRoute(
                    builder: (context) => StartACall(),
                  ));
            },
            icon: Icon(
              Icons.call,
              size: 25,
            ),
          ),
          SizedBox(
            width: 10,
          ),
          IconButton.filledTonal(
            onPressed: () {},
            icon: Icon(
              Icons.videocam_rounded,
              size: 25,
            ),
          ),
          SizedBox(
            width: 10,
          )
        ],
      ),
      body: SingleChildScrollView(
        child: Padding(
          padding: const EdgeInsets.symmetric(horizontal: 15),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            mainAxisAlignment: MainAxisAlignment.start,
            children: [
              Container(
                padding: EdgeInsets.symmetric(vertical: 150),
                width: double.infinity,
                color: Colors.white,
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.center,
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                    Text(
                      "No calls",
                      style: TextStyle(
                          color: ColorConstant.primaryBlack.withOpacity(.4)),
                    ),
                    Text(
                      "Recent calls will appear here",
                      style: TextStyle(
                          color: ColorConstant.primaryBlack.withOpacity(.4)),
                    ),
                    Container(
                      padding:
                          EdgeInsets.symmetric(horizontal: 15, vertical: 5),
                      decoration: BoxDecoration(
                          color: ColorConstant.primaryblue,
                          borderRadius: BorderRadius.circular(10)),
                      child: InkWell(
                        onTap: () {
                          Navigator.push(
                              context,
                              MaterialPageRoute(
                                builder: (context) => StartACall(),
                              ));
                        },
                        child: Text("START A CALLS",
                            style: TextStyle(
                                color: ColorConstant.primaryWhite,
                                fontWeight: FontWeight.bold,
                                fontSize: 20)),
                      ),
                    )
                  ],
                ),
              ),
              Text(
                'Suggestions',
                style: TextStyle(
                    color: ColorConstant.primaryBlack.withOpacity(.4)),
              ),
              SizedBox(
                height: 10,
              ),
              Column(
                children: List.generate(
                    DummyDb.nameAndPic.length,
                    (index) => ListOfCalls(
                        username: DummyDb.nameAndPic[index]["username"],
                        profile: DummyDb.nameAndPic[index]["profile"])),
              )
            ],
          ),
        ),
      ),
    );
  }
}
