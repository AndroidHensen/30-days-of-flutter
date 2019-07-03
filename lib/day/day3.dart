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
          child: Text("列表弹窗"),
        ),
        RaisedButton(
          onPressed: () {
            showMyAlertDialog(context);
          },
          child: Text("通知弹窗"),
        ),
      ],
    );
  }

  void showMyAlertDialog(BuildContext context) {
    showDialog(
        context: context,
        builder: (context) {
          return new AlertDialog(
            title: new Text("通知"),
            shape: RoundedRectangleBorder(
                borderRadius: BorderRadius.all(Radius.circular(8))),
            content: new Text("您的假期余额不足！"),
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
            title: new Text("请选择"),
            shape: RoundedRectangleBorder(
                borderRadius: BorderRadius.all(Radius.circular(8))),
            children: <Widget>[
              new SimpleDialogOption(
                child: new Text("选项一"),
                onPressed: () {
                  Navigator.of(context).pop();
                },
              ),
              new SimpleDialogOption(
                child: new Text("选项二"),
                onPressed: () {
                  Navigator.of(context).pop();
                },
              ),
              new SimpleDialogOption(
                child: new Text("选项三"),
                onPressed: () {
                  Navigator.of(context).pop();
                },
              ),
            ],
          );
        });
  }
}
