import 'package:flutter/material.dart';
import 'dart:async';

var time = 0;
var _color = Colors.red;
var _borderColor = Colors.transparent;
var _width = 200.0;
var _height = 200.0;
var _borderWidth = 0.0;

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
    Timer.periodic(Duration(milliseconds: 500), (timer) {
      setState(() {
        switch (time) {
          case 1:
            _width = 300;
            _height = 100;
            _borderColor = Colors.brown;
            break;
          case 2:
            _width = 100;
            _height = 300;
            _borderWidth = 8.0;
            break;
          case 3:
            _color = Colors.blue;
            break;
          case 4:
            _width = 300;
            _height = 300;
            _borderColor = Colors.pink;
            _color = Colors.deepPurple;
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
            color: _color,
            width: _width,
            height: _height,
            duration: Duration(milliseconds: 400),
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
