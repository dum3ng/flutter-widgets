import 'dart:ui';

import 'package:flutter/material.dart';
import 'package:widgets/common_container.dart';

class WeekBackdropFilter extends StatefulWidget {
  @override
  _WeekBackdropFilterState createState() => _WeekBackdropFilterState();
}

class _WeekBackdropFilterState extends State<WeekBackdropFilter> {
  double sigmaX = 0.0;
  double sigmaY = 0.0;

  @override
  void initState() {
    // TODO: implement initState
    super.initState();
  }

  @override
  Widget build(BuildContext context) {
    return CommonContainer(
        title: 'backdrop filter',
        child: Column(
          children: <Widget>[
            Stack(
              children: <Widget>[
                Image.asset('assets/cat.jpg', width: 320.0),
                Positioned.fill(
                    left: 10.0,
                    top: 0.0,
                    right: 10.0,
                    bottom: 20.0,
                    child: BackdropFilter(
                      filter: ImageFilter.blur(
                        sigmaX: sigmaX,
                        sigmaY: sigmaY,
                      ),
                      child: Container(
                        color: Colors.black.withAlpha(0),
                      ),
                    )),
              ],
            ),
            Padding(
              padding: EdgeInsets.all(20.0),
              child: Row(
                children: <Widget>[
                  Text('sigmmX'),
                  Slider(
                    max: 10.0,
                    label: 'sigmaX',
                    value: sigmaX,
                    onChanged: (v) => this.setState(() {
                      sigmaX = v;
                    }),
                  )
                ],
              ),
            ),
            Padding(
              padding: EdgeInsets.all(20.0),
              child: Row(
                children: <Widget>[
                  Text('sigmmY'),
                  Slider(
                    max: 10.0,
                    value: sigmaY,
                    onChanged: (v) => this.setState(() {
                      sigmaY = v;
                    }),
                  )
                ],
              ),
            )
          ],
        ));
  }
}
