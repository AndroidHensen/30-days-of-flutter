import 'package:flutter/material.dart';

class Day28 extends StatelessWidget {
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
        title: Text("day28"),
      ),
      body: _buildColumn(),
    );
  }

  Widget _buildColumn() {
    return Padding(
      padding: EdgeInsets.all(8.0),
      child: Container(
        height: 200,
        width: 200,
        color: Colors.blue[200],
      ),
    );
  }
}
