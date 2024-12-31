import 'package:flutter/material.dart';

class LabeledWidget extends StatelessWidget {
  final Widget child;
  final String label;
  final EdgeInsets padding;

  LabeledWidget(
      {required this.child,
      required this.label,
      this.padding = const EdgeInsets.all(20.0)});

  @override
  Widget build(BuildContext context) {
    return Padding(
        padding: padding,
        child: Column(
          children: <Widget>[
            Padding(
                padding: EdgeInsets.all(20.0),
                child: Center(
                  child: Text(label),
                )),
            child
          ],
        ));
  }
}
