import 'package:flutter/material.dart';
import 'package:widgets/common_container.dart';

class WeekExpanded extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    // TODO: implement build
    return CommonContainer(
      child: buildBody(),
      title: 'expanded',
    );
  }

  Widget buildBody() {
    return Container(
      child: Column(
        children: <Widget>[
          SizedBox(
            height: 100.0,
          ),
          Row(
            children: <Widget>[
              buildBlock('red', Colors.red),
              buildBlock('green', Colors.green),
              buildBlock('blue', Colors.blue),
            ],
          ),
          SizedBox(
            height: 100.0,
          ),
          Center(
            child: Text('space around'),
          ),
          Row(
            mainAxisAlignment: MainAxisAlignment.spaceAround,
            children: <Widget>[
              buildBlock('red', Colors.red),
              buildBlock('green', Colors.green),
              buildBlock('blue', Colors.blue),
            ],
          ),
          SizedBox(
            height: 100.0,
          ),
          Row(
            mainAxisAlignment: MainAxisAlignment.spaceAround,
            children: <Widget>[
              buildBlock('red', Colors.red),
              Expanded(
                child: buildBlock('green', Colors.green),
              ),
              buildBlock('blue', Colors.blue),
            ],
          ),
          SizedBox(
            height: 100.0,
          ),
          Row(
            children: <Widget>[
              buildBlock('red', Colors.red),
              Expanded(
                child: buildBlock('green', Colors.green),
              ),
              buildBlock('blue', Colors.blue),
            ],
          )
        ],
      ),
    );
  }

  Widget buildBlock(String title, Color color) {
    return Container(
      width: 50.0,
      height: 50.0,
      color: color,
      child: Text(title),
    );
  }
}
