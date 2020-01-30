import 'package:flutter/material.dart';
import 'package:widgets/common_container.dart';

/// As for web, there are some css tricks to simulate
/// the aspect ratio effect by using percent padding.
/// Flutter make this built-in.

class WeekAspectRatio extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return CommonContainer(
        title: 'AspectRatio',
        child: Center(
            child: Column(children: [
          AspectRatio(
            aspectRatio: 2 / 1,

            /// aspect ratio will ignore the specified height
            child: Container(
              height: 20.0,
              color: Colors.blue,
            ),
          ),
          SizedBox(
            height: 100.0,
            child: Row(
              children: <Widget>[
                AspectRatio(
                  aspectRatio: 1 / 2,
                  child: Container(color: Colors.red),
                ),
                Padding(
                  padding: EdgeInsets.symmetric(vertical: 20.0),
                  child: AspectRatio(
                    aspectRatio: 5 / 2,
                    child: Container(color: Colors.green),
                  ),
                )
              ],
            ),
          )
        ])));
  }
}
