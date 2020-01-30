import 'package:flutter/material.dart';
import 'package:widgets/common_container.dart';

class WeekSpacer extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return CommonContainer(
        title: 'spacer',
        child: Center(
            child: Column(
                mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                children: [
              Row(
                children: <Widget>[buildBlock(), Spacer(), buildBlock()],
              ),
              Row(
                children: <Widget>[
                  buildBlock(),
                  Spacer(flex: 1),
                  buildBlock(),
                  Spacer(flex: 2)
                ],
              ),
              Row(
                children: <Widget>[
                  buildBlock(),
                  Spacer(flex: 2),
                  buildBlock(),
                  Spacer(flex: 4)
                ],
              ),
              Row(
                children: <Widget>[
                  buildBlock(),
                  Spacer(),
                  buildBlock(),
                  Spacer(),
                  Spacer(),
                  buildBlock(),
                  Spacer(flex: 9)
                ],
              ),
            ])));
  }

  Widget buildBlock() => Container(
        width: 80.0,
        height: 80.0,
        decoration: BoxDecoration(
            color: Colors.blue,
            borderRadius: BorderRadius.all(Radius.circular(10.0))),
      );
}
