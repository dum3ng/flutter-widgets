import 'package:flutter/material.dart';
import 'package:widgets/widgets/common_container.dart';
import 'package:widgets/utils/color.dart';
import 'package:widgets/utils/helpers.dart';

/// ! FIXME: the animation not work

class WeekAnimatedList extends StatefulWidget {
  @override
  _WeekAnimatedListState createState() => _WeekAnimatedListState();
}

class _WeekAnimatedListState extends State<WeekAnimatedList> {
  late Animatable<Offset> _tween;
  final _listKey = GlobalKey<AnimatedListState>();
  List<String> items = ['abc'];

  @override
  void initState() {
    // TODO: implement initState
    super.initState();
    _tween = Tween(begin: Offset.fromDirection(0.0, -200.0), end: Offset.zero);
  }

  @override
  Widget build(BuildContext context) {
    return CommonContainer(
        title: 'animated list',
        child: Column(children: <Widget>[
          SizedBox(
            width: double.infinity,
            height: 300.0,
            child: AnimatedList(
              initialItemCount: 1,
              key: _listKey,
              itemBuilder: (context, index, animation) {
                return SlideTransition(
                  key: ValueKey(index),
                  position: animation.drive(_tween),
                  child: listItem(index),
                );
              },
            ),
          ),
          Center(
            child: ElevatedButton(
              child: Text('add'),
              onPressed: () {
                items.add(randomName());
                _listKey.currentState!.insertItem(items.length - 1);
//                this.setState(() {
//                  items.add(randomName());
//                });
              },
            ),
          )
        ]));
  }

  Widget listItem(int index) {
    return SizedBox(
      key: ValueKey(index),
      width: double.infinity,
      height: 50.0,
      child: Container(
        color: getRandomColor(),
        child: Text(items[index]),
      ),
    );
  }
}
