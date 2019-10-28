import 'package:flutter/material.dart';

class Day33 extends StatelessWidget {
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
        title: Text("day33"),
      ),
      body: _buildColumn(),
    );
  }

  Widget _buildColumn() {
    return ConstrainedBox(
      constraints: BoxConstraints(
        minWidth: 100.0,
        minHeight: 100.0,
        maxWidth: 150.0,
        maxHeight: 150.0,
      ),
      child: Container(
        width: 200.0,
        height: 200.0,
        color: Colors.red,
      ),
    );
  }
}
