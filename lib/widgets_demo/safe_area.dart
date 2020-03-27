import 'package:flutter/material.dart';
import 'package:widgets/widgets/common_container.dart';

class WeekSafeArea extends StatefulWidget {
  @override
  _WeekSafeAreaState<WeekSafeArea> createState() {
    // TODO: implement createState
    return _WeekSafeAreaState();
  }
}

class _WeekSafeAreaState<WeekSafeArea> extends State {
  String mode = 'safe'; // unsafe

  setMode(String mode) {
    this.setState(() {
      this.mode = mode;
    });
  }

  @override
  Widget build(BuildContext context) {
    // TODO: implement build
    var body;
    if (mode == 'safe')
      body= withSafeArea();
    else
      body = withoutSafeArea();
    return CommonContainer(child: body,);
  }

  Widget withSafeArea() {
    return SafeArea(
        child: Column(
      children: <Widget>[
        withoutSafeArea(),
      ],
    ));
  }

  Widget withoutSafeArea() {
    return Container(
      child: Column(
        children: <Widget>[
          Text("111111"),
          Text("211111"),
          Text("311111"),
          Text("411111"),
          SizedBox(
            height: 100.0,
          ),
          button()
        ],
      ),
    );
  }

  Widget button() {
    var to = 'safe';
    if (this.mode == 'safe') to = 'unsafe';

    return FlatButton(
      child: Text('set to $to'),
      hoverColor: Colors.green,
      color: Colors.lightBlue,
      onPressed: () {
        this.setMode(to);
      },
    );
  }
}
