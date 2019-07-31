import 'package:flutter/material.dart';

class DialogActivity extends StatefulWidget {
  @override
  State<StatefulWidget> createState() {
    return DialogActivityState();
  }
}

class DialogActivityState extends State<DialogActivity> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("DialogActivity"),
      ),
      body: buildAlertDialog(),
    );
  }

  Widget buildAlertDialog() {
    return Row(
      mainAxisAlignment: MainAxisAlignment.center,
      crossAxisAlignment: CrossAxisAlignment.center,
      children: <Widget>[],
    );
  }
}
