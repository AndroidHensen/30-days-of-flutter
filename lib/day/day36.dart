import 'package:flutter/material.dart';

class Day36 extends StatelessWidget {
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
        title: Text("day36"),
      ),
      body: _buildColumn(),
    );
  }

  Widget _buildColumn() {
    return IntrinsicHeight(
      child: Row(
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        children: <Widget>[
          Container(
            color: Colors.blue,
            width: 20.0,
            height: 150.0,
          ),
          Container(
            color: Colors.red,
            width: 20.0,
            height: 60.0,
          ),
          Container(color: Colors.yellow, width: 40.0),
          Container(color: Colors.yellow, width: 40.0),
        ],
      ),
    );
  }
}
