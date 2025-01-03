import 'package:flutter/material.dart';
import 'package:widgets/widgets/common_container.dart';

class WeekFadeTransition extends StatefulWidget {
  @override
  _WeekFadeTransitionState createState() => _WeekFadeTransitionState();
}

class _WeekFadeTransitionState extends State<WeekFadeTransition>
    with TickerProviderStateMixin {
  late AnimationController _animationController;

  late Animation<double> _animation;

  @override
  void initState() {
    // TODO: implement initState
    super.initState();
    _animationController =
        AnimationController(vsync: this, duration: Duration(seconds: 2));
    _animation = Tween(begin: 0.0, end: 1.0).animate(_animationController);
  }

  @override
  void dispose() {
    // TODO: implement dispose
    _animationController.dispose();
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    _animationController.forward();
    return CommonContainer(
        title: 'fade transition',
        child: Center(
            child: Column(
          children: <Widget>[
            SizedBox(
              height: 100.0,
            ),
            FadeTransition(
              child: Container(width: 100.0, height: 100.0, color: Colors.pink),
              opacity: _animation,
            ),
            SizedBox(
              height: 100.0,
            ),
            Center(
              child: ElevatedButton(
                child: Padding(
                  child: Column(
                    children: [Icon(Icons.flash_on), Text('animate')],
                  ),
                  padding: EdgeInsets.all(10.0),
                ),
                onPressed: () {
                  _animationController.forward(from: 0.0);
                },
              ),
            )
          ],
        )));
  }
}
