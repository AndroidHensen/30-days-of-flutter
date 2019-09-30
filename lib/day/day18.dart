import 'dart:async';

import 'package:flutter/material.dart';

var time = 0;
var _isSelected = true;

class Day18 extends StatelessWidget {
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
    Timer.periodic(Duration(seconds: 1), (timer) {
      setState(() {
        switch (time % 4) {
          case 0:
            _isSelected = false;
            break;
          case 2:
            _isSelected = true;
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
        title: Text("day18"),
      ),
      body: _buildColumn(),
    );
  }

  Widget _buildColumn() {
    return Column(
      mainAxisAlignment: MainAxisAlignment.center,
      crossAxisAlignment: CrossAxisAlignment.center,
      children: <Widget>[
        AnimatedDefaultTextStyle(
          softWrap: false,
          textAlign: TextAlign.right,
          maxLines: 2,
          overflow: TextOverflow.ellipsis,
          curve: Curves.linear,
          duration: Duration(seconds: 1),
          child: Text("Flutter message you!!!"),
          style: _isSelected
              ? TextStyle(
                  fontSize: 10.0,
                  color: Colors.red,
                  fontWeight: FontWeight.bold,
                )
              : TextStyle(
                  fontSize: 50.0,
                  color: Colors.black,
                  fontWeight: FontWeight.w300,
                ),
        ),
      ],
    );
  }
}
