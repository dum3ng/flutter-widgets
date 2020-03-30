import 'package:flutter/material.dart';

class PaintDemo extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(body: 
      Container(child: CustomPaint(painter: MyPainter(),
      child: SizedBox(width: 200.0, height: 200.0,),),)

    ); 

  }
}

class MyPainter extends CustomPainter {

  @override
  void paint(Canvas canvas, Size size) {
    // TODO: implement paint
    var paint = Paint();
    paint.color = Colors.red.shade900;
    canvas.drawCircle(Offset(size.width/2.0, size.height/2.0), size.height/2.0, paint);
  }

  @override
  bool shouldRepaint(CustomPainter oldDelegate) {
    // TODO: implement shouldRepaint
    return true;
  }

}