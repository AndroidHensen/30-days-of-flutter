import 'package:flutter/material.dart';
import 'dart:async';

var time = 0;
var _width = 100.0;

class Day24 extends StatelessWidget {
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

class WeWidgetState extends State<WeWidget>
    with SingleTickerProviderStateMixin {
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
        title: Text("day24"),
      ),
      body: _buildColumn(),
    );
  }

  Widget _buildColumn() {
    return Center(
      child: AnimatedSize(
        alignment: Alignment.center,
        curve: Curves.fastOutSlowIn,
        vsync: this,
        duration: Duration(seconds: 1),
        reverseDuration: Duration(seconds: 2),
        child: FlutterLogo(
          style: FlutterLogoStyle.horizontal,
          size: _width,
        ),
      ),
    );
  }
}
