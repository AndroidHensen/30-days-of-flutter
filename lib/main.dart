import 'package:flutter/material.dart';

import 'day/day1.dart';
import 'day/day2.dart';
import 'day/day3.dart';
import 'day/day4.dart';
import 'day/day5.dart';
import 'day/day6.dart';
import 'day/day7.dart';
import 'day/day8.dart';
import 'day/day9.dart';
import 'day/day10.dart';
import 'day/day11.dart';
import 'day/day12.dart';
import 'day/day13.dart';

void main() => runApp(App());

var days = [
  {"title": "day1   列表", "route": "day1"},
  {"title": "day2   顶部导航栏", "route": "day2"},
  {"title": "day3   弹窗", "route": "day3"},
  {"title": "day4   枸杞登录页", "route": "day4"},
  {"title": "day5   底部导航栏", "route": "day5"},
  {"title": "day6   动画 AnimatedContainer", "route": "day6"},
  {"title": "day7   动画 AnimatedCrossFade", "route": "day7"},
  {"title": "day8   动画 Hero - 待完善", "route": "day8"},
  {"title": "day9   动画 Flutter+Nima", "route": "day9"},
  {"title": "day10   动画 AnimatedBuilder", "route": "day10"},
  {"title": "day11   动画 DecoratedBoxTransition", "route": "day11"},
  {"title": "day12   动画 FadeTransition", "route": "day12"},
  {"title": "day13   动画 PositionedTransition", "route": "day13"},
];

class App extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Welcome to Flutter',
      theme: ThemeData(
        primaryColor: Colors.white,
      ),
      home: DayItem(),
      routes: {
        "day1": (context) => Day1(),
        "day2": (context) => Day2(),
        "day3": (context) => Day3(),
        "day4": (context) => Day4(),
        "day5": (context) => Day5(),
        "day6": (context) => Day6(),
        "day7": (context) => Day7(),
        "day8": (context) => Day8(),
        "day9": (context) => Day9(),
        "day10": (context) => Day10(),
        "day11": (context) => Day11(),
        "day12": (context) => Day12(),
        "day13": (context) => Day13(),
      },
    );
  }
}

class DayItem extends StatefulWidget {
  @override
  State<StatefulWidget> createState() {
    return DayItemState();
  }
}

class DayItemState extends State<DayItem> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('30-days-of-flutter'),
        actions: <Widget>[
          IconButton(
            icon: Icon(Icons.help),
            onPressed: () {},
          ),
        ],
      ),
      body: _buildListView(),
    );
  }

  Widget _buildListView() {
    return ListView.builder(
        padding: const EdgeInsets.all(16),
        itemCount: days.length,
        itemBuilder: (context, i) {
          return _buildRow(i);
        });
  }

  Widget _buildRow(i) {
    final _textStyle = const TextStyle(fontSize: 18.0);
    return ListTile(
        title: Text(
          days[i]["title"],
          style: _textStyle,
        ),
        onTap: () {
          _pushToNewPage(i);
        });
  }

  _pushToNewPage(i) {
    Navigator.of(context).pushNamed(days[i]["route"]);
  }
}
