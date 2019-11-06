import 'dart:math';

import 'package:flutter/material.dart';

class Day19 extends StatelessWidget {
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
  var data = <String>[];
  var tween = Tween<Offset>(begin: Offset(1, 0), end: Offset(0, 0));
  final animatedKey = GlobalKey<AnimatedListState>();

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('day19'),
      ),
      floatingActionButton: FloatingActionButton(
        onPressed: () {
          var str = Random().nextInt(1000).toString();
          data.add(str);
          var index = data.lastIndexOf(str);
          animatedKey.currentState.insertItem(index);
        },
        child: Icon(Icons.add),
      ),
      body: AnimatedList(
        physics: BouncingScrollPhysics(),
        padding: EdgeInsets.all(12.0),
        scrollDirection: Axis.vertical,
        primary: true,
        reverse: false,
        shrinkWrap: false,
        key: animatedKey,
        initialItemCount: data.length,
        itemBuilder: (context, int index, Animation<double> animation) {
          return animationListItem(data[index], animation);
        },
      ),
    );
  }

  Widget animationListItem(String str, animation) {
    return SlideTransition(
      position: animation.drive(tween),
      child: listItem(str),
    );
  }

  Widget listItem(String str) {
    return ListTile(
      title: Text('$str', style: TextStyle(fontSize: 30)),
      trailing: IconButton(
        icon: Icon(Icons.delete_forever),
        onPressed: () {
          var index = data.indexOf(str);
          data.remove(str);
          animatedKey.currentState.removeItem(
              index, (context, animation) => animationListItem(str, animation));
        },
      ),
    );
  }
}
