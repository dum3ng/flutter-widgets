import 'package:flutter/material.dart';

class CommonContainer extends StatelessWidget {
  final child;
  final title;
  final GlobalKey key;

  CommonContainer({this.key, this.child, this.title});

  @override
  Widget build(BuildContext context) {
    // TODO: implement build
    return Scaffold(
      key: key,
      body: child,
      appBar: title != null
          ? AppBar(
              title: Text(title),
            )
          : null,
      floatingActionButton: (title == null)
          ? FloatingActionButton(
              child: Text('back'),
              onPressed: () {
                Navigator.pop(context);
              },
            )
          : null,
    );
  }
}
