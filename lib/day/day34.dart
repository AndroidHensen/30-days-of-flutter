import 'package:flutter/material.dart';

class Day34 extends StatelessWidget {
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
        title: Text("day34"),
      ),
      body: _buildColumn(),
    );
  }

  Widget _buildColumn() {
    return Row(
      mainAxisAlignment: MainAxisAlignment.spaceBetween,
      children: <Widget>[
        Baseline(
          baselineType: TextBaseline.alphabetic,
          child: Text("Java",style: TextStyle(fontSize: 20.0),),
          baseline: 50.0,
        ),
        Baseline(
          //alphabetic：对齐字符底部的水平线
          //ideographic：对齐表意字符的水平线
          baselineType: TextBaseline.alphabetic,
          child: Container(
            width: 30,
            height: 30,
            color: Colors.blue[200],
          ),
          baseline: 50.0,
        ),
        Baseline(
          baselineType: TextBaseline.alphabetic,
          child: Text("iOS",style: TextStyle(fontSize: 30.0),),
          baseline: 50.0,
        ),
      ],
    );
  }
}
