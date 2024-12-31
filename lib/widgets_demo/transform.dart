import 'package:flutter/material.dart';
import 'package:widgets/widgets/common_container.dart';
import '../utils/helpers.dart';

class WeekTransform extends StatefulWidget {
  @override
  _WeekTransformState createState() => _WeekTransformState();
}

class _WeekTransformState extends State<WeekTransform>
    with TickerProviderStateMixin {
  late AnimationController _controller;
  late Animation<double> _animation;
  double _angle = 0.0;
  int day = 1;
  double _oldValue = 0.0;

  @override
  void initState() {
    // TODO: implement initState
    super.initState();
    _controller = AnimationController(
        vsync: this,
        lowerBound: 0.0,
        upperBound: double.infinity,
        duration: Duration(seconds: 1, milliseconds: 500));
    _animation = Tween(begin: 0.0, end: 1.0).animate(_controller);
    _animation.addListener(() {
      if (_animation.value - _oldValue < 0.0) {
        this.setState(() {
          day = day + 1;
        });
        print(day);
      }
      this.setState(() {
        _oldValue = _animation.value;
        _angle = _animation.value;
      });
    });

    _controller.repeat(min: 0.0, max: 180.0);
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
        title: 'tranform',
        child: Stack(
          children: List<Widget>.generate(31, (index) {
            return calendarDay(index + 1);
          }).toList().reversed.toList(),
        ));
  }

  Widget calendarDay(int day) {
    double rotate = this.day > day
        ? deg2rad(180)
        : this.day < day
            ? deg2rad(0)
            : deg2rad(_angle);
    return Center(
        child: Transform(
      transform: Matrix4.rotationX(rotate),
      child: Container(
        width: 160.0,
        height: 120.0,
        decoration: BoxDecoration(
          color: Colors.black87,
          borderRadius: BorderRadius.only(
            bottomLeft: Radius.circular(20.0),
            bottomRight: Radius.circular(20.0),
          ),
        ),
        child: Center(
          child: Text(
            day.toString(),
            style: TextStyle(
                color: Colors.white,
                fontWeight: FontWeight.w700,
                fontSize: 32.0),
          ),
        ),
      ),
    ));
  }
}
