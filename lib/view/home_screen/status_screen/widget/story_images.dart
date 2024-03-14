// import 'package:flutter/material.dart';

// class StoryImages extends StatefulWidget {
//   const StoryImages({super.key});

//   @override
//   State<StoryImages> createState() => _StoryImagesState();
// }

// class _StoryImagesState extends State<StoryImages>
//     with TickerProviderStateMixin {
//   late AnimationController controller;
//   @override
//   void initState() {
//     controller = AnimationController(
//       vsync: this,
//       duration: Duration(seconds: 5),
//     )..addListener(() {
//         setState(() {});
//       });
//     controller.repeat(reverse: true);
//     super.initState();
//   }

//   @override
//   void dispose() {
//     controller.dispose();
//     super.dispose();
//   }

//   Widget build(BuildContext context) {
//     return Scaffold(
//       body: Column(
//         children: <Widget>[
//           LinearProgressIndicator(
//             value: controller.value,
//           ),
//           LinearProgressIndicator()
//         ],
//       ),
//     );
//   }
// }
import 'package:flutter/material.dart';

class StoryImage extends StatelessWidget {
  const StoryImage({super.key});

  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(),
    );
  }
}
