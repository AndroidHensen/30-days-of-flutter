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
      crossAxisAlignment: CrossAxisAlignment.start,
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
        RaisedButton(
          onPressed: () {
            showMyCustomDialog(context);
          },
          child: Text("自定义弹窗"),
        ),
      ],
    );
  }

  void showMyAlertDialog(BuildContext context) {
    showDialog(
        context: context,
        builder: (context) {
          return AlertDialog(
            title: Text("通知"),
            content: Text("您的假期余额不足！"),
            shape: RoundedRectangleBorder(
                borderRadius: BorderRadius.all(Radius.circular(12))),
            actions: <Widget>[
              FlatButton(
                onPressed: () {
                  Navigator.of(context).pop();
                },
                child: Text("确认"),
              ),
              FlatButton(
                onPressed: () {
                  Navigator.of(context).pop();
                },
                child: Text("取消"),
              ),
            ],
          );
        });
  }

  void showMySimpleDialog(BuildContext context) {
    showDialog(
        context: context,
        builder: (context) {
          return SimpleDialog(
            title: Text("请选择"),
            elevation: 12,
            shape: RoundedRectangleBorder(
                borderRadius: BorderRadius.all(Radius.circular(12))),
            children: <Widget>[
              SimpleDialogOption(
                child: Text("选项一"),
                onPressed: () {
                  Navigator.of(context).pop();
                },
              ),
              SimpleDialogOption(
                child: Text("选项二"),
                onPressed: () {
                  Navigator.of(context).pop();
                },
              ),
              SimpleDialogOption(
                child: Text("选项三"),
                onPressed: () {
                  Navigator.of(context).pop();
                },
              ),
            ],
          );
        });
  }

  void showMyCustomDialog(BuildContext context) {
    final TextStyle textStyle = Theme.of(context).textTheme.display1;

    showDialog(
        context: context,
        builder: (_) => Padding(
              padding: EdgeInsets.all(5),
              child: Column(
                mainAxisAlignment: MainAxisAlignment.center,
                crossAxisAlignment: CrossAxisAlignment.center,
                children: <Widget>[
                  CircularProgressIndicator(),
                  Padding(
                    padding: EdgeInsets.all(2),
                    child: Text("loading"),
                  )
                ],
              ),
            ));
  }
}
