import 'package:flutter/material.dart';

class Day49 extends StatelessWidget {
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
        title: Text("day49"),
      ),
      body: _buildColumn(),
    );
  }

  Widget _buildColumn() {
    return Flow(
      delegate: GridFlowDelegate(margin: EdgeInsets.all(10.0)),
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
        ),
        Container(
          width: 100,
          height: 100,
          color: Colors.greenAccent,
        ),
        Container(
          height: 50,
          width: 50,
          color: Colors.redAccent,
        ),
        Container(
          width: 100,
          height: 100,
          color: Colors.greenAccent,
        ),
        Container(
          height: 50,
          width: 50,
          color: Colors.redAccent,
        ),
        Container(
          width: 100,
          height: 100,
          color: Colors.greenAccent,
        ),
        Container(
          height: 50,
          width: 50,
          color: Colors.redAccent,
        ),
        Container(
          width: 100,
          height: 100,
          color: Colors.greenAccent,
        )
      ],
    );
  }
}

class GridFlowDelegate extends FlowDelegate {
  EdgeInsets margin = EdgeInsets.zero;

  GridFlowDelegate({this.margin});

  @override
  void paintChildren(FlowPaintingContext context) {
    var x = margin.left; //绘制子控件的x坐标
    var y = margin.top; //绘制子控件的y坐标
    var maxHeightIndex  = 0; //同一行中最大高度的子控件的索引，用于换行
    for (int i = 0; i < context.childCount; i++) {
      // 当前控件需要的最大宽度 = 控件本身的宽度 + 左右边距
      var w = context.getChildSize(i).width + x + margin.right;
      if (w < context.size.width) {
        // 如果未超出当前未分配的宽度，则直接平移到对应位置画出来
        context.paintChild(i, transform: Matrix4.translationValues(x, y, 0.0));
        // 下一次的x坐标
        x = w + margin.left;
        // 在第二个控件开始取同一行的最大高度的控件
        if (i >= 1){
          var currentHeight = context.getChildSize(i).height + margin.top + margin.bottom;
          var lastHeight = context.getChildSize(maxHeightIndex).height + margin.top + margin.bottom;
          if (currentHeight > lastHeight) {
            // 保留最大高度的索引值
            maxHeightIndex = i;
          }
        }
      }else{
        // 如果超出当前未分配的宽度，则先归位x坐标恢复默认值，从左边开始重新分配空间
        x = margin.left;
        // y坐标
        y += context.getChildSize(maxHeightIndex).height + margin.top + margin.bottom;
        // 找到坐标后直接平移到对应位置画出来
        context.paintChild(i, transform: Matrix4.translationValues(x, y, 0.0));
        // 下一次的x坐标需要将它加上自己的宽度，和自己的左右边距
        x += context.getChildSize(i).width + margin.left + margin.right;
      }
    }
  }

  @override
  bool shouldRepaint(FlowDelegate oldDelegate) {
    return oldDelegate != this;
  }
}
