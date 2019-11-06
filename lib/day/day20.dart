import 'package:flutter/material.dart';

class Day20 extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      theme: ThemeData(
        primaryColor: Colors.white,
      ),
      home: WeWidget(),
    );
  }
}

class WeWidget extends StatefulWidget {
  @override
  State<StatefulWidget> createState() {
    return WeWidgetState();
  }
}

class WeWidgetState extends State<WeWidget>
    with SingleTickerProviderStateMixin {
  Animation<Color> _animation;
  AnimationController _controller;
  Animation _curve;

  @override
  void initState() {
    super.initState();
    _controller = AnimationController(
      duration: const Duration(milliseconds: 3000),
      vsync: this,
    );
    _curve = CurvedAnimation(parent: _controller, curve: Curves.fastOutSlowIn);
    _animation =
        ColorTween(begin: Colors.white, end: Colors.black87.withOpacity(0.8))
            .animate(_curve);
    _controller.forward();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("day20"),
      ),
      body: _buildColumn(),
    );
  }

  Widget _buildColumn() {
    return Center(
      child: Container(
        width: 200,
        height: 200,
        child: AnimatedModalBarrier(
          semanticsLabel: "StackBarrier",
          barrierSemanticsDismissible: true,
          dismissible: true,
          color: _animation,
        ),
      ),
    );
  }
}
