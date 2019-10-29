import 'package:flutter/material.dart';

class Day43 extends StatelessWidget {
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
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("day43"),
      ),
      body: _buildColumn(),
    );
  }

  Widget _buildColumn() {
    return Transform(
      origin: Offset(0.0, 10.0),
      transformHitTests: true,
      alignment: Alignment.center,
      transform: Matrix4.rotationZ(3.0),
      child: Container(
        width: 100,
        height: 100,
        color: Colors.blueAccent,
      ),
    );
  }
}
