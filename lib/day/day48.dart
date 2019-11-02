import 'package:flutter/material.dart';

class Day48 extends StatelessWidget {
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
        title: Text("day48"),
      ),
      body: _buildColumn(),
    );
  }

  Widget _buildColumn() {
    return IndexedStack(
      index: 1,
      sizing: StackFit.loose,
      textDirection: TextDirection.ltr,
      alignment: Alignment.bottomRight,
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
