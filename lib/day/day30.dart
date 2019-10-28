import 'package:flutter/material.dart';

class Day30 extends StatelessWidget {
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
        title: Text("day30"),
      ),
      body: _buildColumn(),
    );
  }

  Widget _buildColumn() {
    return Container(
      color: Colors.blue[200],
      child: Align(
        heightFactor: 2.0,
        widthFactor: 2.0,
        alignment: Alignment(0.0, 1.0), //底部中点对齐
        child: Text("Hello!"),
      ),
    );
  }
}
