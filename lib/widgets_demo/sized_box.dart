import 'package:flutter/material.dart';
import 'package:widgets/widgets/common_container.dart';

class WeekSizedBox extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return CommonContainer(
      title: 'sized box',
      child: Padding(
        padding: EdgeInsets.all(30.0),
        child: SizedBox.expand(
          child: Column(
            children: <Widget>[
              ElevatedButton(
                onPressed: () {},
                child: Text('normal button'),
              ),
              SizedBox(
                width: double.infinity,
                child: ElevatedButton(
                  onPressed: () {},
                  child: Text('block button'),
                ),
              )
            ],
          ),
        ),
      ),
    );
  }
}
