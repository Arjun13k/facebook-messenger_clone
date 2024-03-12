import 'package:flutter/material.dart';

class MarketPlace extends StatelessWidget {
  const MarketPlace({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text(
          'Marketplace',
          style: TextStyle(fontWeight: FontWeight.bold, fontSize: 25),
        ),
        actions: [IconButton(onPressed: () {}, icon: Icon(Icons.facebook))],
      ),
    );
  }
}
