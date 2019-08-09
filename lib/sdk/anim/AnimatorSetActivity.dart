import 'dart:math' as math;

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
        body: GridView.count(
          crossAxisCount: 4,
          children: <Widget>[
            BoxColor(child: rotatingPlane(), color: Color(0xFFD35413)),
            BoxColor(child: doubleBounce(), color: Color(0xFF2F3E50)),
            BoxColor(child: wave(), color: Color(0xFF00BA9B)),
            BoxColor(child: wanderingCubes(), color: Color(0xFF3279B5)),
            BoxColor(child: fadingFour(), color: Color(0xFF323232)),
            BoxColor(child: fadingCube(), color: Color(0xFF58BD60)),
            BoxColor(child: pulse(), color: Color(0xFF7D8A8B)),
            BoxColor(child: threeBounce(), color: Color(0xFFD35413)),
            BoxColor(child: cubeGrid(), color: Color(0xFFD35413)),
            BoxColor(child: rotatingCircle(), color: Color(0xFF3279B5)),
            BoxColor(child: pumpingHeart(), color: Color(0xFFF4A352)),
            BoxColor(child: customRotateIn(), color: Color(0xFF00BA9B)),
            BoxColor(child: customFadeIn(), color: Color(0xFFFCCB63)),
            BoxColor(child: customGrid(), color: Color(0xFF323232)),
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
                  O(from: 0.5, to: 0.8, curve: Curves.fastOutSlowIn),
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
                delay: 200,
                duration: 2000,
                serialList: [
                  SX(from: 0.0, to: 1.0, curve: Curves.fastOutSlowIn),
                  SY(from: 0.0, to: 1.0, curve: Curves.fastOutSlowIn),
                  O(from: 0.5, to: 1.0, curve: Curves.fastOutSlowIn),
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
              Delay(duration: 500),
            ],
          ),
          AnimatorSet(
            child: Container(
              color: Colors.white,
              width: 5,
              height: 15,
            ),
            animatorSet: [
              Delay(duration: 100),
              SY(from: 0.8, to: 1.6, duration: 200),
              SY(from: 1.6, to: 0.8, duration: 200),
              Delay(duration: 400),
            ],
          ),
          AnimatorSet(
            child: Container(
              color: Colors.white,
              width: 5,
              height: 15,
            ),
            animatorSet: [
              Delay(duration: 200),
              SY(from: 0.8, to: 1.6, duration: 200),
              SY(from: 1.6, to: 0.8, duration: 200),
              Delay(duration: 300),
            ],
          ),
          AnimatorSet(
            child: Container(
              color: Colors.white,
              width: 5,
              height: 15,
            ),
            animatorSet: [
              Delay(duration: 300),
              SY(from: 0.8, to: 1.6, duration: 200),
              SY(from: 1.6, to: 0.8, duration: 200),
              Delay(duration: 200),
            ],
          ),
          AnimatorSet(
            child: Container(
              color: Colors.white,
              width: 5,
              height: 15,
            ),
            animatorSet: [
              Delay(duration: 400),
              SY(from: 0.8, to: 1.6, duration: 200),
              SY(from: 1.6, to: 0.8, duration: 200),
              Delay(duration: 100),
            ],
          ),
          AnimatorSet(
            child: Container(
              color: Colors.white,
              width: 5,
              height: 15,
            ),
            animatorSet: [
              Delay(duration: 500),
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
                  SY(from: 1.0, to: 0.5, curve: Curves.easeInOut),
                  RZ(from: 0.0, to: math.pi / 2, curve: Curves.easeInOut),
                ]),
                Serial(duration: 500, serialList: [
                  TY(from: 0.0, to: 30.0, curve: Curves.easeInOut),
                  SX(from: 1.0, to: 2.0, curve: Curves.easeInOut),
                  SY(from: 1.0, to: 2.0, curve: Curves.easeInOut),
                  RZ(from: 0.0, to: math.pi / 2, curve: Curves.easeInOut),
                ]),
                Serial(duration: 500, serialList: [
                  TX(from: 0.0, to: -30.0, curve: Curves.easeInOut),
                  SX(from: 1.0, to: 0.5, curve: Curves.easeInOut),
                  SY(from: 1.0, to: 0.5, curve: Curves.easeInOut),
                  RZ(from: 0.0, to: math.pi / 2, curve: Curves.easeInOut),
                ]),
                Serial(duration: 500, serialList: [
                  TY(from: 0.0, to: -30.0, curve: Curves.easeInOut),
                  SX(from: 1.0, to: 2.0, curve: Curves.easeInOut),
                  SY(from: 1.0, to: 2.0, curve: Curves.easeInOut),
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
                  SY(from: 1.0, to: 0.5, curve: Curves.easeInOut),
                  RZ(from: 0.0, to: math.pi / 2, curve: Curves.easeInOut),
                ]),
                Serial(duration: 500, serialList: [
                  TY(from: 0.0, to: -30.0, curve: Curves.easeInOut),
                  SX(from: 1.0, to: 2.0, curve: Curves.easeInOut),
                  SY(from: 1.0, to: 2.0, curve: Curves.easeInOut),
                  RZ(from: 0.0, to: math.pi / 2, curve: Curves.easeInOut),
                ]),
                Serial(duration: 500, serialList: [
                  TX(from: 0.0, to: 30.0, curve: Curves.easeInOut),
                  SX(from: 1.0, to: 0.5, curve: Curves.easeInOut),
                  SY(from: 1.0, to: 0.5, curve: Curves.easeInOut),
                  RZ(from: 0.0, to: math.pi / 2, curve: Curves.easeInOut),
                ]),
                Serial(duration: 500, serialList: [
                  TY(from: 0.0, to: 30.0, curve: Curves.easeInOut),
                  SX(from: 1.0, to: 2.0, curve: Curves.easeInOut),
                  SY(from: 1.0, to: 2.0, curve: Curves.easeInOut),
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
                  Delay(duration: 0),
                  O(from: 0.0, to: 1.0, duration: 1000),
                  O(from: 1.0, to: 0.0, duration: 1000),
                  Delay(duration: 2000),
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
                  Delay(duration: 500),
                  O(from: 0.0, to: 1.0, duration: 1000),
                  O(from: 1.0, to: 0.0, duration: 1000),
                  Delay(duration: 1500),
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
                  Delay(duration: 1500),
                  O(from: 0.0, to: 1.0, duration: 1000),
                  O(from: 1.0, to: 0.0, duration: 1000),
                  Delay(duration: 500),
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
                  Delay(duration: 1000),
                  O(from: 0.0, to: 0.5, duration: 1000),
                  O(from: 1.0, to: 0.0, duration: 1000),
                  Delay(duration: 1000),
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
                  Delay(duration: 0),
                  O(from: 0.0, to: 1.0, duration: 1000),
                  O(from: 1.0, to: 0.0, duration: 1000),
                  Delay(duration: 2000),
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
                  Delay(duration: 500),
                  O(from: 0.0, to: 1.0, duration: 1000),
                  O(from: 1.0, to: 0.0, duration: 1000),
                  Delay(duration: 1500),
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
                  Delay(duration: 1000),
                  O(from: 0.0, to: 1.0, duration: 1000),
                  O(from: 1.0, to: 0.0, duration: 1000),
                  Delay(duration: 1000),
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
                  Delay(duration: 1500),
                  O(from: 0.0, to: 1.0, duration: 1000),
                  O(from: 1.0, to: 0.0, duration: 1000),
                  Delay(duration: 500),
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
              SY(from: 0.0, to: 1.0, curve: Curves.easeInOut),
              O(from: 0.5, to: 0.0, delay: 1000, curve: Curves.easeInOut),
            ],
          ),
        ],
      ),
    );
  }

  Widget threeBounce() {
    return Container(
        width: 100,
        height: 100,
        child: Row(
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          children: <Widget>[
            AnimatorSet(
              child: Container(
                decoration: BoxDecoration(
                  color: Colors.white,
                  shape: BoxShape.circle,
                ),
                width: 10,
                height: 10,
              ),
              animatorSet: [
                Serial(
                  duration: 1000,
                  serialList: [
                    SX(from: 0.0, to: 1.0, curve: Curves.easeInOut),
                    SY(from: 0.0, to: 1.0, curve: Curves.easeInOut),
                  ],
                ),
                Serial(
                  duration: 1000,
                  serialList: [
                    SX(from: 1.0, to: 0.0, curve: Curves.easeInOut),
                    SY(from: 1.0, to: 0.0, curve: Curves.easeInOut),
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
                width: 10,
                height: 10,
              ),
              animatorSet: [
                Serial(
                  delay: 200,
                  duration: 1000,
                  serialList: [
                    SX(from: 0.0, to: 1.0, curve: Curves.easeInOut),
                    SY(from: 0.0, to: 1.0, curve: Curves.easeInOut),
                  ],
                ),
                Serial(
                  duration: 1000,
                  serialList: [
                    SX(from: 1.0, to: 0.0, curve: Curves.easeInOut),
                    SY(from: 1.0, to: 0.0, curve: Curves.easeInOut),
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
                width: 10,
                height: 10,
              ),
              animatorSet: [
                Serial(
                  delay: 400,
                  duration: 1000,
                  serialList: [
                    SX(from: 0.0, to: 1.0, curve: Curves.easeInOut),
                    SY(from: 0.0, to: 1.0, curve: Curves.easeInOut),
                  ],
                ),
                Serial(
                  duration: 1000,
                  serialList: [
                    SX(from: 1.0, to: 0.0, curve: Curves.easeInOut),
                    SY(from: 1.0, to: 0.0, curve: Curves.easeInOut),
                  ],
                ),
              ],
            ),
          ],
        ));
  }

  Widget cubeGrid() {
    return Container(
      width: 100,
      height: 100,
      child: Stack(
        children: <Widget>[
          Positioned(
            left: 0,
            top: 0,
            width: 10,
            height: 10,
            child: AnimatorSet(
              child: DecoratedBox(
                decoration: BoxDecoration(
                  color: Colors.white,
                ),
              ),
              animatorSet: [
                Delay(duration: 200),
                Serial(duration: 500, serialList: [
                  SX(from: 0.0, to: 1.0),
                  SY(from: 0.0, to: 1.0),
                ]),
                Delay(duration: 1600),
                Serial(duration: 500, serialList: [
                  SX(from: 1.0, to: 0.0),
                  SY(from: 1.0, to: 0.0),
                ]),
                Delay(duration: 200),
              ],
            ),
          ),
          Positioned(
            left: 10,
            top: 0,
            width: 10,
            height: 10,
            child: AnimatorSet(
              child: DecoratedBox(
                decoration: BoxDecoration(
                  color: Colors.white,
                ),
              ),
              animatorSet: [
                Delay(duration: 100),
                Serial(duration: 500, serialList: [
                  SX(from: 0.0, to: 1.0),
                  SY(from: 0.0, to: 1.0),
                ]),
                Delay(duration: 1800),
                Serial(duration: 500, serialList: [
                  SX(from: 1.0, to: 0.0),
                  SY(from: 1.0, to: 0.0),
                ]),
                Delay(duration: 100),
              ],
            ),
          ),
          Positioned(
            left: 20,
            top: 0,
            width: 10,
            height: 10,
            child: AnimatorSet(
              child: DecoratedBox(
                decoration: BoxDecoration(
                  color: Colors.white,
                ),
              ),
              animatorSet: [
                Serial(duration: 500, serialList: [
                  SX(from: 0.0, to: 1.0),
                  SY(from: 0.0, to: 1.0),
                ]),
                Delay(duration: 2000),
                Serial(duration: 500, serialList: [
                  SX(from: 1.0, to: 0.0),
                  SY(from: 1.0, to: 0.0),
                ]),
              ],
            ),
          ),
          Positioned(
            left: 0,
            top: 10,
            width: 10,
            height: 10,
            child: AnimatorSet(
              child: DecoratedBox(
                decoration: BoxDecoration(
                  color: Colors.white,
                ),
              ),
              animatorSet: [
                Delay(duration: 300),
                Serial(duration: 500, serialList: [
                  SX(from: 0.0, to: 1.0),
                  SY(from: 0.0, to: 1.0),
                ]),
                Delay(duration: 1400),
                Serial(duration: 500, serialList: [
                  SX(from: 1.0, to: 0.0),
                  SY(from: 1.0, to: 0.0),
                ]),
                Delay(duration: 300),
              ],
            ),
          ),
          Positioned(
            left: 10,
            top: 10,
            width: 10,
            height: 10,
            child: AnimatorSet(
              child: DecoratedBox(
                decoration: BoxDecoration(
                  color: Colors.white,
                ),
              ),
              animatorSet: [
                Delay(duration: 200),
                Serial(duration: 500, serialList: [
                  SX(from: 0.0, to: 1.0),
                  SY(from: 0.0, to: 1.0),
                ]),
                Delay(duration: 1600),
                Serial(duration: 500, serialList: [
                  SX(from: 1.0, to: 0.0),
                  SY(from: 1.0, to: 0.0),
                ]),
                Delay(duration: 200),
              ],
            ),
          ),
          Positioned(
            left: 20,
            top: 10,
            width: 10,
            height: 10,
            child: AnimatorSet(
              child: DecoratedBox(
                decoration: BoxDecoration(
                  color: Colors.white,
                ),
              ),
              animatorSet: [
                Delay(duration: 100),
                Serial(duration: 500, serialList: [
                  SX(from: 0.0, to: 1.0),
                  SY(from: 0.0, to: 1.0),
                ]),
                Delay(duration: 1800),
                Serial(duration: 500, serialList: [
                  SX(from: 1.0, to: 0.0),
                  SY(from: 1.0, to: 0.0),
                ]),
                Delay(duration: 100),
              ],
            ),
          ),
          Positioned(
            left: 0,
            top: 20,
            width: 10,
            height: 10,
            child: AnimatorSet(
              child: DecoratedBox(
                decoration: BoxDecoration(
                  color: Colors.white,
                ),
              ),
              animatorSet: [
                Delay(duration: 400),
                Serial(duration: 500, serialList: [
                  SX(from: 0.0, to: 1.0),
                  SY(from: 0.0, to: 1.0),
                ]),
                Delay(duration: 1200),
                Serial(duration: 500, serialList: [
                  SX(from: 1.0, to: 0.0),
                  SY(from: 1.0, to: 0.0),
                ]),
                Delay(duration: 400),
              ],
            ),
          ),
          Positioned(
            left: 10,
            top: 20,
            width: 10,
            height: 10,
            child: AnimatorSet(
              child: DecoratedBox(
                decoration: BoxDecoration(
                  color: Colors.white,
                ),
              ),
              animatorSet: [
                Delay(duration: 300),
                Serial(duration: 500, serialList: [
                  SX(from: 0.0, to: 1.0),
                  SY(from: 0.0, to: 1.0),
                ]),
                Delay(duration: 1400),
                Serial(duration: 500, serialList: [
                  SX(from: 1.0, to: 0.0),
                  SY(from: 1.0, to: 0.0),
                ]),
                Delay(duration: 300),
              ],
            ),
          ),
          Positioned(
            left: 20,
            top: 20,
            width: 10,
            height: 10,
            child: AnimatorSet(
              child: DecoratedBox(
                decoration: BoxDecoration(
                  color: Colors.white,
                ),
              ),
              animatorSet: [
                Delay(duration: 200),
                Serial(duration: 500, serialList: [
                  SX(from: 0.0, to: 1.0),
                  SY(from: 0.0, to: 1.0),
                ]),
                Delay(duration: 1600),
                Serial(duration: 500, serialList: [
                  SX(from: 1.0, to: 0.0),
                  SY(from: 1.0, to: 0.0),
                ]),
                Delay(duration: 200),
              ],
            ),
          ),
        ],
      ),
    );
  }

  Widget rotatingCircle() {
    return Container(
      width: 100,
      height: 100,
      child: Stack(
        children: <Widget>[
          AnimatorSet(
            child: Container(
              decoration: BoxDecoration(
                color: Colors.white,
                shape: BoxShape.circle,
              ),
              width: 100,
              height: 100,
            ),
            animatorSet: [
              RX(from: 0.0, to: math.pi, duration: 500, curve: Curves.easeIn),
              RY(from: 0.0, to: math.pi, duration: 500, curve: Curves.easeOut),
            ],
          ),
        ],
      ),
    );
  }

  Widget pumpingHeart() {
    return Container(
      width: 100,
      height: 100,
      child: AnimatorSet(
        child: Icon(
          Icons.favorite,
          color: Colors.white,
          size: 40,
        ),
        animatorSet: [
          Serial(
            duration: 2400,
            serialList: [
              SX(from: 1.0, to: 1.25, curve: PumpingHeartCurve()),
              SY(from: 1.0, to: 1.25, curve: PumpingHeartCurve()),
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
                      SY(from: 0.0, to: 1.0, curve: Curves.easeInOut),
                      O(
                          from: 1.0,
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
                      SY(from: 0.0, to: 1.0, curve: Curves.easeInOut),
                      O(
                          from: 1.0,
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
                      SY(from: 0.0, to: 1.0, curve: Curves.easeInOut),
                      O(
                          from: 1.0,
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
                      SY(from: 0.0, to: 1.0, curve: Curves.easeInOut),
                      O(
                          from: 1.0,
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

  Widget customGrid() {
    return Container(
      width: 100,
      height: 100,
      child: Stack(
        children: <Widget>[
          Positioned(
            left: 0,
            top: 0,
            width: 10,
            height: 10,
            child: AnimatorSet(
              child: DecoratedBox(
                decoration: BoxDecoration(
                  color: Colors.white,
                ),
              ),
              animatorSet: [
                O(from: 0.0, to: 1.0, duration: 500),
                O(from: 1.0, to: 0.0, duration: 500),
                Delay(duration: 900),
              ],
            ),
          ),
          Positioned(
            left: 10,
            top: 0,
            width: 10,
            height: 10,
            child: AnimatorSet(
              child: DecoratedBox(
                decoration: BoxDecoration(
                  color: Colors.white,
                ),
              ),
              animatorSet: [
                Delay(duration: 100),
                O(from: 0.0, to: 1.0, duration: 500),
                O(from: 1.0, to: 0.0, duration: 500),
                Delay(duration: 800),
              ],
            ),
          ),
          Positioned(
            left: 20,
            top: 0,
            width: 10,
            height: 10,
            child: AnimatorSet(
              child: DecoratedBox(
                decoration: BoxDecoration(
                  color: Colors.white,
                ),
              ),
              animatorSet: [
                Delay(duration: 200),
                O(from: 0.0, to: 1.0, duration: 500),
                O(from: 1.0, to: 0.0, duration: 500),
                Delay(duration: 700),
              ],
            ),
          ),
          Positioned(
            left: 0,
            top: 10,
            width: 10,
            height: 10,
            child: AnimatorSet(
              child: DecoratedBox(
                decoration: BoxDecoration(
                  color: Colors.white,
                ),
              ),
              animatorSet: [
                Delay(duration: 300),
                O(from: 0.0, to: 1.0, duration: 500),
                O(from: 1.0, to: 0.0, duration: 500),
                Delay(duration: 600),
              ],
            ),
          ),
          Positioned(
            left: 10,
            top: 10,
            width: 10,
            height: 10,
            child: AnimatorSet(
              child: DecoratedBox(
                decoration: BoxDecoration(
                  color: Colors.white,
                ),
              ),
              animatorSet: [
                Delay(duration: 400),
                O(from: 0.0, to: 1.0, duration: 500),
                O(from: 1.0, to: 0.0, duration: 500),
                Delay(duration: 500),
              ],
            ),
          ),
          Positioned(
            left: 20,
            top: 10,
            width: 10,
            height: 10,
            child: AnimatorSet(
              child: DecoratedBox(
                decoration: BoxDecoration(
                  color: Colors.white,
                ),
              ),
              animatorSet: [
                Delay(duration: 500),
                O(from: 0.0, to: 1.0, duration: 500),
                O(from: 1.0, to: 0.0, duration: 500),
                Delay(duration: 400),
              ],
            ),
          ),
          Positioned(
            left: 0,
            top: 20,
            width: 10,
            height: 10,
            child: AnimatorSet(
              child: DecoratedBox(
                decoration: BoxDecoration(
                  color: Colors.white,
                ),
              ),
              animatorSet: [
                Delay(duration: 600),
                O(from: 0.0, to: 1.0, duration: 500),
                O(from: 1.0, to: 0.0, duration: 500),
                Delay(duration: 300),
              ],
            ),
          ),
          Positioned(
            left: 10,
            top: 20,
            width: 10,
            height: 10,
            child: AnimatorSet(
              child: DecoratedBox(
                decoration: BoxDecoration(
                  color: Colors.white,
                ),
              ),
              animatorSet: [
                Delay(duration: 700),
                O(from: 0.0, to: 1.0, duration: 500),
                O(from: 1.0, to: 0.0, duration: 500),
                Delay(duration: 200),
              ],
            ),
          ),
          Positioned(
            left: 20,
            top: 20,
            width: 10,
            height: 10,
            child: AnimatorSet(
              child: DecoratedBox(
                decoration: BoxDecoration(
                  color: Colors.white,
                ),
              ),
              animatorSet: [
                Delay(duration: 800),
                O(from: 0.0, to: 1.0, duration: 500),
                O(from: 1.0, to: 0.0, duration: 500),
                Delay(duration: 100),
              ],
            ),
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

class PumpingHeartCurve extends Curve {
  @override
  double transform(double t) {
    if (t >= 0.0 && t < 0.22) {
      return math.pow(t, 1.0) * 4.54545454;
    } else if (t >= 0.22 && t < 0.44) {
      return 1.0 - (math.pow(t - 0.22, 1.0) * 4.54545454);
    } else if (t >= 0.44 && t < 0.5) {
      return 0.0;
    } else if (t >= 0.5 && t < 0.72) {
      return math.pow(t - 0.5, 1.0) * 2.27272727;
    } else if (t >= 0.72 && t < 0.94) {
      return 0.5 - (math.pow(t - 0.72, 1.0) * 2.27272727);
    } else {
      return 0.0;
    }
  }
}
