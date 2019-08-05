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
      constraints: BoxConstraints.expand(),
      child: Card(child: Text('Hello World!')),
    );
  }
}
