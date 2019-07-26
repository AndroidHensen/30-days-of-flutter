import 'package:flutter/material.dart';

abstract class Animator {
  int duration;
  int delay;
  Curve curve;
}

class AnimWidth extends Animator {
  AnimWidth({
    this.from,
    this.to,
    this.duration = 0,
    this.delay = 0,
    this.curve = Curves.linear,
  });

  double from;
  double to;
  int duration;
  int delay;
  Curve curve;
}

class AnimHeight extends Animator {
  AnimHeight({
    this.from,
    this.to,
    this.duration = 0,
    this.delay = 0,
    this.curve = Curves.linear,
  });

  double from;
  double to;
  int duration;
  int delay;
  Curve curve;
}

class AnimPadding extends Animator {
  AnimPadding({
    this.from,
    this.to,
    this.duration = 0,
    this.delay = 0,
    this.curve = Curves.linear,
  });

  EdgeInsets from;
  EdgeInsets to;
  int duration;
  int delay;
  Curve curve;
}

class AnimOpacity extends Animator {
  AnimOpacity({
    this.from,
    this.to,
    this.duration = 0,
    this.delay = 0,
    this.curve = Curves.linear,
  });

  double from;
  double to;
  int duration;
  int delay;
  Curve curve;
}

class AnimScale extends Animator {
  AnimScale({
    this.from,
    this.to,
    this.duration = 0,
    this.delay = 0,
    this.curve = Curves.linear,
  });

  double from;
  double to;
  int duration;
  int delay;
  Curve curve;
}

class AnimRotate extends Animator {
  AnimRotate({
    this.from,
    this.to,
    this.duration = 0,
    this.delay = 0,
    this.curve = Curves.linear,
  });

  double from;
  double to;
  int duration;
  int delay;
  Curve curve;
}

class AnimTranslate extends Animator {
  AnimTranslate({
    this.from,
    this.to,
    this.duration = 0,
    this.delay = 0,
    this.curve = Curves.linear,
  });

  double from;
  double to;
  int duration;
  int delay;
  Curve curve;
}

class AnimColor extends Animator {
  AnimColor({
    this.from,
    this.to,
    this.duration = 0,
    this.delay = 0,
    this.curve = Curves.linear,
  });

  Color from;
  Color to;
  int duration;
  int delay;
  Curve curve;
}

class AnimBorder extends Animator {
  AnimBorder({
    this.from,
    this.to,
    this.duration = 0,
    this.delay = 0,
    this.curve = Curves.linear,
  });

  BorderRadius from;
  BorderRadius to;
  int duration;
  int delay;
  Curve curve;
}
