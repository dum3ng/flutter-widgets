import 'package:flutter/material.dart';
import 'dart:math' as math;

class WeekStreamBuilder extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return DefaultTabController(
        length: 1,
        child: Scaffold(
          appBar: AppBar(
            bottom: TabBar(
              tabs: <Widget>[Tab(text: 'ticker')],
            ),
          ),
          body: TabBarView(
            children: <Widget>[
              fromTicker(),
            ],
          ),
        ));
  }

  Widget fromTicker() {
    Stream ticker = Stream.periodic(
        Duration(seconds: 1), (count) => [count, math.Random().nextInt(count)]);
    return StreamBuilder(
      stream: ticker,
      builder: (context, snapshot) {
        print(snapshot.data);
        if (snapshot.hasData) {
          var count = snapshot.data[0];
          var number = snapshot.data[1];
          return Center(
              child: Column(
                children: <Widget>[
                  Text('random under $count'),
                  Padding(
                    padding: EdgeInsets.all(20.0),
                    child: Text(number.toString(),
                      style: TextStyle(fontWeight: FontWeight.bold,
                          fontSize: 32.0),),
                  )
                ],
              )
          );
        }
        else
          return Center(
            child: CircularProgressIndicator(),
          );
      },
    );
  }
}
