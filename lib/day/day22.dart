import 'package:flutter/material.dart';
import 'dart:async';

var time = 0;
var _color = Colors.transparent;

class Day22 extends StatelessWidget {
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
            _color = Colors.transparent;
            break;
          case 1:
            _color = Colors.grey;
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
        title: Text("day22"),
      ),
      body: _buildColumn(),
    );
  }

  Widget _buildColumn() {
    return Column(
      mainAxisAlignment: MainAxisAlignment.center,
      crossAxisAlignment: CrossAxisAlignment.center,
      children: <Widget>[
        Center(
          child: AnimatedPhysicalModel(
            color: Colors.transparent,
            shape: BoxShape.rectangle,
            shadowColor: _color,
            elevation: 20.0,
            duration: Duration(seconds: 1),
            child: FlutterLogo(
              style: FlutterLogoStyle.horizontal,
              size: 200,
            ),
          ),
        ),
      ],
    );
  }
}
