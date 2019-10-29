import 'package:flutter/material.dart';

class Day41 extends StatelessWidget {
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
        title: Text("day41"),
      ),
      body: _buildColumn(),
    );
  }

  Widget _buildColumn() {
    return SizedBox(
      width: 200,
      height: 200,
      child: Container(
        color: Colors.blueAccent,
      ),
    );
  }
}
