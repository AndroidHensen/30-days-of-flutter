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
      body: Center(
        child: buildLoading(),
      ),
    );
  }

  Widget buildDemo() {
    return AnimatorSet(
      child: FlutterLogo(
        style: FlutterLogoStyle.horizontal,
      ),
      animatorSet: [
        AnimOpacity(from: 0.5, to: 1.0, duration: 1000),
        AnimWidth(from: 50.0, to: 200.0, duration: 1000),
        AnimHeight(from: 50.0, to: 200.0, duration: 1000),
        AnimPadding(
          from: EdgeInsets.only(top: 16.0),
          to: EdgeInsets.only(top: 60.0),
          duration: 1000,
          delay: 500,
        ),
        AnimScale(from: 1.0, to: 0.5, duration: 1000),
        AnimRotate(from: 0.0, to: 0.5, duration: 1000),
        AnimTranslateX(from: 0.0, to: 300.0, duration: 1000),
        AnimColor(
          from: Colors.indigo[100],
          to: Colors.indigo[400],
          duration: 1000,
        ),
        AnimBorder(
          from: BorderRadius.circular(4.0),
          to: BorderRadius.circular(40.0),
          duration: 2000,
        ),
      ],
    );
  }

  Widget buildLoading() {
    return Row(
      mainAxisAlignment: MainAxisAlignment.center,
      crossAxisAlignment: CrossAxisAlignment.center,
      children: <Widget>[
        AnimatorSet(
          child: Container(
            width: 20,
            height: 20,
            color: Colors.blue,
          ),
          animatorSet: [
            AnimWidth(from: 20.0, to: 20.0, duration: 50),
            AnimHeight(from: 20.0, to: 20.0, duration: 50),
            AnimTranslateY(from: 0.0, to: -20.0, duration: 400),
          ],
        ),
        AnimatorSet(
          child: Container(
            width: 20,
            height: 20,
            color: Colors.blue,
          ),
          animatorSet: [
            AnimWidth(from: 20.0, to: 20.0, duration: 50),
            AnimHeight(from: 20.0, to: 20.0, duration: 50),
            AnimTranslateY(from: 0.0, to: -20.0, duration: 300, delay: 100),
          ],
        ),
        AnimatorSet(
          child: Container(
            width: 20,
            height: 20,
            color: Colors.blue,
          ),
          animatorSet: [
            AnimWidth(from: 20.0, to: 20.0, duration: 50),
            AnimHeight(from: 20.0, to: 20.0, duration: 50),
            AnimTranslateY(from: 0.0, to: -20.0, duration: 200, delay: 200),
          ],
        ),
      ],
    );
  }
}
