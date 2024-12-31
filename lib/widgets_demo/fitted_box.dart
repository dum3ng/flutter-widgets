import 'package:flutter/material.dart';
import 'package:widgets/widgets/common_container.dart';
import 'package:widgets/widgets/labeled_widget.dart';

class WeekFittedBox extends StatefulWidget {
  @override
  _WeekFittedBoxState createState() => _WeekFittedBoxState();
}

class _WeekFittedBoxState extends State<WeekFittedBox> {
  late BoxFit fitMode;
  late Map<String, BoxFit> modes;

  @override
  void initState() {
    // TODO: implement initState
    super.initState();
    fitMode = BoxFit.cover;
//    modes = BoxFit.values.map((e) {
//      return MapEntry(e.toString(), e);
//    }).
  }

  @override
  Widget build(BuildContext context) {
    return CommonContainer(
        title: 'fitted box',
        child: Padding(
            padding: EdgeInsets.only(top: 30.0),
            child: Column(children: [
              LabeledWidget(label: 'original image', child: imageWidget()),
              LabeledWidget(
                  padding: EdgeInsets.all(0.0),
                  label: 'fit',
                  child: Container(
                      width: 350.0,
                      height: 150.0,
                      color: Colors.blue.shade400,
                      child: FittedBox(
                        child: imageWidget(),
                        fit: fitMode,
                      ))),
              Padding(
                  padding: EdgeInsets.all(20.0),
                  child: PopupMenuButton(
                    child: ElevatedButton(
                      onPressed: () {},
                      child: Text('choose BoxFit'),
                    ),
                    itemBuilder: (context) {
                      return BoxFit.values
                          .map((x) => PopupMenuItem(
                              value: x, child: Text(x.toString())))
                          .toList();
                    },
                    onSelected: (fit) {
                      this.setState(() {
                        fitMode = fit;
                      });
                    },
                  ))
            ])));
  }

  Widget createBlock(
      {required double width, required double height, required Color color}) {
    return Container(
      width: width,
      height: height,
      color: color,
    );
  }

  Widget imageWidget() {
    return Image.asset(
      'assets/cat.jpg',
      width: 320.0,
    );
  }
}
