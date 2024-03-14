import 'package:flutter/material.dart';
import 'package:messenger_clone/core/constant/color_const.dart';
import 'package:messenger_clone/core/constant/global_widget/global_custom_button.dart';
import 'package:messenger_clone/core/constant/image_const.dart';
import 'package:messenger_clone/view/login_screen/login_screen.dart';
import 'package:messenger_clone/view/bottom_navigation/bottom_navigation.dart';

class AccountScreen extends StatelessWidget {
  const AccountScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        body: Center(
      child: Padding(
        padding: const EdgeInsets.symmetric(horizontal: 15),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.center,
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            // 1 messenger logo
            Image.asset(
              ImageCOnstant.messengerlogo,
              scale: 1.5,
            ),
            SizedBox(
              height: 50,
            ),
            CircleAvatar(
              backgroundImage: NetworkImage(ImageCOnstant.profilepic),
              radius: 80,
            ),
            SizedBox(
              height: 10,
            ),
            Text(
              "Arjun k",
              style: TextStyle(fontWeight: FontWeight.bold, fontSize: 30),
            ),
            SizedBox(
              height: 40,
            ),
            // login button
            CustomButton(
                ontap: () {
                  Navigator.pushAndRemoveUntil(
                      context,
                      MaterialPageRoute(
                        builder: (context) => BottomNav(),
                      ),
                      (route) => false);
                },
                text: "Login",
                buttonColor: ColorConstant.primaryblue,
                textColor: ColorConstant.primaryWhite,
                haveBorder: false),
            SizedBox(
              height: 10,
            ),
            //login with other
            CustomButton(
              ontap: () {
                Navigator.push(
                    context,
                    MaterialPageRoute(
                      builder: (context) => LoginScreen(),
                    ));
              },
              text: "Log into another account",
              buttonColor: ColorConstant.primaryWhite,
              textColor: Colors.black,
              haveBorder: true,
            )
          ],
        ),
      ),
    ));
  }
}
