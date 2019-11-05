import 'package:flutter/material.dart';

class Day8 extends StatelessWidget {
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
        title: Text("day8"),
      ),
      body: GestureDetector(
        child: _buildColumn(),
        onTap: () {
          _pushToNewPage();
        },
      ),
    );
  }

  Widget _buildColumn() {
    return Hero(
      tag: "mmm",
      transitionOnUserGestures: true,
      placeholderBuilder: (context, size, widget) {
        return CircularProgressIndicator();
      },
      flightShuttleBuilder: (flightContext, animation, flightDirection,
          fromHeroContext, toHeroContext) {
        return Icon(
          Icons.camera,
          size: 70.0,
        );
      },
      child: Icon(
        Icons.add,
        size: 70.0,
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
            body: Center(
              child: Hero(
                tag: "mmm",
                child: Icon(
                  Icons.wb_sunny,
                  size: 70.0,
                ),
              ),
            ));
      }),
    );
  }
}
