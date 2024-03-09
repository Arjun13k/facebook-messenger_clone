import 'package:flutter/material.dart';
import 'package:messenger_clone/view/home_screen/status_screen/widget/status_grid.dart';

class StatusScreen extends StatelessWidget {
  const StatusScreen({super.key});

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
        title: Text(
          'Stories',
          style: TextStyle(fontWeight: FontWeight.bold, fontSize: 28),
        ),
      ),
      body: StatusGrid(),
    );
  }
}
