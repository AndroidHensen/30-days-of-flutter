import 'package:flutter/material.dart';

class Day53 extends StatelessWidget {
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
        title: Text("day53"),
      ),
      body: _buildColumn(),
    );
  }

  Widget _buildColumn() {
    return ListView(
      physics: BouncingScrollPhysics(),
      cacheExtent: 10.0,
      primary: true,
      padding: EdgeInsets.all(15.0),
      reverse: false,
      scrollDirection: Axis.vertical,
      children: <Widget>[
        Container(
          height: 300,
          width: 300,
          color: Colors.blueAccent,
        ),
        Container(
          height: 300,
          width: 300,
          color: Colors.redAccent,
        ),
        Container(
          height: 300,
          width: 300,
          color: Colors.greenAccent,
        )
      ],
    );
  }
}
