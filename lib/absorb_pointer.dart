import 'package:flutter/material.dart';
import 'package:widgets/common_container.dart';

/// `AbsorbPointer` is like:
///
///    pointer-events: none;
///

class WeekAbsorbPointer extends StatelessWidget {
  showDialog(BuildContext context) {}

  @override
  Widget build(BuildContext context) {
    return CommonContainer(
      title: 'absorb pointer',
      child: Center(
          child: Column(
        mainAxisAlignment: MainAxisAlignment.spaceAround,
        children: <Widget>[
          ShowDialog(
            child: Text('enabled'),
            snack: SnackBar(
              content: Text('hello'),
            ),
          ),
          RaisedButton(
            child: Text('disabled with null onpress'),
            onPressed: null,
          ),
          AbsorbPointer(
            child: RaisedButton(
              child: Text('with absorb pointer'),
              onPressed: () {
                showDialog(context);
              },
            ),
          )
        ],
      )),
    );
  }
}

class ShowDialog extends StatelessWidget {
  SnackBar snack;
  Widget child;

  ShowDialog({this.snack, this.child});

  @override
  Widget build(BuildContext context) {
    return RaisedButton(
      child: child,
      onPressed: () {
        Scaffold.of(context).showSnackBar(snack);
      },
    );
  }
}
