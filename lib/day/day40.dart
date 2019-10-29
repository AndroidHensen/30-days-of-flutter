import 'package:flutter/material.dart';

class Day40 extends StatelessWidget {
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
        title: Text("day40"),
      ),
      body: _buildColumn(),
    );
  }

  Widget _buildColumn() {
    return OverflowBox(
      minHeight: 600,
      child: Container(
        width: 300,
        height: 300,
        color: Colors.blueAccent,
      ),
    );
  }
}
