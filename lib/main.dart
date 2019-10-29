import 'package:flutter/material.dart';

import 'day/day1.dart';
import 'day/day10.dart';
import 'day/day11.dart';
import 'day/day12.dart';
import 'day/day13.dart';
import 'day/day14.dart';
import 'day/day15.dart';
import 'day/day16.dart';
import 'day/day17.dart';
import 'day/day18.dart';
import 'day/day19.dart';
import 'day/day2.dart';
import 'day/day20.dart';
import 'day/day21.dart';
import 'day/day22.dart';
import 'day/day23.dart';
import 'day/day24.dart';
import 'day/day27.dart';
import 'day/day28.dart';
import 'day/day29.dart';
import 'day/day3.dart';
import 'day/day30.dart';
import 'day/day31.dart';
import 'day/day32.dart';
import 'day/day33.dart';
import 'day/day34.dart';
import 'day/day35.dart';
import 'day/day36.dart';
import 'day/day37.dart';
import 'day/day38.dart';
import 'day/day39.dart';
import 'day/day4.dart';
import 'day/day40.dart';
import 'day/day41.dart';
import 'day/day42.dart';
import 'day/day43.dart';
import 'day/day44.dart';
import 'day/day45.dart';
import 'day/day46.dart';
import 'day/day47.dart';
import 'day/day48.dart';
import 'day/day49.dart';
import 'day/day5.dart';
import 'day/day50.dart';
import 'day/day51.dart';
import 'day/day52.dart';
import 'day/day53.dart';
import 'day/day54.dart';
import 'day/day55.dart';
import 'day/day6.dart';
import 'day/day7.dart';
import 'day/day8.dart';
import 'day/day9.dart';

void main() => runApp(App());

var days = [
  {"title": "day1 列表", "route": "day1"},
  {"title": "day2 顶部导航栏", "route": "day2"},
  {"title": "day3 弹窗", "route": "day3"},
  {"title": "day4 枸杞登录页", "route": "day4"},
  {"title": "day5 底部导航栏", "route": "day5"},
  {"title": "day6 AnimatedContainer[√]", "route": "day6"},
  {"title": "day7 AnimatedCrossFade[√]", "route": "day7"},
  {"title": "day8 Hero", "route": "day8"},
  {"title": "day9 Flutter+Nima", "route": "day9"},
  {"title": "day10 AnimatedBuilder[√]", "route": "day10"},
  {"title": "day11 DecoratedBoxTransition[√]", "route": "day11"},
  {"title": "day12 FadeTransition[√]", "route": "day12"},
  {"title": "day13 PositionedTransition[√]", "route": "day13"},
  {"title": "day14 RotationTransition[√]", "route": "day14"},
  {"title": "day15 ScaleTransition[√]", "route": "day15"},
  {"title": "day16 SizeTransition[√]", "route": "day16"},
  {"title": "day17 SlideTransition[√]", "route": "day17"},
  {"title": "day18 AnimatedDefaultTextStyle[√]", "route": "day18"},
  {"title": "day19 AnimatedListState[x]", "route": "day19"},
  {"title": "day20 AnimatedModalBarrier[x]", "route": "day20"},
  {"title": "day21 AnimatedOpacity", "route": "day21"},
  {"title": "day22 AnimatedPhysicalModel", "route": "day22"},
  {"title": "day23 AnimatedPositioned", "route": "day23"},
  {"title": "day24 AnimatedSize", "route": "day24"},
  {"title": "day27 Container[√]", "route": "day27"},
  {"title": "day28 Padding[√]", "route": "day28"},
  {"title": "day29 Center[√]", "route": "day29"},
  {"title": "day30 Align[√]", "route": "day30"},
  {"title": "day31 FittedBox[√]", "route": "day31"},
  {"title": "day32 AspectRatio[√]", "route": "day32"},
  {"title": "day33 ConstrainedBox[√]", "route": "day33"},
  {"title": "day34 Baseline[√]", "route": "day34"},
  {"title": "day35 FractionallySizedBox[√]", "route": "day35"},
  {"title": "day36 IntrinsicHeight[√]", "route": "day36"},
  {"title": "day37 IntrinsicWidth[√]", "route": "day37"},
  {"title": "day38 LimitedBox[√]", "route": "day38"},
  {"title": "day39 Offstage[√]", "route": "day39"},
  {"title": "day40 OverflowBox[√]", "route": "day40"},
  {"title": "day41 SizedBox[√]", "route": "day41"},
  {"title": "day42 SizedOverflowBox[√]", "route": "day42"},
  {"title": "day43 Transform[√]", "route": "day43"},
  {"title": "day44 CustomSingleChildLayout[√]", "route": "day44"},
  {"title": "day45 Row", "route": "day45"},
  {"title": "day46 Column", "route": "day46"},
  {"title": "day47 Stack", "route": "day47"},
  {"title": "day48 IndexedStack", "route": "day48"},
  {"title": "day49 Flow", "route": "day49"},
  {"title": "day50 Table", "route": "day50"},
  {"title": "day51 Wrap", "route": "day51"},
  {"title": "day52 ListBody", "route": "day52"},
  {"title": "day53 ListView", "route": "day53"},
  {"title": "day54 CustomMultiChildLayout", "route": "day54"},
  {"title": "day55 LayoutBuilder", "route": "day55"},
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
        "day14": (context) => Day14(),
        "day15": (context) => Day15(),
        "day16": (context) => Day16(),
        "day17": (context) => Day17(),
        "day18": (context) => Day18(),
        "day19": (context) => Day19(),
        "day20": (context) => Day20(),
        "day21": (context) => Day21(),
        "day22": (context) => Day22(),
        "day23": (context) => Day23(),
        "day24": (context) => Day24(),
        "day27": (context) => Day27(),
        "day28": (context) => Day28(),
        "day29": (context) => Day29(),
        "day30": (context) => Day30(),
        "day31": (context) => Day31(),
        "day32": (context) => Day32(),
        "day33": (context) => Day33(),
        "day34": (context) => Day34(),
        "day35": (context) => Day35(),
        "day36": (context) => Day36(),
        "day37": (context) => Day37(),
        "day38": (context) => Day38(),
        "day39": (context) => Day39(),
        "day40": (context) => Day40(),
        "day41": (context) => Day41(),
        "day42": (context) => Day42(),
        "day43": (context) => Day43(),
        "day44": (context) => Day44(),
        "day45": (context) => Day45(),
        "day46": (context) => Day46(),
        "day47": (context) => Day47(),
        "day48": (context) => Day48(),
        "day49": (context) => Day49(),
        "day50": (context) => Day50(),
        "day51": (context) => Day51(),
        "day52": (context) => Day52(),
        "day53": (context) => Day53(),
        "day54": (context) => Day54(),
        "day55": (context) => Day55(),
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
