import 'package:flutter/material.dart';

import 'package:yyshop/sdk/anim/AnimatorSet.dart';
import 'action/animator.dart';
import 'dart:math' as math;

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
      backgroundColor: Colors.deepOrangeAccent[200],
      body: Center(
        child: doubleBounce(),
      ),
    );
  }

  Widget rotatingPlane() {
    return AnimatorSet(
      child: Container(
        width: 100,
        height: 100,
        color: Colors.white,
      ),
      animatorSet: [
        RX(from: 0.0, to: math.pi, duration: 600, curve: Curves.easeIn),
        RY(from: 0.0, to: math.pi, duration: 600, curve: Curves.easeOut),
      ],
    );
  }

  Widget doubleBounce() {
    return Stack(
      children: <Widget>[
        AnimatorSet(
          child: Container(
            decoration: BoxDecoration(
              color: Colors.white,
              shape: BoxShape.circle,
            ),
            width: 20,
            height: 20,
          ),
          animatorSet: [
            Serial(
              duration: 2000,
              serialList: [
                S(from: 1.5, to: 4.0, curve: Curves.fastOutSlowIn),
                O(from: 0.5, to: 1.0, delay: 1000, curve: Curves.fastOutSlowIn),
              ],
            ),
          ],
        ),
        AnimatorSet(
          child: Container(
            decoration: BoxDecoration(
              color: Colors.white,
              shape: BoxShape.circle,
            ),
            width: 20,
            height: 20,
          ),
          animatorSet: [
            Serial(
              delay: 500,
              duration: 1500,
              serialList: [
                S(from: 1.5, to: 4.0, curve: Curves.fastOutSlowIn),
                O(from: 0.5, to: 1.0, delay: 1000, curve: Curves.fastOutSlowIn),
              ],
            ),
          ],
        ),
      ],
    );
  }

  Widget fadingFour() {
    return Container(
      width: 60,
      height: 60,
      child: Column(
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        children: <Widget>[
          Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: <Widget>[
              AnimatorSet(
                child: Container(
                  decoration: BoxDecoration(
                    color: Colors.white,
                    shape: BoxShape.circle,
                  ),
                  width: 20,
                  height: 20,
                ),
                animatorSet: [
                  Serial(
                    duration: 1000,
                    serialList: [
                      O(from: 0.0, to: 1.0),
                      RZ(from: 0.0, to: math.pi),
                    ],
                  )
                ],
              ),
              AnimatorSet(
                child: Container(
                  decoration: BoxDecoration(
                    color: Colors.white,
                    shape: BoxShape.circle,
                  ),
                  width: 20,
                  height: 20,
                ),
                animatorSet: [
                  Serial(
                    duration: 800,
                    delay: 200,
                    serialList: [
                      O(from: 0.0, to: 1.0),
                      RZ(from: 0.0, to: math.pi),
                    ],
                  )
                ],
              ),
            ],
          ),
          Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: <Widget>[
              AnimatorSet(
                child: Container(
                  decoration: BoxDecoration(
                    color: Colors.white,
                    shape: BoxShape.circle,
                  ),
                  width: 20,
                  height: 20,
                ),
                animatorSet: [
                  Serial(
                    duration: 400,
                    delay: 600,
                    serialList: [
                      O(from: 0.0, to: 1.0),
                      RZ(from: 0.0, to: math.pi),
                    ],
                  )
                ],
              ),
              AnimatorSet(
                child: Container(
                  decoration: BoxDecoration(
                    color: Colors.white,
                    shape: BoxShape.circle,
                  ),
                  width: 20,
                  height: 20,
                ),
                animatorSet: [
                  Serial(
                    duration: 600,
                    delay: 400,
                    serialList: [
                      O(from: 0.0, to: 1.0),
                      RZ(from: 0.0, to: math.pi),
                    ],
                  )
                ],
              ),
            ],
          )
        ],
      ),
    );
  }

  Widget testApi() {
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
        RZ(from: 0.0, to: 0.5, duration: 1000),
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
}
