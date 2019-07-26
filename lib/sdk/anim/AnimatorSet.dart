import 'package:flutter/material.dart';

import 'action/animator.dart';

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
  int _duration=0; //时间
  AnimationController _controller;

  @override
  void initState() {
    super.initState();

    for (var anim in widget.animatorSet) {
      int tempDuration = (anim.duration + anim.delay);
      _duration = _duration + tempDuration;
    }

    _controller = AnimationController(
      duration: Duration(milliseconds: _duration),
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
        child: widget.child,
        controller: _controller,
        animatorSet: widget.animatorSet,
        duration: _duration);
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

  AnimatedLogo({
    Key key,
    this.child,
    this.controller,
    this.animatorSet,
    this.duration,
  }) : super(key: key) {
    this._parseAnimation();
  }

  final Widget child;
  final Animation<double> controller;
  final List<Animator> animatorSet;
  final int duration;

  void _parseAnimation() {
    double start = 0.0;
    double end = 0.0;

    print("duration=" + duration.toString());

    for (var anim in animatorSet) {
      start += anim.delay / duration;
      end += anim.duration / duration;

      _parseAnimationItem(
          anim, start <= 0.0 ? 0.001 : start, end >= 1.0 ? 0.999 : end);
    }
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
        ..scale(scale?.value ?? 1.0)
        ..rotateZ(rotate?.value ?? 0.0)
        ..translate(translate?.value ?? 0.0),
      padding: padding?.value ?? EdgeInsets.all(0), // 内边距动画
      child: Opacity(
        opacity: opacity?.value ?? 1.0, // 透明度动画
        child: Container(
          child: this.child,
          width: width?.value ?? 0, // 宽度动画
          height: height?.value ?? 0, // 高度动画
          decoration: BoxDecoration(
            color: color?.value ?? Colors.transparent, // 颜色动画
            borderRadius:
                borderRadius?.value ?? BorderRadius.circular(0), // 圆角动画
          ),
        ),
      ),
    );
  }

  //解析动画
  void _parseAnimationItem(Animator anim, double start, double end) {
    print("anim=" +
        anim.toString() +
        "start=" +
        start.toString() +
        " end=" +
        end.toString());

    if (anim is W) {
      width = Tween<double>(
        begin: anim.from,
        end: anim.to,
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
    } else if (anim is H) {
      height = Tween<double>(
        begin: anim.from,
        end: anim.to,
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
    } else if (anim is P) {
      padding = EdgeInsetsTween(
        begin: anim.from,
        end: anim.to,
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
    } else if (anim is O) {
      opacity = Tween<double>(
        begin: anim.from,
        end: anim.to,
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
    } else if (anim is S) {
      scale = Tween<double>(
        begin: anim.from,
        end: anim.to,
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
    } else if (anim is R) {
      rotate = Tween<double>(
        begin: anim.from,
        end: anim.to,
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
    } else if (anim is T) {
      translate = Tween<double>(
        begin: anim.from,
        end: anim.to,
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
    } else if (anim is C) {
      color = ColorTween(
        begin: anim.from,
        end: anim.to,
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
    } else if (anim is B) {
      borderRadius = BorderRadiusTween(
        begin: anim.from,
        end: anim.to,
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
    }
  }
}
