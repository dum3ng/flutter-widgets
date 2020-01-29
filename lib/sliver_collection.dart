import 'package:flutter/material.dart';
import 'dart:math';
import 'package:widgets/common_container.dart';
import 'package:widgets/utils/color.dart';

class WeekSliverCollection extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return CommonContainer(
        title: 'sliver list & sliver grid',
        child: DefaultTabController(
            length: 3,
            child: Scaffold(
                body: Column(
              children: <Widget>[
                /// To change the background color of TabBar, wrap it in a Container,
                /// and change the color of the Container.
                /// See: https://stackoverflow.com/questions/50566868/how-to-change-background-color-of-tabbar-without-changing-the-appbar-in-flutter
                Container(
                  color: Colors.indigoAccent,
                  child: TabBar(
                      labelColor: Colors.white,
                      indicatorColor: Colors.red,
//                    labelStyle:TextStyle(backgroundColor: Colors.green) ,
                      tabs: [
                        Tab(
                          text: 'sliver list',
                        ),
                        Tab(text: 'grid'),
                        Tab(text: 'lazily')
                      ]),
                ),
                Expanded(
                  child: TabBarView(
                    children: <Widget>[
                      demoSliverList(),
                      demoSliverGrid(),
                      Tab3List(),
//                      demoSliverLazyList(),
                    ],
                  ),
                )
              ],
            ))
//          Scaffold(
//              appBar: AppBar(
//                bottom: TabBar(tabs: [
//                  Tab(text: 'sliver list'),
//                  Tab(text: 'grid'),
//                  Tab(text: 'lazily')
//                ]),
//              ),
//              body: TabBarView(
//                children: <Widget>[
//                  demoSliverList(),
//                  demoSliverGrid(),
//                  demoSliverLazyList(),
//                ],
//              )),
            ));
  }
  Widget demoSliverList() {
    return CustomScrollView(
      slivers: <Widget>[
        SliverList(
          delegate: SliverChildListDelegate(List.generate(20, (index) => index)
              .map((x) => createListTile(x.toString()))
              .toList()),
        ),
      ],
    );
  }

  Widget demoSliverGrid() {
    return CustomScrollView(
      slivers: <Widget>[
        SliverGrid(
          gridDelegate: SliverGridDelegateWithFixedCrossAxisCount(
            crossAxisCount: 4,
          ),
          delegate: SliverChildListDelegate(List<int>.generate(84, (i) => i)
              .map((x) => createListTile(x.toString()))
              .toList()),
        )
      ],
    );
  }

  Widget demoSliverLazyList() {
    return CustomScrollView(
      slivers: <Widget>[
        SliverList(
          delegate: SliverChildBuilderDelegate(
              (context, index) => createListTile(index.toString())),
        )
      ],
    );
  }
}


Widget createListTile(String text) {
  return Container(
    decoration: BoxDecoration(
        border: Border(bottom: BorderSide()), color: getRandomColor()),
    padding: EdgeInsets.all(30.0),
    child: Center(
      child: Text(
        text,
        style: TextStyle(color: Colors.white),
      ),
    ),
  );
}

class Tab3List extends StatefulWidget {
  @override
  State<StatefulWidget> createState() {
    // TODO: implement createState
    return _Tab3State();
  }
}

/// Use keep-alive to keep the state when switch tab bar
class _Tab3State<Tab3List> extends State with AutomaticKeepAliveClientMixin {
  @override
  // TODO: implement wantKeepAlive
  bool get wantKeepAlive => true;

  @override
  Widget build(BuildContext context) {
    super.build(context);
    // TODO: implement build
    return CustomScrollView(
      slivers: <Widget>[
        SliverList(
          delegate: SliverChildBuilderDelegate(
              (context, index) => createListTile(index.toString())),
        )
      ],
    );
  }
}
