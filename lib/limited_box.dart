import 'package:flutter/material.dart';
import 'package:widgets/common_container.dart';
import 'package:widgets/utils/color.dart';

/// [LimitedBox] is like `max-height` and `max-width` in css,
/// but with different usage.
///
/// [LimitedBox] give its children a height/width when in an
/// unbound environment.

class WeekLimitedBox extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return CommonContainer(
      title: 'LimitedBox',
      child: ListView.builder(
          itemBuilder: (context, index) => LimitedBox(
              maxHeight: 200.0,
              child: Container(
                color: getRandomColor(),
                child: Center(child: Text(index.toString())),
              ))),
    );
  }
}
