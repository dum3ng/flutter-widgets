import 'package:flutter/material.dart';
import 'package:widgets/common_container.dart';

class WeekAnimatedIcon extends StatefulWidget {
  @override
  _WeekAnimatedIconState createState() => _WeekAnimatedIconState();
}

class _WeekAnimatedIconState extends State<WeekAnimatedIcon>
    with TickerProviderStateMixin {
  final iconData = {
    'add_event': AnimatedIcons.add_event,
    'arrow_menu': AnimatedIcons.arrow_menu,
    'close_menu': AnimatedIcons.close_menu,
    'ellipsis_search': AnimatedIcons.ellipsis_search,
    'event_add': AnimatedIcons.event_add,
    'home_menu': AnimatedIcons.home_menu,
    'pause_play': AnimatedIcons.pause_play,
  };

  AnimationController _controller;

  @override
  void initState() {
    // TODO: implement initState
    super.initState();
    _controller = AnimationController(vsync: this);
    _controller.repeat(period: Duration(seconds: 2));
  }

  @override
  void dispose() {
    // TODO: implement dispose
    _controller.dispose();
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return CommonContainer(
        title: 'AnimatedIcon',
        child: GridView(
            gridDelegate:
                SliverGridDelegateWithFixedCrossAxisCount(crossAxisCount: 3),
            children: iconData.entries
                .map((entry) => buildIcon(entry, _controller))
                .toList()));
  }

  Widget buildIcon(
      MapEntry<String, AnimatedIconData> entry, Animation<double> animation) {
    return SizedBox(
      height: 80.0,
      child: Column(
        mainAxisAlignment: MainAxisAlignment.spaceAround,
        children: <Widget>[
          Text(entry.key),
          AnimatedIcon(
            size: 32.0,
            icon: entry.value,
            progress: animation,
          )
        ],
      ),
    );
  }
}
