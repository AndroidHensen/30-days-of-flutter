import 'package:flutter/material.dart';
import 'day1/day1.dart';

void main() => runApp(new App());

var days = [
  {"title": "day1", "component": Day1}
];

class App extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return new MaterialApp(
      title: 'Welcome to Flutter',
      theme: new ThemeData(
        primaryColor: Colors.white,
      ),
      home: _buildListView()
    );
  }

  Widget _buildListView(){
    return ListView.builder(
      
    );
  }
}


class DayItem extends StatelessWidget {
  String title;

  DayItem({@required this.title});

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: () {
        print('object');
      },
      child: Text(title),
    );
  }
}
