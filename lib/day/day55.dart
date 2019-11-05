import 'package:flutter/material.dart';

class Day55 extends StatelessWidget {
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
        title: Text("day55"),
      ),
      body: _buildColumn(),
    );
  }

  Widget _buildColumn() {
    return LayoutBuilder(
      builder: (BuildContext context, BoxConstraints constraints) {
        if (constraints.maxWidth > 200.0) {
          // 尺寸大的
          return FlutterLogo(size: 200);
        }
        // 尺寸小的
        return FlutterLogo(size: 50);
      },
    );
  }
}
