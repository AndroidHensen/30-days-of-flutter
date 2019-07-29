import 'package:flutter/material.dart';
import 'dart:async';
import 'dart:math' as math;

var time = 0;
var _color = Colors.red[200];
var _borderColor = Colors.transparent;
var _width = 200.0;
var _height = 200.0;
var _borderWidth = 0.0;
var _scaleX = 1.0;
var _scaleY = 1.0;
var _rotate = 0.0;
var _padding = 0.0;
var _margin = 0.0;
var _alignmentY = 0.0;

class Day6 extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      theme: ThemeData(
        primaryColor: Colors.white,
      ),
      home: WeWidget(),
    );
  }
}

class WeWidget extends StatefulWidget {
  @override
  State<StatefulWidget> createState() {
    return WeWidgetState();
  }
}

class WeWidgetState extends State<WeWidget> {
  WeWidgetState() {
    Timer.periodic(Duration(milliseconds: 1000), (timer) {
      setState(() {
        switch (time % 10) {
          case 0:
            _width = 300;
            _height = 100;
            break;
          case 1:
            _width = 100;
            _height = 300;
            _borderWidth = 4.0;
            _borderColor = Colors.brown[200];
            break;
          case 2:
            _borderWidth = 8.0;
            _borderColor = Colors.pink[200];
            _color = Colors.blue[200];
            break;
          case 3:
            _width = 300;
            _height = 300;
            _color = Colors.deepPurple[200];
            break;
          case 4:
            _scaleX = 0.2;
            _scaleY = 0.2;
            break;
          case 5:
            _scaleX = 0.5;
            _scaleY = 0.5;
            _rotate = math.pi / 6;
            break;
          case 6:
            _scaleX = 1.0;
            _scaleY = 1.0;
            _rotate = 0.0;
            _padding = 200.0;
            break;
          case 7:
            _padding = 0.0;
            break;
          case 8:
            _margin = 80.0;
            _alignmentY = 0.5;
            break;
          case 9:
            _margin = 0.0;
            _alignmentY = 0.0;
            break;
        }
        time++;
      });
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("day6"),
      ),
      body: _buildColumn(),
    );
  }

  Widget _buildColumn() {
    return Column(
      children: <Widget>[
        AnimatedContainer(
          transform: Matrix4.identity().scaled(_scaleX, _scaleY)
            ..rotateZ(_rotate),
          alignment: AlignmentDirectional(0.0, _alignmentY),
          constraints: BoxConstraints(
            minWidth: 0.0,
            minHeight: 0.0,
            maxWidth: 500.0,
            maxHeight: 500.0,
          ),
          margin: EdgeInsets.only(left: _margin),
          padding: EdgeInsets.only(left: _padding),
          width: _width,
          height: _height,
          duration: Duration(milliseconds: 1000),
          curve: Curves.fastOutSlowIn,
          child: Icon(
            Icons.android,
            color: Colors.lightGreenAccent,
            size: 40,
          ),
          foregroundDecoration: BoxDecoration(
            border: Border.all(
              color: _borderColor,
              width: _borderWidth,
            ),
          ),
          //color 和 decoration两者不可共存
          //color: _color,
          decoration: BoxDecoration(
            color: _color,
            borderRadius: BorderRadius.circular(12),
            boxShadow: [
              BoxShadow(
                color: _color,
                offset: Offset(5.0, 5.0),
                blurRadius: 6.0,
              )
            ],
          ),
        ),
      ],
    );
  }
}
