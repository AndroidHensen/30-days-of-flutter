import 'package:flutter/material.dart';

int _currentIndex = 0;
var _bottomText = ['首页', '通讯录', '我'];

var _bottomPage = [
  Center(
    child: Text("首页"),
  ),
  Center(
    child: Text("通讯录"),
  ),
  Center(
    child: Text("我"),
  ),
];
var _bottomIcons = [
  [
    new Icon(Icons.home, color: Colors.grey),
    new Icon(Icons.home, color: Colors.blue),
  ],
  [
    new Icon(Icons.account_box, color: Colors.grey),
    new Icon(Icons.account_box, color: Colors.blue),
  ],
  [
    new Icon(Icons.account_circle, color: Colors.grey),
    new Icon(Icons.account_circle, color: Colors.blue),
  ]
];

changeIconStyle(int currentIndex) {
  if (currentIndex == _currentIndex) {
    return _bottomIcons[currentIndex][1];
  }
  return _bottomIcons[currentIndex][0];
}

changeTextStyle(int currentIndex) {
  if (currentIndex == _currentIndex) {
    return Text(
      _bottomText[currentIndex],
      style: TextStyle(color: Colors.blue),
    );
  }
  return Text(
    _bottomText[currentIndex],
    style: TextStyle(color: Colors.grey),
  );
}

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
      body: _bottomPage[_currentIndex],
      bottomNavigationBar: BottomNavigationBar(
        items: [
          BottomNavigationBarItem(
            icon: changeIconStyle(0),
            title: changeTextStyle(0),
          ),
          BottomNavigationBarItem(
            icon: changeIconStyle(1),
            title: changeTextStyle(1),
          ),
          BottomNavigationBarItem(
            icon: changeIconStyle(2),
            title: changeTextStyle(2),
          )
        ],
        currentIndex: _currentIndex,
        onTap: (index) {
          setState(() {
            _currentIndex = index;
          });
        },
      ),
    );
  }
}
