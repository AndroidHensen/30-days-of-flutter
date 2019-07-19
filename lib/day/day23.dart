import 'package:flutter/material.dart';
import 'dart:async';

var time = 0;
var _width = 100.0;

class Day23 extends StatelessWidget {
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
        switch (time % 2) {
          case 0:
            _width = 100.0;
            break;
          case 1:
            _width = 200.0;
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
        title: Text("day23"),
      ),
      body: _buildColumn(),
    );
  }

  Widget _buildColumn() {
    return Stack(
      children: <Widget>[
        AnimatedPositioned(
          width: _width,
          duration: Duration(seconds: 1),
          child: FlutterLogo(
            style: FlutterLogoStyle.horizontal,
            size: 200,
          ),
        ),
      ],
    );
  }
}
