import 'package:flutter/material.dart';

class Day39 extends StatelessWidget {
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
        title: Text("day39"),
      ),
      body: _buildColumn(),
    );
  }

  Widget _buildColumn() {
    return Offstage(
      offstage: false,
      child: Container(
        width: 250,
        height: 250,
        color: Colors.redAccent,
      ),
    );
  }
}
