import 'package:flutter/material.dart';

class AnimatorSet extends StatefulWidget {
  AnimatorSet({
    Key key,
    this.child,
    this.duration,
  })  : assert(duration != null),
        super(key: key);

  final Widget child;
  final Duration duration;

  @override
  State<StatefulWidget> createState() {
    return AnimatorSetState();
  }
}

class AnimatorSetState extends State<AnimatorSet>
    with SingleTickerProviderStateMixin {
  Animation<num> _animation;
  AnimationController _controller;
  Animation _curve;

  @override
  void initState() {
    super.initState();

    _controller = AnimationController(
      duration: widget.duration,
      vsync: this,
    );
    _curve = CurvedAnimation(parent: _controller, curve: Curves.fastOutSlowIn);
    _animation = Tween(begin: 0.0, end: 1.0)
        .chain(Tween(begin: 1.0, end: 0.0))
        .animate(_curve)
          ..addListener(() {})
          ..addStatusListener((AnimationStatus state) {});
    _controller.forward();
  }

  @override
  Widget build(BuildContext context) {
    return FadeTransition(
      child: widget.child,
      opacity: _animation,
    );
  }
}
