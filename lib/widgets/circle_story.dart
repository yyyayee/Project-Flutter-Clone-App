import 'package:flutter/material.dart';

class CircleStory extends StatelessWidget {
  const CircleStory({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return const Padding(
      padding: EdgeInsets.all(6.0),
      child: ClipOval(
        child: Image(
          height: 80,
          width: 80,
          image: AssetImage(
              'assets/images/highlight.jpg'),
          fit: BoxFit.cover,
        ),
      ),
    );
  }
}
