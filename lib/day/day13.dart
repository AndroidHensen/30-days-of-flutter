import 'package:flutter/material.dart';

class Day13 extends StatelessWidget {
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

class WeWidgetState extends State<WeWidget>
    with SingleTickerProviderStateMixin {
  Animation<RelativeRect> _animation;
  AnimationController _controller;
  Animation _curve;

  RelativeRect _animationValue;
  AnimationStatus _state;

  @override
  void initState() {
    super.initState();

    _controller = AnimationController(
      duration: const Duration(milliseconds: 3000),
      vsync: this,
    );
    _curve = CurvedAnimation(parent: _controller, curve: Curves.fastOutSlowIn);
    _animation = RelativeRectTween(
            begin: RelativeRect.fromLTRB(200.0, 200.0, 200.0, 200.0),
            end: RelativeRect.fromLTRB(20.0, 20.0, 20.0, 20.0))
        .animate(_curve)
          ..addListener(() {
            setState(() {
              _animationValue = _animation.value;
            });
          })
          ..addStatusListener((AnimationStatus state) {
            if (state == AnimationStatus.completed) {
              _controller.reverse();
            } else if (state == AnimationStatus.dismissed) {
              _controller.forward();
            }

            setState(() {
              _state = state;
            });
          });
    _controller.forward();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("day13"),
      ),
      body: _buildColumn(),
    );
  }

  Widget _buildColumn() {
    return Stack(
      children: <Widget>[
        AnimatorTransition(
          child: FlutterLogo(
            style: FlutterLogoStyle.horizontal,
            size: 200,
          ),
          animation: _animation,
        ),
        Padding(
          padding: EdgeInsets.fromLTRB(0, 15, 0, 0),
          child: Text("动画值：" + _animationValue.toString()),
        ),
        Padding(
          padding: EdgeInsets.fromLTRB(0, 30, 0, 0),
          child: Text("动画状态：" + _state.toString()),
        ),
      ],
    );
  }

  @override
  void dispose() {
    _controller.dispose();
    super.dispose();
  }
}

class AnimatorTransition extends StatelessWidget {
  final Widget child;
  final Animation<RelativeRect> animation;

  AnimatorTransition({this.child, this.animation});

  @override
  Widget build(BuildContext context) {
    //绝对定位的动画实现, 需要Stack包裹
    return Stack(
      children: <Widget>[
        PositionedTransition(
          rect: animation,
          child: this.child,
        ),
      ],
    );
  }
}
