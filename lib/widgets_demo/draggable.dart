import 'package:flutter/material.dart';
import 'package:widgets/widgets/common_container.dart';

/// ! FIXME: need to fix

class WeekDraggable extends StatefulWidget {
  @override
  _WeekDraggableState createState() => _WeekDraggableState();
}

class _WeekDraggableState extends State<WeekDraggable> {
  List<int> old = [1, 2, 3];
  List<int> current = [4, 5, 6, 20];

  @override
  void initState() {
    // TODO: implement initState
    super.initState();
  }

  @override
  Widget build(BuildContext context) {
    return CommonContainer(
      title: 'draggable',
      child: Column(
        children: <Widget>[
          DragTarget(
            builder: (context, candidates, rejects) {
              return SizedBox(
                  height: 300.0,
                  child: ListView(
                    children: old
                        .map((x) => Container(
                            color: Colors.green,
                            child: ListTile(
                              title: Text(x.toString()),
                            )))
                        .toList(),
                  ));
            },
            onWillAccept: (data) => data != null && (data as double) < 10,
            onAccept: (data) {
              this.setState(() {
                old.add(data as int);
                current.remove(data);
              });
            },
          ),
          Container(
            height: 300.0,
            child: ListView(
              children: current.map((x) {
                return Draggable(
                  data: x,
                  childWhenDragging:
                      Container(width: 300.0, height: 80.0, color: Colors.grey),
                  child: ListTile(
                    title: Text(x.toString()),
                  ),
                  feedback: Scaffold(
                      body: ListTile(
                    title: Text(x.toString()),
                    leading: Icon(
                      Icons.dehaze,
                      color: Colors.blue,
                    ),
                  )),
                );
              }).toList(),
            ),
          )
        ],
      ),
    );
  }
}
