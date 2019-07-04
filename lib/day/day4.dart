import 'package:flutter/material.dart';

class Day4 extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'day4',
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
        title: Text("day4"),
      ),
      body: _buildColumn(),
    );
  }

  Widget _buildColumn() {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: <Widget>[
        Row(
          children: <Widget>[
            Image.asset(
              "images/day4/优惠.png",
              width: 30,
              height: 30,
              fit: BoxFit.fill,
            ),
            Padding(
              padding: EdgeInsets.fromLTRB(12, 0, 12, 0),
              child: Text("满100减10"),
            ),
          ],
        ),
        Row(
          children: <Widget>[
            Image.asset(
              "images/day4/电话.png",
              width: 30,
              height: 30,
              fit: BoxFit.fill,
            ),
            Expanded(
              child: TextField(
                decoration: InputDecoration(
                    contentPadding: EdgeInsets.all(5),
                    hintText: "请输入电话号码",
                    border: OutlineInputBorder(
                      borderRadius: BorderRadius.circular(4),
                    )),
              ),
            )
          ],
        ),
      ],
    );
  }
}
