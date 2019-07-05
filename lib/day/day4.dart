import 'package:flutter/material.dart';

var value;

class Day4 extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'day4',
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
        title: Text("day4"),
      ),
      resizeToAvoidBottomPadding: false,
      body: Container(
          padding: EdgeInsets.all(18),
          decoration: BoxDecoration(
              image: DecorationImage(
                  image: AssetImage("images/day4/背景.png"), fit: BoxFit.cover)),
          child: _buildColumn()),
    );
  }

  Widget _buildColumn() {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: <Widget>[
        Row(
          children: <Widget>[
            Expanded(
                child: Padding(
              padding: EdgeInsets.fromLTRB(0, 0, 0, 0),
              child: TextField(
                keyboardType: TextInputType.phone,
                decoration: InputDecoration(
                    enabledBorder: UnderlineInputBorder(
                        borderSide: BorderSide(
                      color: Color(0xffe0e0e0),
                      width: 0.5,
                    )),
                    focusedBorder: UnderlineInputBorder(
                        borderSide: BorderSide(
                      color: Color(0xffe0e0e0),
                      width: 0.5,
                    )),
                    contentPadding: EdgeInsets.fromLTRB(0, 16, 0, 16),
                    hintText: "请输入手机号",
                    hintStyle: TextStyle(
                      color: Color(0x40242424),
                    )),
              ),
            ))
          ],
        ),
        Row(
          children: <Widget>[
            Expanded(
                child: Padding(
              padding: EdgeInsets.fromLTRB(0, 0, 0, 0),
              child: TextField(
                keyboardType: TextInputType.phone,
                decoration: InputDecoration(
                    enabledBorder: UnderlineInputBorder(
                        borderSide: BorderSide(
                      color: Color(0xffe0e0e0),
                      width: 0.5,
                    )),
                    focusedBorder: UnderlineInputBorder(
                        borderSide: BorderSide(
                      color: Color(0xffe0e0e0),
                      width: 0.5,
                    )),
                    contentPadding: EdgeInsets.fromLTRB(0, 16, 0, 16),
                    hintText: "请输入验证码",
                    hintStyle: TextStyle(
                      color: Color(0x40242424),
                    )),
              ),
            ))
          ],
        ),
        Row(
          children: <Widget>[
            Expanded(
              child: Padding(
                padding: EdgeInsets.fromLTRB(0, 22, 0, 0),
                child: RaisedButton(
                  color: Color(0xffD0D0D0),
                  splashColor: Color(0xffF54131),
                  onPressed: () => {},
                  padding: EdgeInsets.fromLTRB(0, 12, 0, 12),
                  child: Container(
                    child: Text(
                      "立即登录",
                      style: TextStyle(
                        color: Colors.white,
                        fontSize: 14,
                        fontWeight: FontWeight.bold,
                      ),
                    ),
                  ),
                  shape: RoundedRectangleBorder(
                      borderRadius: BorderRadius.all(Radius.circular(24))),
                ),
              ),
            ),
          ],
        ),
        Row(
          mainAxisAlignment: MainAxisAlignment.center,
          children: <Widget>[
            Padding(
              padding: EdgeInsets.fromLTRB(12, 32, 12, 0),
              child: RichText(
                  text: TextSpan(
                      style: TextStyle(
                        color: Color(0xff949494),
                        fontSize: 12,
                      ),
                      children: <TextSpan>[
                    TextSpan(
                      text: "登录遇到问题？",
                    ),
                    TextSpan(
                        text: "换个方式登录",
                        style: TextStyle(color: Color(0xff4a9afd))),
                    TextSpan(
                      text: "或",
                    ),
                    TextSpan(
                      text: "给我们反馈",
                      style: TextStyle(color: Color(0xff4a9afd)),
                    ),
                  ])),
            ),
          ],
        ),
        Row(
          children: <Widget>[
            Image.asset(
              "images/day4/定位.png",
              width: 30,
              height: 30,
              fit: BoxFit.fill,
            ),
            DropdownButton(
              items: getListItems(),
              hint: Text("选择地点"),
              elevation: 24,
              value: value,
              onChanged: (T) {
                setState(() {
                  value = T;
                });
              },
            )
          ],
        ),
      ],
    );
  }

  getListItems() {
    List<DropdownMenuItem> items = List();
    items.add(DropdownMenuItem(
      child: Text("item1"),
      value: "1",
    ));
    items.add(DropdownMenuItem(
      child: Text("item2"),
      value: "2",
    ));
    items.add(DropdownMenuItem(
      child: Text("item3"),
      value: "3",
    ));
    items.add(DropdownMenuItem(
      child: Text("item4"),
      value: "4",
    ));
    return items;
  }
}
