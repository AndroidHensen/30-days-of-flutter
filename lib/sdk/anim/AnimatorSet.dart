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
  int _duration = 0; //时间
  AnimationController _controller;

  @override
  void initState() {
    super.initState();

    for (var anim in widget.animatorSet) {
      _duration += (anim.duration + anim.delay);
    }

    _controller = AnimationController(
      duration: Duration(milliseconds: _duration),
      vsync: this,
    );

    _controller
      ..addListener(() {})
      ..addStatusListener((AnimationStatus status) {
//        if (status == AnimationStatus.completed) {
//          _controller.reverse();
//        } else if (status == AnimationStatus.dismissed) {
//          _controller.forward();
//        }
      });
    _controller.repeat();
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
  Animation<double> rotateX;
  Animation<double> rotateY;
  Animation<double> rotateZ;
  Animation<double> translateX;
  Animation<double> translateY;

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

    for (var anim in animatorSet) {
      start = anim.delay / duration + end; //延时+上次结束
      end = start + anim.duration / duration; //上次开始+时长

      print("duration=" +
          duration.toString() +
          " anim.duration=" +
          anim.duration.toString() +
          " anim.delay=" +
          anim.delay.toString() +
          " start=" +
          start.toString() +
          " end=" +
          end.toString());

      if (anim is Serial) {
        //并行动画处理
        List<Animator> serialList = anim.serialList;
        serialList.forEach((Animator anim2) {
          double tempStart = start + anim2.delay / duration;
          _parseAnimation2(anim2, tempStart, end);
        });
      } else {
        //串行动画处理
        _parseAnimation2(anim, start, end);
      }
    }
  }

  void _parseAnimation2(Animator anim, double start, double end) {
    _parseAnimationItem(
      anim,
      start <= 0.0 ? 0.001 : start,
      end >= 1.0 ? 0.999 : end,
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
      padding: padding?.value ?? EdgeInsets.all(0), // 内边距动画
      child: Transform(
        transform: Matrix4.identity()
          ..scale(scale?.value ?? 1.0)
          ..rotateX(rotateX?.value ?? 0.0)
          ..rotateY(rotateY?.value ?? 0.0)
          ..rotateZ(rotateZ?.value ?? 0.0)
          ..translate(translateX?.value ?? 0.0, translateY?.value ?? 0.0),
        alignment: FractionalOffset.center,
        child: Opacity(
          opacity: opacity?.value ?? 1.0, // 透明度动画
          child: Container(
            child: this.child,
            width: width?.value ?? null, // 宽度动画
            height: height?.value ?? null, // 高度动画
            decoration: BoxDecoration(
              color: color?.value ?? Colors.transparent, // 颜色动画
              borderRadius:
                  borderRadius?.value ?? BorderRadius.circular(0), // 圆角动画
            ),
          ),
        ),
      ),
    );
  }

  //解析动画
  void _parseAnimationItem(Animator anim, double start, double end) {
    print("anim=" +
        anim.toString() +
        " start=" +
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
            start,
            end,
            curve: anim.curve,
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
            start,
            end,
            curve: anim.curve,
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
            start,
            end,
            curve: anim.curve,
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
            start,
            end,
            curve: anim.curve,
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
            start,
            end,
            curve: anim.curve,
          ),
        ),
      );
    } else if (anim is RX) {
      rotateX = Tween<double>(
        begin: anim.from,
        end: anim.to,
      ).animate(
        CurvedAnimation(
          parent: controller,
          curve: Interval(
            start,
            end,
            curve: anim.curve,
          ),
        ),
      );
    } else if (anim is RY) {
      rotateY = Tween<double>(
        begin: anim.from,
        end: anim.to,
      ).animate(
        CurvedAnimation(
          parent: controller,
          curve: Interval(
            start,
            end,
            curve: anim.curve,
          ),
        ),
      );
    } else if (anim is RZ) {
      rotateZ = Tween<double>(
        begin: anim.from,
        end: anim.to,
      ).animate(
        CurvedAnimation(
          parent: controller,
          curve: Interval(
            start,
            end,
            curve: anim.curve,
          ),
        ),
      );
    } else if (anim is TX) {
      translateX = Tween<double>(
        begin: anim.from,
        end: anim.to,
      ).animate(
        CurvedAnimation(
          parent: controller,
          curve: Interval(
            start,
            end,
            curve: anim.curve,
          ),
        ),
      );
    } else if (anim is TY) {
      translateY = Tween<double>(
        begin: anim.from,
        end: anim.to,
      ).animate(
        CurvedAnimation(
          parent: controller,
          curve: Interval(
            start,
            end,
            curve: anim.curve,
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
            start,
            end,
            curve: anim.curve,
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
            start,
            end,
            curve: anim.curve,
          ),
        ),
      );
    }
  }
}
