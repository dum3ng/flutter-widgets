import 'package:flutter/material.dart';
import 'package:widgets/common_container.dart';

class WeekSliverAppBar extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return CommonContainer(
      child: CustomScrollView(
        slivers: <Widget>[
          SliverAppBar(
              leading: IconButton(
                  icon: Icon(
                Icons.android,
                color: Colors.red,
              )),
              title: Text('sliver app bar, hi!'),
              expandedHeight: 200.0,
              flexibleSpace: FlexibleSpaceBar(
                background: Image.asset(
                  'assets/cat.jpg',
                  width: 375.0,
                ),
              )),
//          createBlock(Colors.red),
//          createBlock(Colors.yellow),
//          createBlock(Colors.blue),
//          createBlock(Colors.greenAccent),
        ],
      ),
    );
  }

  Widget createBlock(Color color) {
    return Container(height: 200.0, width: 375.0, color: color);
  }
}
