import 'package:flutter/material.dart';

import 'package:yyshop/sdk/anim/AnimatorSet.dart';

class AnimatorSetActivity extends StatefulWidget {
  @override
  State<StatefulWidget> createState() {
    return AnimatorSetState();
  }
}

class AnimatorSetState extends State<AnimatorSetActivity> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(),
      body: AnimatorSet(
        child: Text("AnimatorSet"),
        duration: Duration(seconds: 2),
      ),
    );
  }
}
