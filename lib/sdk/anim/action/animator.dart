import 'package:flutter/material.dart';

abstract class Animator {
  int duration;
  int delay;
  Curve curve;
}

class Serial extends Animator {
  Serial({
    this.duration = 0,
    this.delay = 0,
    this.serialList = const <Animator>[],
  });

  int duration;
  int delay;
  List<Animator> serialList;
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

class SX extends Animator {
  SX({
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

class SY extends Animator {
  SY({
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

class RX extends Animator {
  RX({
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

class RY extends Animator {
  RY({
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

class RZ extends Animator {
  RZ({
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

