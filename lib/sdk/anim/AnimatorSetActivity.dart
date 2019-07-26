import 'package:flutter/material.dart';

import 'package:yyshop/sdk/anim/AnimatorSet.dart';
import 'action/animator.dart';

class AnimatorSetActivity extends StatefulWidget {
  @override
  State<StatefulWidget> createState() {
    return AnimatorSetState();
  }
}

class AnimatorSetState extends State<AnimatorSetActivity> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(),
      body: AnimatorSet(
        child: FlutterLogo(
          style: FlutterLogoStyle.horizontal,
          size: 200,
        ),
        animatorSet: [
          O(from: 0.0, to: 1.0, duration: 2000),
          S(from: 0.0, to: 1.0, duration: 2000, delay: 2000),
          R(from: 0.0, to: 1.0, duration: 2000),
          T(from: 0.0, to: 1.0, duration: 2000),
        ],
      ),
    );
  }
}
