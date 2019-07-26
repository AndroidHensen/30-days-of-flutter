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
      body: Column(
        children: <Widget>[
          AnimatorSet(
            child: FlutterLogo(
              style: FlutterLogoStyle.horizontal,
            ),
            animatorSet: [
              W(from: 50.0, to: 200.0, duration: 1000),
              H(from: 50.0, to: 200.0, duration: 1000),
              P(
                  from: EdgeInsets.only(top:16.0),
                  to: EdgeInsets.only(top:60.0),
                  duration: 2000),
              O(from: 0.2, to: 1.0, duration: 1000),
              S(from: 1.0, to: 0.5, duration: 1000, delay: 2000),
              R(from: 0.0, to: 0.5, duration: 1000),
              T(from: 0.0, to: 100.0, duration: 1000),
              C(
                from: Colors.indigo[100],
                to: Colors.indigo[400],
                duration: 1000,
              ),
              B(
                from: BorderRadius.circular(4.0),
                to: BorderRadius.circular(40.0),
                duration: 1000,
              ),
            ],
          ),
//          AnimatorSet(
//            child: FlutterLogo(
//              style: FlutterLogoStyle.horizontal,
//            ),
//            animatorSet: [
//              W(from: 50.0, to: 100.0, duration: 2000),
//              H(from: 50.0, to: 100.0, duration: 2000),
//              S(from: 0.0, to: 1.0, duration: 2000, delay: 2000),
//              R(from: 0.0, to: 1.0, duration: 2000),
//              T(from: 0.0, to: 1.0, duration: 2000),
//            ],
//          ),
//          AnimatorSet(
//            child: FlutterLogo(
//              style: FlutterLogoStyle.horizontal,
//            ),
//            animatorSet: [
//              W(from: 50.0, to: 100.0, duration: 2000),
//              H(from: 50.0, to: 100.0, duration: 2000),
//            ],
//          ),
        ],
      ),
    );
  }
}
