import 'package:flutter/material.dart';
import 'package:flutter/painting.dart';
import 'package:widgets/common_container.dart';

class WeekFloatingActionButton extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return CommonContainer(
        child: Scaffold(
          bottomNavigationBar: BottomAppBar(
            child: Container(
              height: 50.0,
              color: Colors.amber,
            ),
          ),
          floatingActionButton: Container(
            decoration:
                BoxDecoration(borderRadius: BorderRadius.circular(100.0)),
            child: Padding(
              child: FloatingActionButton(
                isExtended: true,
                elevation: 12.0,
                backgroundColor: Colors.indigoAccent,
                foregroundColor: Colors.orange,
                child: Icon(Icons.add),
              ),
              padding: EdgeInsets.all(10.0),
            ),
          ),
          floatingActionButtonLocation:
              FloatingActionButtonLocation.centerDocked,
        ),
        title: 'floating action button');
  }
}
