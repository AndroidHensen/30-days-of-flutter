import 'package:flutter/material.dart';

class Day3 extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'day3',
      theme: ThemeData(
        primaryColor: Colors.white,
      ),
      home: DialogList(),
    );
  }
}

class DialogList extends StatefulWidget {
  @override
  State<StatefulWidget> createState() {
    return DialogListState();
  }
}

class DialogListState extends State<DialogList> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(
          title: Text("day3"),
        ),
        body: _buildColumn());
  }

  Widget _buildColumn() {
    return Column(
      children: <Widget>[
        RaisedButton(
          onPressed: () {
            showMySimpleDialog(context);
          },
          child: Text("showMySimpleDialog"),
        ),
        RaisedButton(
          onPressed: () {
            showMyMaterialDialog(context);
          },
          child: Text("showMyMaterialDialog"),
        ),
      ],
    );
  }

  void showMyMaterialDialog(BuildContext context) {
    showDialog(
        context: context,
        builder: (context) {
          return new AlertDialog(
            title: new Text("title"),
            content: new Text("内容内容内容内容内容内容内容内容内容内容内容"),
            actions: <Widget>[
              new FlatButton(
                onPressed: () {
                  Navigator.of(context).pop();
                },
                child: new Text("确认"),
              ),
              new FlatButton(
                onPressed: () {
                  Navigator.of(context).pop();
                },
                child: new Text("取消"),
              ),
            ],
          );
        });
  }

  void showMySimpleDialog(BuildContext context) {
    showDialog(
        context: context,
        builder: (context) {
          return new SimpleDialog(
            title: new Text("SimpleDialog"),
            children: <Widget>[
              new SimpleDialogOption(
                child: new Text("SimpleDialogOption One"),
                onPressed: () {
                  Navigator.of(context).pop("SimpleDialogOption One");
                },
              ),
              new SimpleDialogOption(
                child: new Text("SimpleDialogOption Two"),
                onPressed: () {
                  Navigator.of(context).pop("SimpleDialogOption Two");
                },
              ),
              new SimpleDialogOption(
                child: new Text("SimpleDialogOption Three"),
                onPressed: () {
                  Navigator.of(context).pop("SimpleDialogOption Three");
                },
              ),
            ],
          );
        });
  }
}
