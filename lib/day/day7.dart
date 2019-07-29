import 'dart:async';

import 'package:flutter/material.dart';

var time = 0;
var _first = true;

class Day7 extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'day7',
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
            _first = false;
            break;
          case 2:
            _first = true;
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
        title: Text("day7"),
      ),
      resizeToAvoidBottomPadding: false,
      body: _buildColumn(),
    );
  }

  Widget _buildColumn() {
    return Column(
      children: <Widget>[
        AnimatedCrossFade(
          //layoutBuilder: ,
          alignment: AlignmentDirectional(0.0, 1.0),
          duration: Duration(seconds: 1),
          firstCurve: Curves.fastOutSlowIn,
          secondCurve: Curves.fastOutSlowIn,
          sizeCurve: Curves.fastOutSlowIn,
          firstChild: FlutterLogo(
            style: FlutterLogoStyle.horizontal,
            size: 100.0,
          ),
          secondChild: FlutterLogo(
            style: FlutterLogoStyle.stacked,
            size: 200.0,
          ),
          crossFadeState:
              _first ? CrossFadeState.showFirst : CrossFadeState.showSecond,
        ),
      ],
    );
  }
}
