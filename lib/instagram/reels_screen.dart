import 'package:flutter/material.dart';
import 'package:practice_widgets/data/reel_ex1.dart';
import 'package:practice_widgets/data/reel_ex10.dart';
import 'package:practice_widgets/data/reel_ex2.dart';
import 'package:practice_widgets/data/reel_ex3.dart';
import 'package:practice_widgets/data/reel_ex4.dart';
import 'package:practice_widgets/data/reel_ex5.dart';
import 'package:practice_widgets/data/reel_ex6.dart';
import 'package:practice_widgets/data/reel_ex7.dart';
import 'package:practice_widgets/data/reel_ex8.dart';
import 'package:practice_widgets/data/reel_ex9.dart';

class ReelsScreen extends StatelessWidget {
  ReelsScreen({Key? key}) : super(key: key);

  final _controller = PageController();
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: PageView(
        controller: _controller,
        scrollDirection: Axis.vertical,
        children: const [
          ReelEx1(),
          ReelEx2(),
          ReelEx3(),
          ReelEx4(),
          ReelEx5(),
          ReelEx6(),
          ReelEx7(),
          ReelEx8(),
          ReelEx9(),
          ReelEx10(),
        ],
      ),
    );
  }
}
