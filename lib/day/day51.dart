import 'package:flutter/material.dart';

class Day51 extends StatelessWidget {
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
        title: Text("day51"),
      ),
      body: _buildColumn(),
    );
  }

  Widget _buildColumn() {
    return Wrap(
      textDirection: TextDirection.ltr,
      alignment: WrapAlignment.center,
      verticalDirection: VerticalDirection.down,
      crossAxisAlignment: WrapCrossAlignment.center,
      direction: Axis.horizontal,
      runAlignment: WrapAlignment.center,
      runSpacing: 10.0,
      spacing: 10.0,
      children: <Widget>[
        Chip(
          label: Text("张三张三张三"),
        ),
        Chip(
          label: Text("李四李四李四"),
        ),
        Chip(
          label: Text("王五王五王五"),
        ),
        Chip(
          label: Text("赵六赵六赵六"),
        ),
        Chip(
          label: Text("钱七"),
        ),
        Chip(
          label: Text("孙八"),
        ),
      ],
    );
  }
}
