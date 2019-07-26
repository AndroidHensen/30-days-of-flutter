import 'package:flutter/material.dart';

abstract class Animator {
  int duration;
  int delay;
}

class W extends Animator {
  W({this.from, this.to, this.duration, this.delay});

  double from;
  double to;
  int duration = 0;
  int delay = 0;
}

class H extends Animator {
  H({this.from, this.to, this.duration, this.delay});

  double from;
  double to;
  int duration = 0;
  int delay = 0;
}

class P extends Animator {
  P({this.from, this.to, this.duration, this.delay});

  EdgeInsets from;
  EdgeInsets to;
  int duration = 0;
  int delay = 0;
}

class O extends Animator {
  O({this.from, this.to, this.duration, this.delay});

  double from;
  double to;
  int duration = 0;
  int delay = 0;
}

class S extends Animator {
  S({this.from, this.to, this.duration, this.delay});

  double from;
  double to;
  int duration = 0;
  int delay = 0;
}

class R extends Animator {
  R({this.from, this.to, this.duration, this.delay});

  double from;
  double to;
  int duration = 0;
  int delay = 0;
}

class T extends Animator {
  T({this.from, this.to, this.duration, this.delay});

  double from;
  double to;
  int duration = 0;
  int delay = 0;
}

class C extends Animator {
  C({this.from, this.to, this.duration, this.delay});

  Color from;
  Color to;
  int duration = 0;
  int delay = 0;
}

class B extends Animator {
  B({this.from, this.to, this.duration, this.delay});

  BorderRadius from;
  BorderRadius to;
  int duration = 0;
  int delay = 0;
}
