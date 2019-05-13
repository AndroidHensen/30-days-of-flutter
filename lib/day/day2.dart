import 'package:flutter/material.dart';

class Day2 extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return new MaterialApp(
      title: 'day2',
      theme: new ThemeData(
        primaryColor: Colors.white,
      ),
      home: new RandomWords(),
    );
  }
}

class RandomWords extends StatefulWidget {
  @override
  State<StatefulWidget> createState() {
    return new RandomWordState();
  }
}

class RandomWordState extends State<RandomWords> {
  @override
  Widget build(BuildContext context) {
    return new Scaffold(
      appBar: new AppBar(
        title: new Text('day2'),
        actions: <Widget>[
          new IconButton(icon: new Icon(Icons.list)),
        ],
      ),
      body: Center(),
    );
  }
}
