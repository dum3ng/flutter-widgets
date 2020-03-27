import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:widgets/widgets/common_container.dart';

class WeekMediaQuery extends StatefulWidget {
  @override
  _WeekMediaQueryState createState() => _WeekMediaQueryState();
}

class _WeekMediaQueryState extends State<WeekMediaQuery> {
//  Stream _device;

  @override
  void initState() {
    // TODO: implement initState
    super.initState();
//    _device = WidgetsBindingObserver
  }

  @override
  Widget build(BuildContext context) {
    /// Querying the current media using [MediaQuery.of] will cause your widget to
    /// rebuild automatically whenever the [MediaQueryData] changes (e.g., if the
    /// user rotates their device).
    MediaQueryData data = MediaQuery.of(context);
    return CommonContainer(
        title: 'media query',
        child: Center(
            child:
                Column(mainAxisAlignment: MainAxisAlignment.center, children: [
          Text('width: ${data.size.width}'),
          Text('height: ${data.size.height}'),
          Text('oriention: ${data.orientation}'),
          Text('devicepixelratio: ${data.devicePixelRatio}'),
        ])));
  }
}
