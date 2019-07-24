class Animator {
  Animator({this.from, this.to, this.duration});

  double from;

  double to;

  double duration;
}

class Scale extends Animator {
  Scale({this.from, this.to, this.duration});

  double from;

  double to;

  double duration;
}

class Rotate extends Animator {
  Rotate({this.from, this.to, this.duration});

  double from;

  double to;

  double duration;
}
