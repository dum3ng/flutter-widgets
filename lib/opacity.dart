import 'package:flutter/material.dart';
import 'package:widgets/common_container.dart';

class WeekOpacity extends StatefulWidget {
  @override
  State<StatefulWidget> createState() {
    // TODO: implement createState
    return _WeekOpacityState();
  }
}

class _WeekOpacityState<WeekOpacity> extends State {
  @override
  Widget build(BuildContext context) {
    // TODO: implement build
    return CommonContainer(
        title: 'opacity',
        child: Padding(
            padding: EdgeInsets.all(10.0),
            child: Column(
//              mainAxisAlignment: MainAxisAlignment.center,
              crossAxisAlignment: CrossAxisAlignment.center,
              children: <Widget>[
                labeledWidget(
                    Icon(
                      Icons.android,
                      size: 100,
                      color: Colors.red,
                    ),
                    label: 'without opacity'),
                SizedBox(
                  height: 20.0,
                ),
                labeledWidget(
                  Opacity(
                    opacity: 0.5,
                    child: Icon(
                      Icons.android,
                      size: 100.0,
                      color: Colors.red,
                    ),
                  ),
                  label: 'opacity 0.5',
                ),
                SizedBox(height: 20.0),
                labeledWidget(
                    Stack(
                      children: <Widget>[
                        Image.asset('assets/cat.jpg', width: 200.0),
                        Opacity(
                          opacity: 0.2,
                          child: Container(
                            width: 200.0,
                            height: 200.0,
                            decoration: BoxDecoration(
                                gradient: LinearGradient(
                              colors: [Colors.red, Colors.green],
                            )),
                          ),
                        )
                      ],
                    ),
                    label: 'stacked')
              ],
            )));
  }

  Widget labeledWidget(Widget widget, {String label}) {
    return Center(
        child: Column(
      children: <Widget>[
        widget,
        Padding(
          child: Text(label),
          padding: EdgeInsets.all(10.0),
        )
      ],
    ));
  }
}
