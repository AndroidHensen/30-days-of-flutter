import 'package:flutter/material.dart';

abstract class Animator {
  int duration;
  int delay;
}

class W extends Animator {
  W({this.from, this.to, this.duration = 0, this.delay = 0});

  double from;
  double to;
  int duration;
  int delay;
}

class H extends Animator {
  H({this.from, this.to, this.duration = 0, this.delay = 0});

  double from;
  double to;
  int duration;
  int delay;
}

class P extends Animator {
  P({this.from, this.to, this.duration = 0, this.delay = 0});

  EdgeInsets from;
  EdgeInsets to;
  int duration;
  int delay;
}

class O extends Animator {
  O({this.from, this.to, this.duration = 0, this.delay = 0});

  double from;
  double to;
  int duration;
  int delay;
}

class S extends Animator {
  S({this.from, this.to, this.duration = 0, this.delay = 0});

  double from;
  double to;
  int duration;

  int delay;
}

class R extends Animator {
  R({this.from, this.to, this.duration = 0, this.delay = 0});

  double from;
  double to;
  int duration;
  int delay;
}

class T extends Animator {
  T({this.from, this.to, this.duration = 0, this.delay = 0});

  double from;
  double to;
  int duration;
  int delay;
}

class C extends Animator {
  C({this.from, this.to, this.duration = 0, this.delay = 0});

  Color from;
  Color to;
  int duration;
  int delay;
}

class B extends Animator {
  B({this.from, this.to, this.duration = 0, this.delay = 0});

  BorderRadius from;
  BorderRadius to;
  int duration;
  int delay;
}
