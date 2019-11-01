import 'package:flutter/material.dart';

class Day46 extends StatelessWidget {
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
        title: Text("day46"),
      ),
      body: _buildColumn(),
    );
  }

  Widget _buildColumn() {
    return Column(
      mainAxisAlignment: MainAxisAlignment.center,
      crossAxisAlignment: CrossAxisAlignment.center,
      verticalDirection: VerticalDirection.up,
      textBaseline: TextBaseline.alphabetic,
      textDirection: TextDirection.ltr,
      children: <Widget>[Container(
        height: 50,
        width: 50,
        color: Colors.blueAccent,
      ),
      Container(
        height: 50,
        width: 50,
        color: Colors.redAccent,
      ),
      Container(
        height: 50,
        width: 50,
        color: Colors.greenAccent,
      )],
    );
  }
}
