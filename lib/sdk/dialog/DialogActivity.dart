import 'package:flutter/material.dart';
import 'package:flutter_custom_dialog/components/example/alert_dialog.dart';
import 'package:flutter_custom_dialog/flutter_custom_dialog.dart';

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

  YYDialog yyAlertDialogBody;

  Widget buildAlertDialog() {
    return Row(
      mainAxisAlignment: MainAxisAlignment.center,
      crossAxisAlignment: CrossAxisAlignment.center,
      children: <Widget>[
        RaisedButton(
          child: Text("Dialog"),
          onPressed: () {
            yyAlertDialogBody = YYAlertDialogBody(context);
          },
        ),
        RaisedButton(
          child: Text("Dialog"),
          onPressed: () {
            yyAlertDialogBody.dismiss();
          },
        ),
      ],
    );
  }
}
