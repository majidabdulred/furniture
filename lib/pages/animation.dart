import 'package:flutter/material.dart';


class AnimateTest extends StatefulWidget {
  const AnimateTest({Key? key}) : super(key: key);

  @override
  State<AnimateTest> createState() => _AnimateTestState();
}

class _AnimateTestState extends State<AnimateTest> {

  double opacity =1;
  double margin = 20;
  double width = 200;
  Color color = Colors.blue;
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: AnimatedContainer(
        margin: EdgeInsets.all(20),
        width: width,
        color: color,
        duration: Duration(seconds: 1),

      ),

    );
  }
}
