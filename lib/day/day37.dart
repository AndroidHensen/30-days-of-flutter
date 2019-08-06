import 'package:flutter/material.dart';

class Day37 extends StatelessWidget {
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
        title: Text("day37"),
      ),
      body: _buildColumn(),
    );
  }

  Widget _buildColumn() {
    return Container(
      color: Colors.grey,
      child: IntrinsicWidth(
        //父容器的大小
        stepHeight: 200,
        stepWidth: 150,
        child: Column(
          children: <Widget>[
            Container(
              color: Colors.blue,
              width: 100.0,
              height: 150.0,
            ),
            Container(
              color: Colors.red,
              width: 60.0,
              height: 150.0,
            ),
            Container(color: Colors.yellow, height: 150.0),
            Container(color: Colors.green, height: 150.0),
          ],
        ),
      ),
    );
  }
}
