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
              child: wanderingCubes(),
              color: Color(0xFF3279B5),
            ),
            BoxColor(
              child: fadingFour(),
              color: Color(0xFF323232),
            ),
            BoxColor(
              child: fadingCube(),
              color: Color(0xFF58BD60),
            ),
            BoxColor(
              child: pulse(),
              color: Color(0xFF7D8A8B),
            ),
            BoxColor(
              child: customRotateIn(),
              color: Color(0xFF00BA9B),
            ),
            BoxColor(
              child: customFadeIn(),
              color: Color(0xFFFCCB63),
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
              SY(from: 0.8, to: 1.6, duration: 200),
              SY(from: 1.6, to: 0.8, duration: 200),
              Space(duration: 500),
            ],
          ),
          AnimatorSet(
            child: Container(
              color: Colors.white,
              width: 5,
              height: 15,
            ),
            animatorSet: [
              Space(duration: 100),
              SY(from: 0.8, to: 1.6, duration: 200),
              SY(from: 1.6, to: 0.8, duration: 200),
              Space(duration: 400),
            ],
          ),
          AnimatorSet(
            child: Container(
              color: Colors.white,
              width: 5,
              height: 15,
            ),
            animatorSet: [
              Space(duration: 200),
              SY(from: 0.8, to: 1.6, duration: 200),
              SY(from: 1.6, to: 0.8, duration: 200),
              Space(duration: 300),
            ],
          ),
          AnimatorSet(
            child: Container(
              color: Colors.white,
              width: 5,
              height: 15,
            ),
            animatorSet: [
              Space(duration: 300),
              SY(from: 0.8, to: 1.6, duration: 200),
              SY(from: 1.6, to: 0.8, duration: 200),
              Space(duration: 200),
            ],
          ),
          AnimatorSet(
            child: Container(
              color: Colors.white,
              width: 5,
              height: 15,
            ),
            animatorSet: [
              Space(duration: 400),
              SY(from: 0.8, to: 1.6, duration: 200),
              SY(from: 1.6, to: 0.8, duration: 200),
              Space(duration: 100),
            ],
          ),
          AnimatorSet(
            child: Container(
              color: Colors.white,
              width: 5,
              height: 15,
            ),
            animatorSet: [
              Space(duration: 500),
              SY(from: 0.8, to: 1.6, duration: 200),
              SY(from: 1.6, to: 0.8, duration: 200),
            ],
          ),
        ],
      ),
    );
  }

  Widget wanderingCubes() {
    return Container(
      width: 100,
      height: 100,
      child: Column(
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        children: <Widget>[
          Align(
            alignment: Alignment(-1.0, 0.0),
            child: AnimatorSet(
              child: Container(
                width: 10,
                height: 10,
                color: Colors.white,
              ),
              animatorSet: [
                Serial(duration: 500, serialList: [
                  TX(from: 0.0, to: 30.0, curve: Curves.easeInOut),
                  SX(from: 1.0, to: 0.5, curve: Curves.easeInOut),
                  RZ(from: 0.0, to: math.pi / 2, curve: Curves.easeInOut),
                ]),
                Serial(duration: 500, serialList: [
                  TY(from: 0.0, to: 30.0, curve: Curves.easeInOut),
                  SX(from: 1.0, to: 2.0, curve: Curves.easeInOut),
                  RZ(from: 0.0, to: math.pi / 2, curve: Curves.easeInOut),
                ]),
                Serial(duration: 500, serialList: [
                  TX(from: 0.0, to: -30.0, curve: Curves.easeInOut),
                  SX(from: 1.0, to: 0.5, curve: Curves.easeInOut),
                  RZ(from: 0.0, to: math.pi / 2, curve: Curves.easeInOut),
                ]),
                Serial(duration: 500, serialList: [
                  TY(from: 0.0, to: -30.0, curve: Curves.easeInOut),
                  SX(from: 1.0, to: 2.0, curve: Curves.easeInOut),
                  RZ(from: 0.0, to: math.pi / 2, curve: Curves.easeInOut),
                ]),
              ],
            ),
          ),
          Align(
            alignment: Alignment(1.0, 0.0),
            child: AnimatorSet(
              child: Container(
                width: 10,
                height: 10,
                color: Colors.white,
              ),
              animatorSet: [
                Serial(duration: 500, serialList: [
                  TX(from: 0.0, to: -30.0, curve: Curves.easeInOut),
                  SX(from: 1.0, to: 0.5, curve: Curves.easeInOut),
                  RZ(from: 0.0, to: math.pi / 2, curve: Curves.easeInOut),
                ]),
                Serial(duration: 500, serialList: [
                  TY(from: 0.0, to: -30.0, curve: Curves.easeInOut),
                  SX(from: 1.0, to: 2.0, curve: Curves.easeInOut),
                  RZ(from: 0.0, to: math.pi / 2, curve: Curves.easeInOut),
                ]),
                Serial(duration: 500, serialList: [
                  TX(from: 0.0, to: 30.0, curve: Curves.easeInOut),
                  SX(from: 1.0, to: 0.5, curve: Curves.easeInOut),
                  RZ(from: 0.0, to: math.pi / 2, curve: Curves.easeInOut),
                ]),
                Serial(duration: 500, serialList: [
                  TY(from: 0.0, to: 30.0, curve: Curves.easeInOut),
                  SX(from: 1.0, to: 2.0, curve: Curves.easeInOut),
                  RZ(from: 0.0, to: math.pi / 2, curve: Curves.easeInOut),
                ]),
              ],
            ),
          ),
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

  Widget fadingCube() {
    return Container(
      width: 100,
      height: 100,
      child: Transform.rotate(
        angle: math.pi / 4,
        child: Stack(
          children: <Widget>[
            Positioned(
              left: 0,
              top: 0,
              width: 20,
              height: 20,
              child: AnimatorSet(
                child: DecoratedBox(
                  decoration: BoxDecoration(
                    color: Colors.white,
                  ),
                ),
                animatorSet: [
                  Serial(
                    duration: 4000,
                    serialList: [
                      O(
                          from: 0.0,
                          to: 0.8,
                          delay: 500,
                          curve: Curves.easeInOut),
                    ],
                  ),
                ],
              ),
            ),
            Positioned(
              left: 20,
              top: 0,
              width: 20,
              height: 20,
              child: AnimatorSet(
                child: DecoratedBox(
                  decoration: BoxDecoration(
                    color: Colors.white,
                  ),
                ),
                animatorSet: [
                  Serial(
                    duration: 4000,
                    serialList: [
                      O(
                          from: 0.0,
                          to: 0.8,
                          delay: 1000,
                          curve: Curves.easeInOut),
                    ],
                  ),
                ],
              ),
            ),
            Positioned(
              left: 20,
              top: 20,
              width: 20,
              height: 20,
              child: AnimatorSet(
                child: DecoratedBox(
                  decoration: BoxDecoration(
                    color: Colors.white,
                  ),
                ),
                animatorSet: [
                  Serial(
                    duration: 4000,
                    serialList: [
                      O(
                          from: 0.0,
                          to: 0.8,
                          delay: 1500,
                          curve: Curves.easeInOut),
                    ],
                  ),
                ],
              ),
            ),
            Positioned(
              left: 0,
              top: 20,
              width: 20,
              height: 20,
              child: AnimatorSet(
                child: DecoratedBox(
                  decoration: BoxDecoration(
                    color: Colors.white,
                  ),
                ),
                animatorSet: [
                  Serial(
                    duration: 4000,
                    serialList: [
                      O(
                          from: 0.0,
                          to: 0.8,
                          delay: 2000,
                          curve: Curves.easeInOut),
                    ],
                  ),
                ],
              ),
            ),
          ],
        ),
      ),
    );
  }

  Widget pulse() {
    return Container(
      width: 100,
      height: 100,
      child: AnimatorSet(
        debug: true,
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
              SX(from: 0.0, to: 1.0, curve: Curves.easeInOut),
              O(from: 0.5, to: 0.0, delay: 1000, curve: Curves.easeInOut),
            ],
          ),
        ],
      ),
    );
  }

  Widget customRotateIn() {
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

  Widget customFadeIn() {
    return Container(
      width: 100,
      height: 100,
      child: Transform.rotate(
        angle: math.pi / 4,
        child: Stack(
          children: <Widget>[
            Positioned(
              left: 0,
              top: 0,
              width: 20,
              height: 20,
              child: AnimatorSet(
                child: DecoratedBox(
                  decoration: BoxDecoration(
                    color: Colors.white,
                  ),
                ),
                animatorSet: [
                  Serial(
                    duration: 2000,
                    serialList: [
                      SX(from: 0.0, to: 1.0, curve: Curves.easeInOut),
                      O(
                          from: 0.8,
                          to: 0.0,
                          delay: 1000,
                          curve: Curves.easeInOut),
                    ],
                  ),
                ],
              ),
            ),
            Positioned(
              left: 20,
              top: 0,
              width: 20,
              height: 20,
              child: AnimatorSet(
                child: DecoratedBox(
                  decoration: BoxDecoration(
                    color: Colors.white,
                  ),
                ),
                animatorSet: [
                  Serial(
                    duration: 2000,
                    serialList: [
                      SX(from: 0.0, to: 1.0, curve: Curves.easeInOut),
                      O(
                          from: 0.8,
                          to: 0.0,
                          delay: 1000,
                          curve: Curves.easeInOut),
                    ],
                  ),
                ],
              ),
            ),
            Positioned(
              left: 20,
              top: 20,
              width: 20,
              height: 20,
              child: AnimatorSet(
                child: DecoratedBox(
                  decoration: BoxDecoration(
                    color: Colors.white,
                  ),
                ),
                animatorSet: [
                  Serial(
                    duration: 2000,
                    serialList: [
                      SX(from: 0.0, to: 1.0, curve: Curves.easeInOut),
                      O(
                          from: 0.8,
                          to: 0.0,
                          delay: 1000,
                          curve: Curves.easeInOut),
                    ],
                  ),
                ],
              ),
            ),
            Positioned(
              left: 0,
              top: 20,
              width: 20,
              height: 20,
              child: AnimatorSet(
                child: DecoratedBox(
                  decoration: BoxDecoration(
                    color: Colors.white,
                  ),
                ),
                animatorSet: [
                  Serial(
                    duration: 2000,
                    serialList: [
                      SX(from: 0.0, to: 1.0, curve: Curves.easeInOut),
                      O(
                          from: 0.8,
                          to: 0.0,
                          delay: 1000,
                          curve: Curves.easeInOut),
                    ],
                  ),
                ],
              ),
            ),
          ],
        ),
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
