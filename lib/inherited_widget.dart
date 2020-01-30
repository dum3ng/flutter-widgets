import 'package:flutter/material.dart';
import 'package:widgets/common_container.dart';

/// ? Why?
/// Need to get more understanding of the `BuildContext`

class WeekInheritedWidget extends StatefulWidget {
  @override
  _WeekInheritedWidgetState createState() => _WeekInheritedWidgetState();
}

class _WeekInheritedWidgetState extends State<WeekInheritedWidget> {
  @override
  Widget build(BuildContext context) {
    return CommonContainer(
        title: 'inherited widget',
        child: Center(
            child: MyThemeData(
                color: Colors.red,
                fontSize: 32.0,
                child: Column(
                  mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                  children: <Widget>[
                    Container(
                        width: 100.0,
                        height: 100.0,
                        color: MyThemeData.of(context)?.color ?? Colors.black),
                    BoringWidget(),
                  ],
                ))));
  }
}

class BoringWidget extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Container(
      width: 200.0,
      height: 100.0,
      color: MyThemeData.of(context).color,
      child: buildText(context),
    );
  }

  Widget buildText(BuildContext context) {
    return Text(
      'my fontsize comes from `MyThemeData`',
      style: TextStyle(fontSize: MyThemeData.of(context)?.fontSize ?? 32.0),
    );
  }
}

class MyThemeData extends InheritedWidget {
  final Color color;
  final double fontSize;

  MyThemeData({this.color, this.fontSize, Widget child}) : super(child: child);

  static MyThemeData of(BuildContext context) =>
      context.dependOnInheritedWidgetOfExactType<MyThemeData>();

  @override
  bool updateShouldNotify(InheritedWidget oldWidget) {
    /// TODO:
    return true;
  }
}
