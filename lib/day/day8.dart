import 'package:flutter/material.dart';

class Day8 extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'day8',
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
        title: Text("day8"),
      ),
      body: GestureDetector(
        child: _buildColumn(),
        onTap: () {
          _pushToNewPage();
        },
      ),
      backgroundColor: Color(0xffeeeeee),
    );
  }

  Widget _buildColumn() {
    return Container(
      width: 200,
      height: 200,
      decoration: BoxDecoration(
        color: Colors.white,
        borderRadius: BorderRadius.circular(12),
        boxShadow: [
          BoxShadow(
            color: Colors.grey,
            offset: Offset(3.0, 3.0),
            blurRadius: 6.0,
          )
        ],
      ),
      child: Hero(
        tag: "mmm",
        transitionOnUserGestures: true,
        child: Center(
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: <Widget>[
              Padding(
                  padding: EdgeInsets.all(12),
                  child: Icon(
                    Icons.ac_unit,
                    color: Colors.pink,
                    size: 40,
                  )),
            ],
          ),
        ),
      ),
    );
  }

  void _pushToNewPage() {
    Navigator.of(context).push(
      MaterialPageRoute(builder: (context) {
        return Scaffold(
          appBar: AppBar(
            title: Text('Hero'),
          ),
          body: Hero(
            tag: "mmm",
            child: Center(
              child: Column(
                mainAxisAlignment: MainAxisAlignment.center,
                children: <Widget>[
                  Padding(
                      padding: EdgeInsets.fromLTRB(0, 0, 0, 100),
                      child: Icon(
                        Icons.ac_unit,
                        color: Colors.pink,
                        size: 80,
                      )),
                  Text(
                    "This is a Unit",
                    style: TextStyle(
                      color: Colors.brown,
                      fontSize: 25,
                      decoration: TextDecoration.none,
                    ),
                  )
                ],
              ),
            ),
          ),
        );
      }),
    );
  }
}
