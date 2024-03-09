import 'package:flutter/material.dart';
import 'package:messenger_clone/core/constant/color_const.dart';

class StatusGrid extends StatelessWidget {
  const StatusGrid({super.key});

  @override
  Widget build(BuildContext context) {
    return Container(
      padding: EdgeInsets.symmetric(horizontal: 20, vertical: 20),
      child: Stack(
        children: [
          Container(
            height: 250,
            width: 180,
            decoration: BoxDecoration(
              borderRadius: BorderRadius.circular(20),
              color: Colors.amber,
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
                'Add to story',
                style: TextStyle(color: ColorConstant.primaryWhite),
              ))
        ],
      ),
    );
  }
}
