import 'package:flutter/material.dart';

class WeekFlexible extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return DefaultTabController(
      length: 2,
      child: Scaffold(
        appBar: AppBar(
          bottom: TabBar(tabs: [Tab(text: 'column'), Tab(text: 'other')]),
        ),
        body: TabBarView(children: [page1(), page2()]),
      ),
    );
  }

  Widget page1() {
    /// note that by default the `fit` property of  `Flexible` is **loose**,
    /// which means the height of its child will take precedence than the
    /// flexible height.
    return Container(
        color: Colors.yellow,
        child: Container(
            color: Colors.indigo,
            child: Column(
              children: <Widget>[
                Flexible(
                  flex: 1,
                  child: Container(
                    height: 50.0,
                    color: Colors.red,
                  ),
                ),
                Flexible(
                  flex: 2,
                  child: Container(
//                    height: 50.0,
                    color: Colors.blue,
                  ),
                ),
                Flexible(
                  flex: 3,
                  fit: FlexFit.tight,
                  child: Container(
                    height: 50.0,
                    color: Colors.green,
                  ),
                ),
              ],
            )));
  }

  Widget page2() {
    return Container();
  }
}
