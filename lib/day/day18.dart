import 'dart:async';

import 'package:flutter/material.dart';

var time = 0;
var _isSelected = true;

class Day18 extends StatelessWidget {
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
  WeWidgetState() {
    Timer.periodic(Duration(seconds: 1), (timer) {
      setState(() {
        switch (time % 4) {
          case 0:
            _isSelected = false;
            break;
          case 2:
            _isSelected = true;
            break;
        }
        time++;
      });
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("day18"),
      ),
      resizeToAvoidBottomPadding: false,
      body: _buildColumn(),
    );
  }

  Widget _buildColumn() {
    return Column(
      mainAxisAlignment: MainAxisAlignment.center,
      crossAxisAlignment: CrossAxisAlignment.center,
      children: <Widget>[
        AnimatedDefaultTextStyle(
          //文本是否应该在软换行符处换行
          softWrap: false,
          //如果文本超过指定行数时候的对齐方式
          textAlign: TextAlign.right,
          //文本最大行数，默认是1
          maxLines: 1,
          //超过文本区域的裁剪方式
          overflow: TextOverflow.ellipsis,
          curve: Curves.fastOutSlowIn,
          duration: Duration(seconds: 1),
          child: Text("Animate messsssss!"),
          style: _isSelected
              ? TextStyle(
                  fontSize: 50.0,
                  color: Colors.red,
                  fontWeight: FontWeight.bold,
                )
              : TextStyle(
                  fontSize: 24.0,
                  color: Colors.black,
                  fontWeight: FontWeight.w300,
                ),
        ),
      ],
    );
  }
}
