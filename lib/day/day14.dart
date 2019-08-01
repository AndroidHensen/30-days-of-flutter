import 'package:flutter/material.dart';

class Day14 extends StatelessWidget {
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
  //尝试扩展或实现num时，除int或double之外的任何类型都是编译时错误
  Animation<num> _animation;
  AnimationController _controller;
  Animation _curve;

  double _animationValue;
  AnimationStatus _state;

  @override
  void initState() {
    super.initState();

    _controller = AnimationController(
      duration: const Duration(milliseconds: 3000),
      vsync: this,
    );
    _curve = CurvedAnimation(parent: _controller, curve: Curves.fastOutSlowIn);
    _animation = Tween(begin: 0.0, end: 1.0).animate(_curve)
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
        title: Text("day14"),
      ),
      body: _buildColumn(),
    );
  }

  Widget _buildColumn() {
    return Column(
      children: <Widget>[
        AnimatorTransition(
          child: FlutterLogo(
            style: FlutterLogoStyle.horizontal,
            size: 200,
          ),
          animation: _animation,
        ),
        Text("动画值：" + _animationValue.toString()),
        Text("动画状态：" + _state.toString()),
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
  final Animation<num> animation;

  AnimatorTransition({this.child, this.animation});

  @override
  Widget build(BuildContext context) {
    return Center(
      child: RotationTransition(
        alignment: Alignment.center,
        turns: animation,
        child: this.child,
      ),
    );
  }
}
