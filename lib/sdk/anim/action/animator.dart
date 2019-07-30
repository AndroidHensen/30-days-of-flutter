import 'package:flutter/material.dart';

abstract class Animator {
  int duration;
  int delay;
  Curve curve;
}

class W extends Animator {
  W({
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

class H extends Animator {
  H({
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

class P extends Animator {
  P({
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

class O extends Animator {
  O({
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

class S extends Animator {
  S({
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

class R extends Animator {
  R({
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

class TX extends Animator {
  TX({
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

class TY extends Animator {
  TY({
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

class C extends Animator {
  C({
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

class B extends Animator {
  B({
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
