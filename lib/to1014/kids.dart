import 'package:flutter/material.dart';
import 'package:dotted_border/dotted_border.dart';
import 'package:flutter_custom_clippers/flutter_custom_clippers.dart';
import 'dart:math' show pi;
import 'dart:math' as math;

// https://dribbble.com/shots/7448078-Kids-financial-app

// https://pub.dev/packages/dotted_border#-readme-tab-
// https://pub.dev/packages/flutter_custom_clippers#-readme-tab-

class Kids extends StatefulWidget {
  @override
  _KidsState createState() => _KidsState();
}

class _KidsState extends State<Kids> {
  String _image =
      "https://cdn.pixabay.com/photo/2012/04/25/00/44/dolphin-41436__340.png";
  Color _backgroundColor = Color.fromRGBO(0, 157, 213, 1);
  Color _color = Color.fromRGBO(1, 125, 172, 1);
  Color _accentColor = Color.fromRGBO(0, 94, 128, 1);
  Color _priceColor = Color.fromRGBO(246, 117, 183, 1);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: _backgroundColor,
      body: Stack(
        children: <Widget>[
          // appbar
          Positioned(
            top: 0,
            left: 0,
            right: 0,
            child: SafeArea(
                top: true,
                left: true,
                right: true,
                child: Container(
                  margin: EdgeInsets.symmetric(horizontal: 24.0),
                  height: 40.0,
                  child: Row(
                    mainAxisAlignment: MainAxisAlignment.start,
                    children: <Widget>[
                      Icon(
                        Icons.arrow_back,
                        size: 20.0,
                        color: Colors.white,
                      ),
                      Spacer(),
                      Text(
                        "My goals",
                        style: TextStyle(
                            color: Colors.white,
                            fontSize: 20.0,
                            fontWeight: FontWeight.bold),
                      ),
                      Spacer(),
                    ],
                  ),
                )),
          ),

          // add a new goal
          Positioned(
            bottom: -20,
            left: 30,
            child: Column(
              children: <Widget>[
                DottedBorder(
                  borderType: BorderType.Circle,
                  color: Colors.white,
                  radius: Radius.circular(4.0),
                  strokeWidth: 2.0,
                  strokeCap: StrokeCap.round,
                  dashPattern: [4, 10],
                  child: ClipRRect(
                    borderRadius: BorderRadius.circular(160.0),
                    child: Container(
                      height: 100.0,
                      width: 100.0,
//                      color: Colors.white,
                      child: Column(
                        mainAxisAlignment: MainAxisAlignment.center,
                        crossAxisAlignment: CrossAxisAlignment.center,
                        children: <Widget>[
                          Text(
                            "Add a",
                            style: TextStyle(
                                color: Colors.white,
                                fontSize: 16.0,
                                fontWeight: FontWeight.bold),
                          ),
                          Text(
                            "new goal",
                            style: TextStyle(
                                color: Colors.white,
                                fontSize: 16.0,
                                fontWeight: FontWeight.bold),
                          ),
                          Icon(
                            Icons.add,
                            size: 40.0,
                            color: Colors.amber,
                          ),
                        ],
                      ),
                    ),
                  ),
                ),
                SizedBox(
                  height: 16.0,
                ),
                Image.network(
                  _image,
                  fit: BoxFit.fill,
                  height: 100.0,
                  width: 100.0,
                ),
              ],
            ),
          ),

          // bike
          Positioned(
            top: 90.0,
            left: 30.0,
            child: Container(
              height: 260.0,
              width: 260.0,
              child: Stack(
                children: <Widget>[
                  Container(
                    height: 240.0,
                    width: 240.0,
                    child: ClipRRect(
                      borderRadius: BorderRadius.circular(200.0),
                      child: Stack(
                        children: <Widget>[
                          Positioned(
                            bottom: 0,
                            child: Container(
                              height: 200.0,
                              width: 250.0,
                              color: _accentColor,
                            ),
                          ),
                          Positioned(
                            top: 0,
                            child: ClipPath(
                              clipper: myClipper(),
                              child: Container(
                                height: 90.0,
                                width: 250.0,
                                color: _color,
                              ),
                            ),
                          ),
                          Positioned(
                            top: 12,
                            left: 0,
                            right: 0,
                            bottom: 90,
                            child: Column(
                              mainAxisAlignment: MainAxisAlignment.spaceBetween,
                              children: <Widget>[
                                Text(
                                  "Bike",
                                  style: TextStyle(
                                      color: Colors.white,
                                      fontSize: 20.0,
                                      fontWeight: FontWeight.bold),
                                ),
                                Icon(
                                  Icons.directions_bike,
                                  size: 28.0,
                                  color: Colors.white,
                                ),
                                Text(
                                  "\$54.00",
                                  style: TextStyle(
                                      color: Colors.white,
                                      fontSize: 52.0,
                                      fontWeight: FontWeight.w600),
                                ),
                                RichText(
                                  text: TextSpan(children: [
                                    TextSpan(
                                        text: "\$46.00 ",
                                        style: TextStyle(
                                            color: Colors.amber,
                                            fontSize: 16.0,
                                            fontWeight: FontWeight.w600)),
                                    TextSpan(
                                        text: "to go",
                                        style: TextStyle(
                                            color: Colors.white,
                                            fontSize: 16.0,
                                            fontWeight: FontWeight.w600)),
                                  ]),
                                ),
                              ],
                            ),
                          ),
                        ],
                      ),
                    ),
                  ),
                  Positioned(
                    bottom: 2,
                    left: 90,
                    child: Container(
                      margin: EdgeInsets.all(2.0),
                      height: 60.0,
                      width: 60.0,
                      decoration: BoxDecoration(
                          shape: BoxShape.circle,
                          color: Colors.amber,
                          boxShadow: [
                            BoxShadow(
                                color: Colors.black12,
                                spreadRadius: 2,
                                blurRadius: 4)
                          ]),
                      child: Icon(
                        Icons.add,
                        size: 40.0,
                        color: Colors.black,
                      ),
                    ),
                  ),
                  Positioned(
                    right: 20.0,
                    top: 10.0,
                    child: ClipPath(
                      clipper: myClipper2(),
                      child: Container(
                        height: 60.0,
                        width: 60.0,
                        color: _priceColor,
                        child: Column(
                          mainAxisAlignment: MainAxisAlignment.start,
                          crossAxisAlignment: CrossAxisAlignment.center,
                          children: <Widget>[
                            Container(
                              margin: EdgeInsets.only(top: 8.0, bottom: 4.0),
                              height: 8.0,
                              width: 8.0,
                              decoration: BoxDecoration(
                                shape: BoxShape.circle,
                                color: _backgroundColor,
                              ),
                            ),
                            Text(
                              "\$100",
                              style: TextStyle(
                                  color: Colors.white,
                                  fontSize: 16.0,
                                  fontWeight: FontWeight.w600),
                            )
                          ],
                        ),
                      ),
                    ),
                  )
                ],
              ),
            ),
          ),

          // game
          Positioned(
            bottom: 50.0,
            right: 0.0,
            child: Container(
              height: 260.0,
              width: 260.0,
              child: Stack(
                children: <Widget>[
                  Container(
                    height: 240.0,
                    width: 240.0,
                    child: ClipRRect(
                      borderRadius: BorderRadius.circular(200.0),
                      child: Stack(
                        children: <Widget>[
                          Positioned(
                            bottom: 0,
                            child: Container(
                              height: 100.0,
                              width: 250.0,
                              color: _accentColor,
                            ),
                          ),
                          Positioned(
                            top: 0,
                            child: ClipPath(
                              clipper: myClipper(),
                              child: Container(
                                height: 200.0,
                                width: 250.0,
                                color: _color,
                              ),
                            ),
                          ),
                          Positioned(
                            top: 12,
                            left: 0,
                            right: 0,
                            bottom: 90,
                            child: Column(
                              mainAxisAlignment: MainAxisAlignment.spaceBetween,
                              children: <Widget>[
                                Text(
                                  "Game",
                                  style: TextStyle(
                                      color: Colors.white,
                                      fontSize: 20.0,
                                      fontWeight: FontWeight.bold),
                                ),
                                Icon(
                                  Icons.videogame_asset,
                                  size: 28.0,
                                  color: Colors.white,
                                ),
                                Text(
                                  "\$12.00",
                                  style: TextStyle(
                                      color: Colors.white,
                                      fontSize: 52.0,
                                      fontWeight: FontWeight.w600),
                                ),
                                RichText(
                                  text: TextSpan(children: [
                                    TextSpan(
                                        text: "\$38.00 ",
                                        style: TextStyle(
                                            color: Colors.amber,
                                            fontSize: 16.0,
                                            fontWeight: FontWeight.w600)),
                                    TextSpan(
                                        text: "to go",
                                        style: TextStyle(
                                            color: Colors.white,
                                            fontSize: 16.0,
                                            fontWeight: FontWeight.w600)),
                                  ]),
                                ),
                              ],
                            ),
                          ),
                        ],
                      ),
                    ),
                  ),
                  Positioned(
                    bottom: 2,
                    left: 90,
                    child: Container(
                      margin: EdgeInsets.all(2.0),
                      height: 60.0,
                      width: 60.0,
                      decoration: BoxDecoration(
                          shape: BoxShape.circle,
                          color: Colors.amber,
                          boxShadow: [
                            BoxShadow(
                                color: Colors.black12,
                                spreadRadius: 2,
                                blurRadius: 4)
                          ]),
                      child: Icon(
                        Icons.add,
                        size: 40.0,
                        color: Colors.black,
                      ),
                    ),
                  ),
                  Positioned(
                    right: 20.0,
                    top: 10.0,
                    child: ClipPath(
                      clipper: myClipper2(),
                      child: Container(
                        height: 60.0,
                        width: 60.0,
                        color: _priceColor,
                        child: Column(
                          mainAxisAlignment: MainAxisAlignment.start,
                          crossAxisAlignment: CrossAxisAlignment.center,
                          children: <Widget>[
                            Container(
                              margin: EdgeInsets.only(top: 8.0, bottom: 4.0),
                              height: 8.0,
                              width: 8.0,
                              decoration: BoxDecoration(
                                shape: BoxShape.circle,
                                color: _backgroundColor,
                              ),
                            ),
                            Text(
                              "\$50",
                              style: TextStyle(
                                  color: Colors.white,
                                  fontSize: 16.0,
                                  fontWeight: FontWeight.w600),
                            )
                          ],
                        ),
                      ),
                    ),
                  )
                ],
              ),
            ),
          ),
        ],
      ),
    );
  }
}

