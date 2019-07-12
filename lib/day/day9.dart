import 'package:flutter/material.dart';
import 'package:nima/nima_actor.dart';

class Day9 extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'day9',
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
  var time = 0;
  var robotStateName = "idle";

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("day9"),
        actions: <Widget>[
          IconButton(
            icon: Icon(Icons.directions_boat),
            color: Colors.blue,
            onPressed: () {
              setState(() {
                robotStateName = getRobotState(2);
              });
            },
          ),
        ],
      ),
      body: _buildColumn(),
      floatingActionButton: FloatingActionButton(
          child: Icon(Icons.arrow_upward),
          onPressed: () {
            setState(() {
              robotStateName = getRobotState(1);
            });
          }),
    );
  }

  Widget _buildColumn() {
    return NimaActor(
      "assets/biu.nma",
      alignment: Alignment.center,
      fit: BoxFit.contain,
      animation: robotStateName,
      mixSeconds: 0.2,
      completed: (animationName) {
        setState(() {
          robotStateName = getRobotState(0);
        });
      },
    );
  }

  getRobotState(state) {
    if (state == 0) return "idle";
    if (state == 1) return "jump";
    if (state == 2) return "attack";
  }
}
