import 'package:flutter/foundation.dart';
import 'dart:math' as math;
import 'package:flutter/material.dart';
import 'package:widgets/common_container.dart';

class WeekValueListenableBuilder extends StatefulWidget {
  @override
  _WeekValueListenableBuilderState createState() =>
      _WeekValueListenableBuilderState();
}

class _WeekValueListenableBuilderState
    extends State<WeekValueListenableBuilder> {
  ValueNotifier _cast;

  @override
  void initState() {
    // TODO: implement initState
    super.initState();
    _cast = ValueNotifier(0);
  }

  @override
  Widget build(BuildContext context) {
    return CommonContainer(
        title: 'value listenable builder',
        child: ValueListenableBuilder(
          valueListenable: _cast,
          builder: (context, value, child) {
            return Center(
              child: Column(
                children: <Widget>[
                  bigText('text'),
                  bigText('value: $value'),
                  bigText('double: ${value*2}'),
                  RaisedButton(
                    child: Text('change value'),
                    onPressed: () {
                      _cast.value = math.Random().nextInt(100);
                    },
                  )
                ],
              ),
            );
          },
        ));
  }

  Widget bigText(String text) => Text(text, style: TextStyle(fontSize: 56.0));
}
