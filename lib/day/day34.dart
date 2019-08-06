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
    //如果child有baseline，则根据child的baseline属性，调整child的位置
    //如果child没有baseline，则根据child的bottom，来调整child的位置
    return Row(
      mainAxisAlignment: MainAxisAlignment.spaceBetween,
      children: <Widget>[
        Baseline(
          //alphabetic：对齐字符底部的水平线
          //ideographic：对齐表意字符的水平线
          baselineType: TextBaseline.alphabetic,
          child: Container(
            width: 100,
            height: 100,
            color: Colors.blue[200],
            child: Text("Hello World"),
          ),
          baseline: 50.0,
        ),
        Baseline(
          baselineType: TextBaseline.alphabetic,
          child: Container(
            width: 100,
            height: 100,
            color: Colors.blue[600],
            child: Text("Hello World"),
          ),
          baseline: 100.0,
        ),
      ],
    );
  }
}
