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
        O(from: 0.5, to: 1.0, duration: 1000),
        W(from: 50.0, to: 200.0, duration: 1000),
        H(from: 50.0, to: 200.0, duration: 1000),
        P(
          from: EdgeInsets.only(top: 16.0),
          to: EdgeInsets.only(top: 60.0),
          duration: 1000,
          delay: 500,
        ),
        S(from: 1.0, to: 0.5, duration: 1000),
        R(from: 0.0, to: 0.5, duration: 1000),
        TX(from: 0.0, to: 300.0, duration: 1000),
        C(
          from: Colors.indigo[100],
          to: Colors.indigo[400],
          duration: 1000,
        ),
        B(
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
            decoration: BoxDecoration(
              color: Colors.blue,
              shape: BoxShape.circle,
            ),
            width: 20,
            height: 20,
          ),
          animatorSet: [
            S(
              from: 0.5,
              to: 0.8,
              duration: 400,
              curve: Curves.fastOutSlowIn,
            ),
          ],
        ),
        AnimatorSet(
          child: Container(
            decoration: BoxDecoration(
              color: Colors.blue,
              shape: BoxShape.circle,
            ),
            width: 20,
            height: 20,
          ),
          animatorSet: [
            S(
              from: 0.5,
              to: 0.8,
              duration: 300,
              delay: 100,
              curve: Curves.fastOutSlowIn,
            ),
          ],
        ),
        AnimatorSet(
          child: Container(
            decoration: BoxDecoration(
              color: Colors.blue,
              shape: BoxShape.circle,
            ),
            width: 20,
            height: 20,
          ),
          animatorSet: [
            S(
              from: 0.5,
              to: 0.8,
              duration: 200,
              delay: 200,
              curve: Curves.fastOutSlowIn,
            ),
          ],
        ),
      ],
    );
  }

  Widget buildShiny() {
    return Stack(
      children: <Widget>[
        AnimatorSet(
          child: Container(
            color: Colors.blue[200],
            width: 20,
            height: 20,
          ),
          animatorSet: [
            Serial(
              delay: 500,
              duration: 2000,
              serialList: [
                S(from: 0.5, to: 4.0, curve: Curves.fastOutSlowIn),
                R(from: 0.0, to: 3.5, delay: 1000, curve: Curves.fastOutSlowIn),
              ],
            ),
          ],
        ),
      ],
    );
  }
}
