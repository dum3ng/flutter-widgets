import 'package:flutter/material.dart';
import 'package:widgets/widgets/common_container.dart';

class WeekAlign extends StatefulWidget {
  @override
  _WeekAlignState createState() => _WeekAlignState();
}

class _WeekAlignState extends State<WeekAlign> {
  Alignment alignment = Alignment.topCenter;

  @override
  void initState() {
    super.initState();
  }

  @override
  Widget build(BuildContext context) {
    return CommonContainer(
      title: 'align',
      child: Center(
        child: Column(
          children: <Widget>[
            Container(
              width: 200.0,
              height: 200.0,
              color: Colors.blue,
              child: Align(
                alignment: alignment,
                child: Container(
                  width: 40.0,
                  height: 80.0,
                  color: Colors.black,
                ),
              ),
            ),
            selectAlignment(),
          ],
        ),
      ),
    );
  }

  Widget selectAlignment() {
    const alignments = [
      Alignment.topLeft,
      Alignment.topCenter,
      Alignment.topRight,
      Alignment.centerLeft,
      Alignment.center,
      Alignment.centerRight,
      Alignment.bottomLeft,
      Alignment.bottomCenter,
      Alignment.bottomRight,
    ];
    return Wrap(
      children: alignments
          .map((align) => Container(
                margin: EdgeInsets.all(5.0),
                decoration: BoxDecoration(
                    border: Border.all(color: Colors.grey.shade200)),
                width: 120.0,
                height: 80.0,
                child: Column(
                  children: <Widget>[
                    Text(align.toString()),
                    Radio(
                      value: align,
                      groupValue: alignment,
                      onChanged: (a) => this.setState(() {
                        if (a != null) alignment = a;
                      }),
                    )
                  ],
                ),
              ))
          .toList(),
    );
  }
}