// make wave line
class myClipper extends CustomClipper<Path> {
  @override
  Path getClip(Size size) {
    Path path = new Path();
    path.lineTo(0, 0);
    path.lineTo(0, size.height * 0.9);
    path.quadraticBezierTo(size.width * 0.2, size.height * 0.9,
        size.width * 0.3, size.height * 0.95);
    path.quadraticBezierTo(
        size.width * 0.4, size.height, size.width * 0.5, size.height * 0.85);
    path.quadraticBezierTo(size.width * 0.6, size.height * 0.80,
        size.width * 0.7, size.height * 0.90);
    path.quadraticBezierTo(
        size.width * 0.8, size.height * 0.95, size.width, size.height * 0.90);
    path.lineTo(size.width, 0);
    path.close();
    return path;
  }

  @override
  bool shouldReclip(CustomClipper<Path> oldClipper) => false;
}

// make big star
class myClipper2 extends CustomClipper<Path> {
  int numberOfPointes = 12;  // 3*4;

  @override
  Path getClip(Size size) {
    double width = size.width;  // w
    double halfWidth = size.width*0.5;  // w/2
    // outside point
    double bigRadius = halfWidth;  // r
    // inside point
    double radius = halfWidth *0.5;  // r/2
    double myRadius = halfWidth *0.8;  // r/2
    double dps = 30 * (pi / 180.0);
    double haflDps = dps * 0.5;
    double max = 2*pi;
    //
    Path path = new Path();
    path.moveTo(width, halfWidth);
    for(double step = 0; step<max; step += dps){
      path.lineTo(halfWidth + bigRadius* math.cos(step), halfWidth + bigRadius* math.sin(step));
      path.lineTo(halfWidth + myRadius* math.cos(step + haflDps), halfWidth + myRadius* math.sin(step + haflDps));
    }
    path.close();
    return path;
  }

  @override
  bool shouldReclip(CustomClipper<Path> oldClipper) => false;
}
