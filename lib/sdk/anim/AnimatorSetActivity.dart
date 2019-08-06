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
        body: GridView.count(
          crossAxisCount: 4,
          children: <Widget>[
            BoxColor(
              child: rotatingPlane(),
              color: Color(0xFFD35413),
            ),
            BoxColor(
              child: doubleBounce(),
              color: Color(0xFF2F3E50),
            ),
            BoxColor(
              child: wave(),
              color: Color(0xFF00BA9B),
            ),
            BoxColor(
              child: fadingFour(),
              color: Color(0xFF323232),
            ),
            BoxColor(
              child: custom(),
              color: Color(0xFF00BA9B),
            ),
          ],
        ));
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
    return Container(
      width: 100,
      height: 100,
      child: Stack(
        children: <Widget>[
          AnimatorSet(
            animationType: AnimationType.reverse,
            child: Container(
              decoration: BoxDecoration(
                color: Colors.white,
                shape: BoxShape.circle,
              ),
              width: 100,
              height: 100,
            ),
            animatorSet: [
              Serial(
                duration: 2000,
                serialList: [
                  SX(from: 0.0, to: 1.0, curve: Curves.fastOutSlowIn),
                  SY(from: 0.0, to: 1.0, curve: Curves.fastOutSlowIn),
                  O(
                      from: 0.5,
                      to: 1.0,
                      delay: 1000,
                      curve: Curves.fastOutSlowIn),
                ],
              ),
            ],
          ),
          AnimatorSet(
            animationType: AnimationType.reverse,
            child: Container(
              decoration: BoxDecoration(
                color: Colors.white,
                shape: BoxShape.circle,
              ),
              width: 100,
              height: 100,
            ),
            animatorSet: [
              Serial(
                delay: 500,
                duration: 1500,
                serialList: [
                  SX(from: 0.0, to: 1.0, curve: Curves.fastOutSlowIn),
                  SY(from: 0.0, to: 1.0, curve: Curves.fastOutSlowIn),
                  O(
                      from: 0.5,
                      to: 1.0,
                      delay: 1000,
                      curve: Curves.fastOutSlowIn),
                ],
              ),
            ],
          ),
        ],
      ),
    );
  }

  Widget wave() {
    return Container(
      width: 100,
      height: 100,
      child: Row(
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        children: <Widget>[
          AnimatorSet(
            child: Container(
              color: Colors.white,
              width: 5,
              height: 15,
            ),
            animatorSet: [
              SY(from: 1.0, to: 1.4, duration: 500),
            ],
          ),
          AnimatorSet(
            child: Container(
              color: Colors.white,
              width: 5,
              height: 15,
            ),
            animatorSet: [
              SY(from: 1.0, to: 1.6, duration: 500),
            ],
          ),
//          AnimatorSet(
//            animationType: AnimationType.reverse,
//            child: Container(
//              color: Colors.white,
//              width: 5,
//              height: 15,
//            ),
//            animatorSet: [
//              Space(duration: 300),
//              SY(from: 1.0, to: 1.8, duration: 1000, delay: 300),
//            ],
//          ),
//          AnimatorSet(
//            animationType: AnimationType.reverse,
//            child: Container(
//              color: Colors.white,
//              width: 5,
//              height: 15,
//            ),
//            animatorSet: [
//              Space(duration: 200),
//              SY(from: 1.0, to: 2.0, duration: 1000, delay: 400),
//            ],
//          ),
//          AnimatorSet(
//            animationType: AnimationType.reverse,
//            child: Container(
//              color: Colors.white,
//              width: 5,
//              height: 15,
//            ),
//            animatorSet: [
//              Space(duration: 100),
//              SY(from: 1.0, to: 2.2, duration: 1000, delay: 500),
//            ],
//          ),
//          AnimatorSet(
//            animationType: AnimationType.reverse,
//            child: Container(
//              color: Colors.white,
//              width: 5,
//              height: 15,
//            ),
//            animatorSet: [
//              SY(from: 1.0, to: 2.4, duration: 1000, delay: 600),
//            ],
//          ),
        ],
      ),
    );
  }

  Widget fadingFour() {
    return Container(
      width: 100,
      height: 100,
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
                  width: 15,
                  height: 15,
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
                  width: 15,
                  height: 15,
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
                  width: 15,
                  height: 15,
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
                  width: 15,
                  height: 15,
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

  Widget custom() {
    return Container(
      width: 100,
      height: 100,
      child: Row(
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        children: <Widget>[
          AnimatorSet(
            animationType: AnimationType.reverse,
            child: Container(
              color: Colors.white,
              width: 5,
              height: 15,
            ),
            animatorSet: [
              Serial(
                duration: 1000,
                serialList: [
                  O(from: 0.0, to: 1.0),
                  RZ(from: 0.0, to: 2 * math.pi),
                ],
              )
            ],
          ),
          AnimatorSet(
            animationType: AnimationType.reverse,
            child: Container(
              color: Colors.white,
              width: 5,
              height: 15,
            ),
            animatorSet: [
              Serial(
                duration: 1000,
                serialList: [
                  O(from: 0.0, to: 1.0),
                  RZ(from: 0.0, to: 2 * math.pi),
                ],
              )
            ],
          ),
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
        SX(from: 1.0, to: 0.5, duration: 1000),
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

class BoxColor extends StatefulWidget {
  BoxColor({this.child, this.color = Colors.black});

  var child;
  var color;

  @override
  State<StatefulWidget> createState() {
    return BoxColorState();
  }
}

class BoxColorState extends State<BoxColor> {
  @override
  Widget build(BuildContext context) {
    return Center(
      child: Container(
        padding: EdgeInsets.all(30.0),
        child: widget.child,
        color: widget.color,
      ),
    );
  }
}
