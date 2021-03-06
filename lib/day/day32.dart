import 'package:flutter/material.dart';

class Day32 extends StatelessWidget {
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
        title: Text("day32"),
      ),
      body: _buildColumn(),
    );
  }

  Widget _buildColumn() {
    return Container(
      height: 200.0,
      color: Colors.blue,
      child: AspectRatio(
        aspectRatio: 1.5,
        child: Container(
          color: Colors.red,
        ),
      ),
    );
  }
}
