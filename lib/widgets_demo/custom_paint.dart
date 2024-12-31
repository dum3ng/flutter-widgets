import 'package:flutter/material.dart';
import 'package:widgets/widgets/common_container.dart';
import 'package:widgets/utils/color.dart';

class WeekCustomPaint extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return CommonContainer(
      title: 'custom paint',
      child: AnimatingCircle(),
    );
  }
}

class AnimatingCircle extends StatefulWidget {
  @override
  _AnimatingCircleState createState() => _AnimatingCircleState();
}

class _AnimatingCircleState extends State<AnimatingCircle>
    with TickerProviderStateMixin {
  double radius = 0.0;
  late AnimationController _controller;
  late Animation<double> _animation;
  late AnimationStatus _oldStatus;
  late Color _color;

  @override
  void initState() {
    // TODO: implement initState
    super.initState();
    radius = 0.0;
    _controller = AnimationController(
        vsync: this,
        duration: Duration(milliseconds: 17),
        lowerBound: 0.0,
        upperBound: 200.0);
    _animation = Tween(begin: 0.0, end: 1.0).animate(_controller);
    _controller.repeat(
        min: 0.0, max: 100.0, period: Duration(seconds: 2), reverse: true);
    _color = Colors.blue;

    _animation.addListener(() {
      if (_animation.status != _oldStatus) {
        _oldStatus = _animation.status;
        this.setState(() {
          _color = getRandomColor();
        });
      }
      this.setState(() {
        radius = _animation.value;
      });
    });
  }

  @override
  void dispose() {
    // TODO: implement dispose
    _controller.dispose();
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return CustomPaint(
      size: Size(200.0, 200.0),
      painter: MyPainter(radius: radius, color: _color),
    );
  }
}

class MyPainter extends CustomPainter {
  double radius = 0.0;
  Color color;

  MyPainter({required this.radius, required this.color});

  @override
  void paint(Canvas canvas, Size size) {
    Paint paint = Paint();
    paint.color = color;
    paint.strokeWidth = 2.0;

    canvas.drawCircle(
        Offset(size.width / 2.0, size.height / 2.0), radius, paint);
  }

  @override
  bool shouldRepaint(MyPainter oldDelegate) {
    if (oldDelegate.radius != radius || oldDelegate.color != color) {
      return true;
    }
    return false;
  }
}
