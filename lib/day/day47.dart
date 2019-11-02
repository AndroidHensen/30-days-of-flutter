import 'package:flutter/material.dart';

class Day47 extends StatelessWidget {
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
        title: Text("day47"),
      ),
      body: _buildColumn(),
    );
  }

  Widget _buildColumn() {
    return Stack(
      textDirection: TextDirection.ltr,
      alignment: Alignment.bottomRight,
      overflow: Overflow.visible,
      fit: StackFit.loose,
      children: <Widget>[
        Container(
          width: 100,
          height: 100,
          color: Colors.greenAccent,
        ),
        Container(
          height: 50,
          width: 50,
          color: Colors.redAccent,
        )
      ],
    );
  }
}
