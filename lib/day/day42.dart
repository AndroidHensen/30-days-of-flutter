import 'package:flutter/material.dart';

class Day42 extends StatelessWidget {
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
        title: Text("day42"),
      ),
      body: _buildColumn(),
    );
  }

  Widget _buildColumn() {
    return SizedOverflowBox(
      size: Size(100, 100),
      alignment: Alignment.center,
      child: Container(
        width: 300,
        height: 300,
        color: Colors.blueAccent,
      ),
    );
  }
}
