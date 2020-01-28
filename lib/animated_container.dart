import 'package:flutter/material.dart';
import 'package:widgets/common_container.dart';

class WeekAnimatedContainer extends StatefulWidget {
  @override
  State<StatefulWidget> createState() {
    // TODO: implement createState
    return _WeekAnimatedContainerState();
  }
}

class _WeekAnimatedContainerState extends State<WeekAnimatedContainer> {
  double width = 0.0;
  double height = 0.0;
  Color color = Colors.red;

  var borderRadius = 0.0;

  TextEditingController widthCtrl = TextEditingController();
  TextEditingController heightCtrl = TextEditingController();
  TextEditingController rCtrl = TextEditingController();
  TextEditingController gCtrl = TextEditingController();
  TextEditingController bCtrl = TextEditingController();
  TextEditingController radiusCtrl = TextEditingController();

  @override
  void initState() {
    // TODO: implement initState
    super.initState();
    widthCtrl.text = width.toString();
    heightCtrl.text = height.toString();
    rCtrl.text = color.red.toString();
    gCtrl.text = color.green.toString();
    bCtrl.text = color.blue.toString();
    radiusCtrl.text = borderRadius.toString();
//    colorCtrl.text = color.toString();
  }

  dispose() {
    widthCtrl.dispose();
    heightCtrl.dispose();
    rCtrl.dispose();
    gCtrl.dispose();
    bCtrl.dispose();
    radiusCtrl.dispose();
    super.dispose();
  }

  animate() {
    this.setState(() {
      width = double.tryParse(widthCtrl.text) ?? width;
      height = double.tryParse(heightCtrl.text) ?? height;
      borderRadius = double.tryParse(radiusCtrl.text) ?? borderRadius;
//      colorCtrl.text
      var r = int.tryParse(rCtrl.text) ?? 255;
      var g = int.tryParse(gCtrl.text) ?? 255;
      var b = int.tryParse(bCtrl.text) ?? 255;
      color = Color.fromRGBO(r, g, b, 1.0);
    });
  }

  @override
  Widget build(BuildContext context) {
    // TODO: implement build

    return CommonContainer(
        child: Padding(child: buildChild(), padding: EdgeInsets.all(10.0)),
        title: 'animated container');
  }

  Widget buildChild() {
    return Column(children: [
      AnimatedContainer(
        width: width,
        duration: Duration(milliseconds: 600),
        height: height,
        decoration: BoxDecoration(
            color: color,
            borderRadius: BorderRadius.all(Radius.circular(borderRadius))),
      ),
      Padding(
        padding: EdgeInsets.all(20.0),
        child: Column(children: [
          Row(children: [
            Text('width'),
            Expanded(
              child: TextField(
                controller: widthCtrl,
              ),
            )
          ]),
          Row(children: [
            Text('height'),
            Expanded(
              child: TextField(
                controller: heightCtrl,
              ),
            )
          ]),
          Row(children: [
            Text('radius'),
            Expanded(
              child: TextField(
                controller: radiusCtrl,
              ),
            )
          ]),
          Row(children: [
            Text('color'),
            Expanded(
              child: TextField(
                controller: rCtrl,
              ),
            ),
            Expanded(
              child: TextField(
                controller: gCtrl,
              ),
            ),
            Expanded(
              child: TextField(
                controller: bCtrl,
              ),
            )
          ]),
          RaisedButton(
            child: Text('change'),
            onPressed: () {
              animate();
            },
          )
        ]),
      )
    ]);
  }
}
