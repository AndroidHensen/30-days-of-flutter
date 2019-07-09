import 'package:flutter/material.dart';
import 'dart:async';

var time = 0;
var _color = Colors.red;
var _borderColor = Colors.transparent;
var _width = 200.0;
var _height = 200.0;
var _borderWidth = 0.0;
var _scaleX = 1.0;
var _scaleY = 1.0;

class Day6 extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'day6',
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
    Timer.periodic(Duration(milliseconds: 800), (timer) {
      setState(() {
        switch (time % 7) {
          case 0:
            _width = 300;
            _height = 100;
            break;
          case 1:
            _width = 100;
            _height = 300;
            _borderWidth = 4.0;
            _borderColor = Colors.brown;
            break;
          case 2:
            _borderWidth = 8.0;
            _borderColor = Colors.pink;
            _color = Colors.blue;
            break;
          case 3:
            _width = 300;
            _height = 300;
            _color = Colors.deepPurple;
            break;
          case 4:
            _scaleX = 1.3;
            _scaleY = 1.3;
            break;
          case 5:
            _scaleX = 0.5;
            _scaleY = 0.8;
            break;
          case 6:
            _scaleX = 1.0;
            _scaleY = 1.0;
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
      resizeToAvoidBottomPadding: false,
      body: _buildColumn(),
    );
  }

  Widget _buildColumn() {
    return Column(
      mainAxisAlignment: MainAxisAlignment.center,
      crossAxisAlignment: CrossAxisAlignment.center,
      children: <Widget>[
        Center(
          child: AnimatedContainer(
            transform: Matrix4.identity().scaled(_scaleX, _scaleY),
            color: _color,
            width: _width,
            height: _height,
            duration: Duration(milliseconds: 800),
            curve: Curves.easeInOut,
            child: Icon(
              Icons.android,
              color: Colors.green,
              size: 40,
            ),
            foregroundDecoration: BoxDecoration(
              border: Border.all(
                color: _borderColor,
                width: _borderWidth,
              ),
            ),
          ),
        ),
      ],
    );
  }
}
