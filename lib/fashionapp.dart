import 'dart:ui';

import 'package:flutter/material.dart';

// https://dribbble.com/shots/6789915-Fashion-e-commerce-mobile-app-UI-Kit/attachments
// https://www.google.com/search?sxsrf=ACYBGNQxko2Da_v2j-Egpq0V72ApQ6Ss5g%3A1570097090438&ei=wseVXdK4GoHchwOUx5C4AQ&q=flutter+background+image+filter&oq=flutter+background+image+filter&gs_l=psy-ab.3..33i22i29i30.1924108.1934284..1934404...7.2..0.380.4366.0j21j3j2....2..0....1..gws-wiz.......0i71j0i67j0j35i39j0i203j0i13j33i160j0i20i263j0i22i10i30j0i22i30.HhMRcDJeyRo&ved=0ahUKEwjSodq66__kAhUB7mEKHZQjBBcQ4dUDCAs&uact=5#kpvalbx=_X8-VXZvgJofN-QaryK6IBQ20

class FahsionApp extends StatefulWidget {
  @override
  _FahsionAppState createState() => _FahsionAppState();
}

class _FahsionAppState extends State<FahsionApp> {
  String _image =
      "https://cdn.pixabay.com/photo/2016/02/18/22/16/girl-1208207_960_720.jpg";

  @override
  Widget build(BuildContext context) {
    final screenHeight = MediaQuery.of(context).size.height;
    final screenWidth = MediaQuery.of(context).size.width;

    return Scaffold(
      body: Container(
        height: screenHeight,
        width: screenWidth,
        decoration: BoxDecoration(
            image:
                DecorationImage(image: NetworkImage(_image), fit: BoxFit.fill)),
        child: Stack(
          children: <Widget>[
            Positioned(
              top: 0,
              left: 0,
              bottom: 0,
              child: Container(
                height: screenHeight,
                width: screenWidth * 0.5,
                child: ClipRect(
                  child: BackdropFilter(
                    filter: ImageFilter.blur(sigmaX: 10, sigmaY: 10),
                    child: Container(
//                            color: Colors.white,
                      color: Colors.black.withOpacity(0),
                    ),
                  ),
                ),
              ),
            ),
            SafeArea(
              top: true,
              left: true,
              right: true,
              child: Container(
                margin: EdgeInsets.symmetric(horizontal: 24.0),
                height: 40,
                child: Row(
                  children: <Widget>[
                    Text("ATHENA",
                        style: TextStyle(
                            color: Colors.black,
                            fontSize: 32.0,
                            fontWeight: FontWeight.bold)),
                    Spacer(),
                    Text("Skip",
                        style: TextStyle(color: Colors.black, fontSize: 16.0))
                  ],
                ),
              ),
            ),
            Padding(
              padding: const EdgeInsets.only(left: 24.0),
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                mainAxisAlignment: MainAxisAlignment.center,
                children: <Widget>[
                  Text("Shop the\nmost modern\nessentials",
                      style: TextStyle(
                          color: Colors.white,
                          fontSize: 36.0,
                          fontWeight: FontWeight.bold)),
                  SizedBox(height: 8),
                  Icon(Icons.arrow_forward, size: 40.0, color: Colors.white)
                ],
              ),
            ),
            Positioned(
              bottom: 50,
              left: 30,
              child: Row(
                children: <Widget>[
                  Container(
                      margin: EdgeInsets.only(right: 4.0),
                      height: 4,
                      width: 24,
                      decoration: BoxDecoration(
                          color: Colors.white,
                          borderRadius: BorderRadius.circular(8.0))),
                  Container(
                      margin: EdgeInsets.only(right: 4.0),
                      height: 4,
                      width: 4,
                      decoration: BoxDecoration(
                          color: Colors.white,
                          borderRadius: BorderRadius.circular(8.0))),
                  Container(
                      margin: EdgeInsets.only(right: 4.0),
                      height: 4,
                      width: 4,
                      decoration: BoxDecoration(
                          color: Colors.white,
                          borderRadius: BorderRadius.circular(8.0))),
                  Container(
                      margin: EdgeInsets.only(right: 4.0),
                      height: 4,
                      width: 4,
                      decoration: BoxDecoration(
                          color: Colors.white,
                          borderRadius: BorderRadius.circular(8.0))),
                ],
              ),
            ),
            Positioned(
              bottom: 10,
              left: screenWidth * 0.5 - 60,
              child: Container(
                  height: 4,
                  width: 120,
                  decoration: BoxDecoration(
                      color: Colors.white,
                      borderRadius: BorderRadius.circular(8.0))),
            )
          ],
        ),
      ),
    );
  }
}
