import 'package:flutter/material.dart';
import 'package:messenger_clone/view/splash_screen/splash_screen.dart';

void main() {
  runApp(MessengerClone());
}

class MessengerClone extends StatelessWidget {
  const MessengerClone({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      home: SplashScreen(),
    );
  }
}
