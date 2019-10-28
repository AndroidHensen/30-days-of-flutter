import 'package:flutter/material.dart';

class Day35 extends StatelessWidget {
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
        title: Text("day35"),
      ),
      body: _buildColumn(),
    );
  }

  Widget _buildColumn() {
    return Container(
      color: Colors.blue[600],
      width: 200,
      height: 200,
      child: FractionallySizedBox(
        alignment: Alignment.center,
        widthFactor: 0.5,
        heightFactor: 0.5,
        child: Container(
          color: Colors.blue[200],
        ),
      ),
    );
  }
}
