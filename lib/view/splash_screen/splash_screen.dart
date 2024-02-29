import 'package:flutter/material.dart';
import 'package:messenger_clone/core/constant/image_const.dart';
import 'package:messenger_clone/view/account_screen/account_screen.dart';

class SplashScreen extends StatefulWidget {
  const SplashScreen({super.key});

  @override
  State<SplashScreen> createState() => _SplashScreenState();
}

class _SplashScreenState extends State<SplashScreen> {
  @override
  void initState() {
    Future.delayed(Duration(seconds: 3)).then((value) {
      Navigator.pushReplacement(
          context,
          MaterialPageRoute(
            builder: (context) => AccountScreen(),
          ));
    });
    super.initState();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Center(
        child: Image.asset(
          ImageCOnstant.messengerlogo,
          scale: 1.5,
        ),
      ),
    );
  }
}
