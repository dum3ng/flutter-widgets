import 'package:flutter/material.dart';
import 'package:widgets/widgets/common_container.dart';

/// Tooltip not only provide the visual typography message,
/// but also provide accessibility so that disabled people
/// can hear the sound by assistant tools.

class WeekTooltip extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return CommonContainer(
        title: 'tooltip',
        child: ListView(
          children: <Widget>[
            createWrap(Tooltip(
              message: 'go to the moon',
              waitDuration: Duration(seconds: 1),
              child: Text('press me for 1 seconds'),
            )),
            createWrap(
              IconButton(
                icon: Icon(Icons.android),
                color: Colors.green,
                tooltip: 'My father is Google',
                onPressed: () {},
              ),
            )
          ],
        ));
  }

  Widget createWrap(Widget child) {
    return Padding(
      padding: EdgeInsets.all(30.0),
      child: Center(child: child),
    );
  }
}
