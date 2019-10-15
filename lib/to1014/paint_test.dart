import 'package:flutter/material.dart';

class PaintTest extends StatefulWidget {
  @override
  _PaintTestState createState() => _PaintTestState();
}

class _PaintTestState extends State<PaintTest> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Container(
        child: CustomPaint(
          painter: Draw(),
          child: Container(),
        ),
      ),
    );
  }
}

class Draw extends CustomPainter{
  @override
  void paint(Canvas canvas, Size size) {
    final paint = Paint();
    paint.color = Colors.red;
    var c = Offset(100,100);
    canvas.drawCircle(c, 50, paint);

    var rect = Rect.fromLTWH(size.width/3, size.height/2, 100, 150);
    paint.color = Colors.blue;
    canvas.drawRect(rect, paint);

    paint.color = Colors.green;
    paint.strokeWidth = 10;

    var p1 = Offset(0, 500);
    var p2 = Offset(size.width/2, 100);
    canvas.drawLine(p1, p2, paint);

    var p11 = Offset(size.width/2, 100);
    var p22 = Offset(size.width, 500);
    canvas.drawLine(p11, p22, paint);
  }

  @override
  bool shouldRepaint(CustomPainter oldDelegate) {
    // TODO: implement shouldRepaint
    return null;
  }
}
