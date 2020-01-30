import 'package:flutter/material.dart';
import 'package:widgets/common_container.dart';

class WeekDismissible extends StatefulWidget {
  @override
  _WeekDismissibleState createState() => _WeekDismissibleState();
}

class _WeekDismissibleState extends State<WeekDismissible> {
  @override
  Widget build(BuildContext context) {
    return CommonContainer(
        title: 'dismissible',
        child: Center(
          child: Dismissible(
              child: ListTile(
                title: Text('slide me'),
                leading: Icon(Icons.android),
              ),
              background: Container(
                width: 100.0,
                color: Colors.red,
                child: IconButton(
                  icon: Icon(Icons.delete),
                ),
              ),
              key: ValueKey('dismiss-1')),
        ));
  }
}
