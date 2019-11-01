import 'package:flutter/material.dart';

class Day45 extends StatelessWidget {
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
        title: Text("day45"),
      ),
      body: _buildColumn(),
    );
  }

  Widget _buildColumn() {
    return Row(
      mainAxisAlignment: MainAxisAlignment.center,
      crossAxisAlignment: CrossAxisAlignment.center,
      textDirection: TextDirection.ltr,
      textBaseline: TextBaseline.alphabetic,
      mainAxisSize: MainAxisSize.max,
      verticalDirection: VerticalDirection.down,
      children: <Widget>[
        Container(
          height: 50,
          width: 50,
          color: Colors.blueAccent,
        ),
        Container(
          height: 50,
          width: 50,
          color: Colors.redAccent,
        ),
        Container(
          height: 50,
          width: 50,
          color: Colors.greenAccent,
        )
      ],
    );
  }
}
