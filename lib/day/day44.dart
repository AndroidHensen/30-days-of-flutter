import 'package:flutter/material.dart';

class Day44 extends StatelessWidget {
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
        title: Text("day44"),
      ),
      body: _buildColumn(),
    );
  }

  Widget _buildColumn() {
    return CustomSingleChildLayout(
      delegate: FixedSizeLayoutDelegate(Size(300, 300)),
      child: Container(
        width: 100,
        height: 100,
        color: Colors.blueAccent,
      ),
    );
  }
}

class FixedSizeLayoutDelegate extends SingleChildLayoutDelegate {
  FixedSizeLayoutDelegate(this.size);

  final Size size;

  @override
  Size getSize(BoxConstraints constraints) => size;

  @override
  BoxConstraints getConstraintsForChild(BoxConstraints constraints) {
    return BoxConstraints.tight(size);
  }

  @override
  bool shouldRelayout(FixedSizeLayoutDelegate oldDelegate) {
    return size != oldDelegate.size;
  }
}
