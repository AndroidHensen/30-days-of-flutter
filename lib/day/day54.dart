import 'package:flutter/material.dart';

class Day54 extends StatelessWidget {
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
        title: Text("day54"),
      ),
      body: _buildColumn(),
    );
  }

  Widget _buildColumn() {
    return CustomMultiChildLayout(
      delegate: IdLayoutDelegate(),
      children: <Widget>[
        LayoutId(
          id: "title",
          child: Text("Hensen"),
        ),
        LayoutId(
          id: "description",
          child: Text("Flutter工程师"),
        )
      ],
    );
  }
}

class IdLayoutDelegate extends MultiChildLayoutDelegate {
  IdLayoutDelegate();

  @override
  void performLayout(Size size) {
    BoxConstraints constraints = BoxConstraints(maxWidth: size.width);

    // 通过id获取对应的控件大小
    Size titleSize = layoutChild("title", constraints);
    Size descriptionSize = layoutChild("description", constraints);

    // 摆放id的控件位置
    positionChild("title", Offset(0.0, 0.0));
    positionChild("description", Offset(0.0, titleSize.height));
  }

  @override
  bool shouldRelayout(MultiChildLayoutDelegate oldDelegate) {
    return oldDelegate != null;
  }
}
