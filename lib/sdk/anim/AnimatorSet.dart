import 'package:flutter/material.dart';
import 'action/animator.dart';
import 'dart:math' as math;

class AnimatorSet extends StatefulWidget {
  AnimatorSet({
    Key key,
    this.child,
    this.animatorSet = const <Animator>[],
  })  : assert(animatorSet != null),
        super(key: key);

  final Widget child;
  final List<Animator> animatorSet;

  @override
  State<StatefulWidget> createState() {
    return AnimatorSetState();
  }
}

class AnimatorSetState extends State<AnimatorSet>
    with SingleTickerProviderStateMixin {
  Duration _duration = Duration(seconds: 20);
  AnimationController _controller;

  @override
  void initState() {
    super.initState();

    _controller = AnimationController(
      duration: _duration,
      vsync: this,
    );

    _controller
      ..addListener(() {})
      ..addStatusListener((AnimationStatus status) {
        if (status == AnimationStatus.completed) {
          _controller.reverse();
        } else if (status == AnimationStatus.dismissed) {
          _controller.forward();
        }
      });
    _controller.forward();
  }

  @override
  Widget build(BuildContext context) {
    return AnimatedLogo(
      controller: _controller,
      child: widget.child,
    );
  }

  @override
  void dispose() {
    _controller.dispose();
    super.dispose();
  }
}

class AnimatedLogo extends StatelessWidget {
  Animation<double> opacity;
  Animation<double> width;
  Animation<double> height;
  Animation<EdgeInsets> padding;
  Animation<BorderRadius> borderRadius;
  Animation<Color> color;
  Animation<double> scale;
  Animation<double> rotate;
  Animation<double> translate;

  AnimatedLogo({Key key, this.controller, this.child}) : super(key: key) {
    this._buildAnimation();
  }

  Animation<double> controller;
  final Widget child;

  void _buildAnimation() {
    opacity = Tween<double>(
      begin: 0.0,
      end: 1.0,
    ).animate(
      CurvedAnimation(
        parent: controller,
        curve: Interval(
          0.0,
          0.100,
          curve: Curves.linear,
        ),
      ),
    );

    width = Tween<double>(
      begin: 50.0,
      end: 150.0,
    ).animate(
      CurvedAnimation(
        parent: controller,
        curve: Interval(
          0.125,
          0.250,
          curve: Curves.linear,
        ),
      ),
    );
    height = Tween<double>(begin: 50.0, end: 150.0).animate(
      CurvedAnimation(
        parent: controller,
        curve: Interval(
          0.250,
          0.375,
          curve: Curves.linear,
        ),
      ),
    );
    padding = EdgeInsetsTween(
      begin: const EdgeInsets.only(top: 16.0),
      end: const EdgeInsets.only(top: 70.0),
    ).animate(
      CurvedAnimation(
        parent: controller,
        curve: Interval(
          0.250,
          0.375,
          curve: Curves.linear,
        ),
      ),
    );
    borderRadius = BorderRadiusTween(
      begin: BorderRadius.circular(4.0),
      end: BorderRadius.circular(40.0),
    ).animate(
      CurvedAnimation(
        parent: controller,
        curve: Interval(
          0.375,
          0.500,
          curve: Curves.linear,
        ),
      ),
    );
    color = ColorTween(
      begin: Colors.indigo[100],
      end: Colors.orange[400],
    ).animate(
      CurvedAnimation(
        parent: controller,
        curve: Interval(
          0.500,
          0.750,
          curve: Curves.linear,
        ),
      ),
    );
    scale = Tween<double>(
      begin: 1.0,
      end: 0.5,
    ).animate(
      CurvedAnimation(
        parent: controller,
        curve: Interval(
          0.750,
          0.900,
          curve: Curves.linear,
        ),
      ),
    );
    rotate = Tween<double>(
      begin: 0.0,
      end: 0.5,
    ).animate(
      CurvedAnimation(
        parent: controller,
        curve: Interval(
          0.900,
          0.950,
          curve: Curves.linear,
        ),
      ),
    );
    translate = Tween<double>(
      begin: 0.0,
      end: 50.0,
    ).animate(
      CurvedAnimation(
        parent: controller,
        curve: Interval(
          0.900,
          0.999,
          curve: Curves.linear,
        ),
      ),
    );
  }

  @override
  Widget build(BuildContext context) {
    return AnimatedBuilder(
      builder: _buildAnimationWidget, // 动画变化时调用这个函数
      animation: controller, // 要执行的动画
    );
  }

  Widget _buildAnimationWidget(BuildContext context, Widget child) {
    return Container(
      transform: Matrix4.identity()
        ..scale(scale.value)
        ..rotateZ(rotate.value)
        ..translate(translate.value),
      padding: padding.value, // 内边距动画
      child: Opacity(
        opacity: opacity.value, // 透明度动画
        child: Container(
          child: this.child,
          width: width.value, // 宽度动画
          height: height.value, // 高度动画
          decoration: BoxDecoration(
            color: color.value, // 颜色动画
            borderRadius: borderRadius.value, // 圆角动画
          ),
        ),
      ),
    );
  }
}
