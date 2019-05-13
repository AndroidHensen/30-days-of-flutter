import 'package:flutter/material.dart';

import 'day/day1.dart';
import 'day/day2.dart';

void main() => runApp(new App());

var days = [
  {"title": "day1", "color": 600, "route": "day1"},
  {"title": "day2", "color": 500, "route": "day2"}
];

class App extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return new MaterialApp(
      title: 'Welcome to Flutter',
      theme: new ThemeData(
        primaryColor: Colors.white,
      ),
      home: new DayItem(),
      routes: {
        "day1": (context) => Day1(),
        "day2": (context) => Day2(),
      },
    );
  }
}

class DayItem extends StatefulWidget {
  @override
  State<StatefulWidget> createState() {
    return new DayItemState();
  }
}

class DayItemState extends State<DayItem> {
  @override
  Widget build(BuildContext context) {
    return new Scaffold(
      appBar: new AppBar(
        title: new Text('30-days-of-flutter'),
        actions: <Widget>[
          new IconButton(icon: new Icon(Icons.help)),
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
    return new ListTile(
        title: new Text(
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
