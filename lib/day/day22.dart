import 'package:flutter/material.dart';
import 'dart:async';

var time = 0;
var _shadowColor = Colors.transparent;

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
            _shadowColor = Colors.transparent;
            break;
          case 1:
            _shadowColor = Colors.grey;
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
    return Center(
      child: AnimatedPhysicalModel(
        curve: Curves.fastOutSlowIn,
        color: Colors.grey.withOpacity(0.2),
        clipBehavior: Clip.antiAliasWithSaveLayer,
        borderRadius: BorderRadius.circular(12.0),
        animateColor: true,
        animateShadowColor: true,
        shape: BoxShape.rectangle,
        shadowColor: _shadowColor,
        elevation: 20.0,
        duration: Duration(seconds: 1),
        child: FlutterLogo(
          style: FlutterLogoStyle.horizontal,
          size: 200,
        ),
      ),
    );
  }
}
