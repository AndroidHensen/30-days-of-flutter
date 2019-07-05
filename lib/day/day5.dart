import 'package:flutter/material.dart';

var value;

class Day5 extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'day5',
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
        title: Text("day5"),
      ),
      resizeToAvoidBottomPadding: false,
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
              "images/day4/定位.png",
              width: 30,
              height: 30,
              fit: BoxFit.fill,
            ),
            DropdownButton(
              items: getListItems(),
              hint: Text("选择地点"),
              elevation: 24,
              value: value,
              onChanged: (T) {
                setState(() {
                  value = T;
                });
              },
            )
          ],
        ),
      ],
    );
  }

  getListItems() {
    List<DropdownMenuItem> items = List();
    items.add(DropdownMenuItem(
      child: Text("item1"),
      value: "1",
    ));
    items.add(DropdownMenuItem(
      child: Text("item2"),
      value: "2",
    ));
    items.add(DropdownMenuItem(
      child: Text("item3"),
      value: "3",
    ));
    items.add(DropdownMenuItem(
      child: Text("item4"),
      value: "4",
    ));
    return items;
  }
}
