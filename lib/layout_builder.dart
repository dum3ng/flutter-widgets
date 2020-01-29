import 'package:flutter/material.dart';
import 'package:widgets/common_container.dart';

/// LayoutBuilder worked somewhat like `media query` in web platform

class WeekLayoutBuilder extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return CommonContainer(
      title: 'layout builder',
      child: LayoutBuilder(
        builder: (context, constraints) {
          print('${constraints.maxHeight}, ${constraints.maxWidth}');
          if (constraints.maxHeight > constraints.maxWidth) {
            return column1();
          }
          return column2();
        },
      ),
    );
  }

  Widget column2() {
    return Row(
      mainAxisAlignment: MainAxisAlignment.spaceEvenly,
      children: <Widget>[
        Container(width: 100.0, height: 100.0, color: Colors.red),
        Container(width: 100.0, height: 100.0, color: Colors.green),
      ],
    );
  }

  Widget column1() {
    return Center(
        child: Column(
      mainAxisAlignment: MainAxisAlignment.center,
      children: <Widget>[
        Text(
          'horizontal',
          style: TextStyle(fontSize: 64.0),
        ),
        Text('rotate the screen to change layout')
      ],
    ));
  }
}
