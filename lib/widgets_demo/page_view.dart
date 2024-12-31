import 'package:flutter/material.dart';
import 'package:widgets/widgets/common_container.dart';

class WeekPageView extends StatefulWidget {
  @override
  _WeekPageViewState createState() => _WeekPageViewState();
}

class _WeekPageViewState extends State<WeekPageView> {
  late PageController _controller;

  @override
  void initState() {
    // TODO: implement initState
    super.initState();
    _controller = PageController();
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
      child: PageView(
        controller: _controller,
        children: <Widget>[
          createPage(title: 'one', color: Colors.red),
          createPage(title: 'two', color: Colors.lightBlueAccent),
          createPage(title: 'three', color: Colors.lightGreen.shade200),
        ],
      ),
      title: 'page view',
    );
  }

  Widget createPage({required String title, required Color color}) {
    return Container(
      child: Column(
        children: <Widget>[
          Padding(
            padding: EdgeInsets.all(50.0),
            child: Text(title),
          ),
          Container(width: 200.0, height: 200.0, color: color),
          Padding(
            padding: EdgeInsets.all(20.0),
            child: Row(
              mainAxisAlignment: MainAxisAlignment.spaceEvenly,
              children: <Widget>[
                ElevatedButton(
                  child: Text('prev'),
                  onPressed: () {
                    _controller.previousPage(
                        duration: Duration(milliseconds: 300),
                        curve: Curves.easeIn);
                  },
                ),
                ElevatedButton(
                  child: Text('next'),
                  onPressed: () {
                    _controller.nextPage(
                        duration: Duration(milliseconds: 300),
                        curve: Curves.easeOut);
                  },
                ),
              ],
            ),
          )
        ],
      ),
    );
  }
}
