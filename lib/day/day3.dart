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
        actions: <Widget>[
          PopupMenuButton<String>(
            itemBuilder: (context) => <PopupMenuItem<String>>[
                  PopupMenuItem<String>(
                    value: "item1",
                    child: createListItem("item1"),
                  ),
                  PopupMenuItem<String>(
                    value: "item2",
                    child: createListItem("item2"),
                  ),
                  PopupMenuItem<String>(
                    value: "item3",
                    child: createListItem("item3"),
                  ),
                ],
          ),
        ],
      ),
      body: _buildColumn(),
    );
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
        RaisedButton(
          onPressed: () {
            showMyAboutDialog(context);
          },
          child: Text("关于弹窗"),
        ),
        RaisedButton(
          onPressed: () {
            showMyBottomDialog(context);
          },
          child: Text("底部弹窗"),
        )
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
    final TextStyle textStyle = TextStyle(
        color: Colors.black45, fontSize: 14, decoration: TextDecoration.none);

    showDialog(
        context: context,
        builder: (_) => Container(
              child: Column(
                mainAxisAlignment: MainAxisAlignment.center,
                crossAxisAlignment: CrossAxisAlignment.center,
                children: <Widget>[
                  Container(
                    padding: EdgeInsets.all(18),
                    color: Colors.white,
                    child: Column(
                      children: <Widget>[
                        SizedBox(
                          height: 30,
                          width: 30,
                          child: CircularProgressIndicator(),
                        ),
                        Padding(
                          padding: EdgeInsets.fromLTRB(8, 14, 8, 0),
                          child: Text(
                            "正在加速中...",
                            style: textStyle,
                          ),
                        )
                      ],
                    ),
                  ),
                ],
              ),
            ));
  }

  void showMyAboutDialog(BuildContext context) {
    showDialog(
        context: context,
        builder: (context) => AboutDialog(
              applicationIcon: Icon(
                Icons.android,
                color: Colors.blueAccent,
              ),
              applicationLegalese: "1、新增搞笑玩法\n2、优化搞笑玩法流程",
              applicationVersion: "v 1.1.0",
              applicationName: "新玩法推出",
            ));
  }

  void showMyBottomDialog(BuildContext context) {
    showModalBottomSheet(
        context: context,
        builder: (context) => Container(
            height: 50.0 * 5,
            child: ListView(
              children: <Widget>[
                createListItem("item1"),
                createListItem("item2"),
                createListItem("item3"),
                createListItem("item4"),
                createListItem("item5", 0.0),
              ],
            )));
  }

  Widget createListItem(text, [bottomBorder = 0.2]) {
    return InkWell(
      child: Container(
        alignment: Alignment.center,
        height: 50,
        child: Text(text),
        decoration: BoxDecoration(
            border: Border(
                bottom: BorderSide(
          color: Colors.blueGrey,
          width: bottomBorder,
        ))),
      ),
      onTap: () {
        Navigator.of(context).pop();
      },
    );
  }
}
