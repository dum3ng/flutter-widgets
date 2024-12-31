import 'package:flutter/material.dart';
import 'dart:math' as math;
import 'package:widgets/widgets/common_container.dart';

class WeekAnimatedBuilder extends StatefulWidget {
  @override
  _WeekAnimatedBuilderState createState() => _WeekAnimatedBuilderState();
}

class _WeekAnimatedBuilderState extends State<WeekAnimatedBuilder>
    with TickerProviderStateMixin {
  late AnimationController _controller;

  @override
  void initState() {
    // TODO: implement initState
    super.initState();
    _controller =
        AnimationController(vsync: this, duration: Duration(seconds: 1))
          ..repeat();
  }

  @override
  void dispose() {
    // TODO: implement dispose
    _controller.dispose();
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return CommonContainer(
      title: 'animated builder',
      child: Center(
        child: AnimatedBuilder(
          animation: _controller,
          child: FlutterLogo(
            size: 100.0,
          ),
          builder: (context, child) {
            return Transform.rotate(
              angle: _controller.value * 2 * math.pi,
              child: child,
            );
          },
        ),
      ),
    );
  }
}
