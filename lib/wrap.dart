import 'package:flutter/material.dart';
import 'package:widgets/common_container.dart';

class WeekWrap extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    // TODO: implement build
    return CommonContainer(
      child: buildChild(),
      title: 'wrap',
    );
  }

  Widget buildChild() {
    return Container(
      child: Column(
        children: <Widget>[
          Padding(child: Text('using row'), padding: EdgeInsets.all(10.0)),
          Row(
            children: <Widget>[
              buildBlock(),
              buildBlock(),
              buildBlock(),
              buildBlock(),
            ],
          ),
          Padding(child: Text('using wrap'), padding: EdgeInsets.all(10.0)),
          Wrap(
            alignment: WrapAlignment.end,
            children: <Widget>[
              buildBlock(),
              buildBlock(),
              buildBlock(),
              buildBlock(),
            ],
          ),
        ],
      ),
    );
  }

  Widget buildBlock() {
    return Container(
      color: Colors.indigoAccent,
      child: Container(
        width: 100.0,
        height: 100.0,
        color: Colors.red,
      ),
      padding: EdgeInsets.all(30.0),
    );
  }
}
