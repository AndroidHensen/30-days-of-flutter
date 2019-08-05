import 'package:flutter/material.dart';

class Day27 extends StatelessWidget {
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
        title: Text("day27"),
      ),
      body: _buildColumn(),
    );
  }

  Widget _buildColumn() {
    return Column(
      mainAxisAlignment: MainAxisAlignment.center,
      crossAxisAlignment: CrossAxisAlignment.center,
      children: <Widget>[
        Container(
          constraints: BoxConstraints.expand(
            height: 200,
          ),
          padding: EdgeInsets.all(8.0),
          child: Text("Hello World"),
          alignment: Alignment.center,
          transform: Matrix4.identity(),
          margin: EdgeInsets.all(16.0),
          decoration: BoxDecoration(
            color: Colors.blue[200],
          ),
          foregroundDecoration: BoxDecoration(),
          height: 200,
          width: 100,
          //color: Colors.blue[200],
        )
      ],
    );
  }
}
