import 'package:flutter/material.dart';
import 'package:messenger_clone/core/constant/color_const.dart';
import 'package:messenger_clone/core/constant/global_widget/global_custom_button.dart';
import 'package:messenger_clone/core/constant/image_const.dart';
import 'package:messenger_clone/view/home_screen/chat_screen/chat_screen.dart';
import 'package:messenger_clone/view/bottom_navigation/bottom_navigation.dart';

class LoginScreen extends StatefulWidget {
  const LoginScreen({super.key});

  @override
  State<LoginScreen> createState() => _LoginScreenState();
}

class _LoginScreenState extends State<LoginScreen> {
  TextEditingController nameController = TextEditingController();
  TextEditingController passController = TextEditingController();

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      extendBodyBehindAppBar: true,
      appBar: AppBar(
        backgroundColor: Colors.transparent,
      ),
      body: Center(
        child: Padding(
          padding: const EdgeInsets.all(11),
          child: SingleChildScrollView(
            child: Column(
              mainAxisSize: MainAxisSize.min,
              children: [
                Image.asset(
                  ImageCOnstant.messengerlogo,
                  scale: 1.5,
                ),
                SizedBox(
                  height: 30,
                ),
                TextFormField(
                  controller: nameController,
                  onChanged: (value) {
                    setState(() {});
                  },
                  decoration: InputDecoration(
                    hintText: "Mobile number or email",
                    fillColor: ColorConstant.primaryGrey,
                    filled: true,
                    border: OutlineInputBorder(
                        borderRadius: BorderRadius.circular(9),
                        borderSide: BorderSide(
                          color: ColorConstant.primaryBlack.withOpacity(.1),
                          width: 3,
                        )),
                  ),
                ),
                SizedBox(
                  height: 10,
                ),
                TextFormField(
                  controller: passController,
                  onChanged: (value) {
                    setState(() {});
                  },
                  obscureText: true,
                  decoration: InputDecoration(
                    hintText: "Password",
                    fillColor: ColorConstant.primaryGrey,
                    filled: true,
                    border: OutlineInputBorder(
                        borderRadius: BorderRadius.circular(9),
                        borderSide: BorderSide(
                          width: 3,
                          color: ColorConstant.primaryBlack.withOpacity(.1),
                        )),
                  ),
                ),
                SizedBox(
                  height: 10,
                ),
                CustomButton(
                  ontap: () {
                    Navigator.pushAndRemoveUntil(
                        context,
                        MaterialPageRoute(
                          builder: (context) => BottomNav(),
                        ),
                        (route) => false);
                  },
                  text: "Log in",
                  haveBorder: false,
                  textColor: ColorConstant.primaryWhite,
                ),
                SizedBox(
                  height: 15,
                ),
                TextButton(
                    onPressed: () {},
                    child: Text(
                      "Forgot password?",
                      style: TextStyle(color: ColorConstant.primaryBlack),
                    )),
                SizedBox(
                  height: 150,
                ),
                CustomButton(
                  ontap: () {},
                  text: "Create new account",
                  haveBorder: true,
                  textColor: ColorConstant.primaryblue,
                  buttonColor: ColorConstant.primaryWhite,
                ),
              ],
            ),
          ),
        ),
      ),
    );
  }
}
