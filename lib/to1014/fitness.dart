import 'package:flutter/material.dart';
import 'package:flutter_oct/to1015/simplebar_chart.dart';

// https://dribbble.com/shots/5885312-Fitness-mobile-app/attachments

class Fitness extends StatefulWidget {
  @override
  _FitnessState createState() => _FitnessState();
}

class _FitnessState extends State<Fitness> {
  String _image = "https://cdn.pixabay.com/photo/2016/11/14/03/06/woman-1822459__340.jpg";

  @override
  Widget build(BuildContext context) {
    final screenHeight = MediaQuery.of(context).size.height;

    return Scaffold(
      body: Stack(
        children: <Widget>[
          // top background image
          Positioned(
            top: 0,
            left: 0,
            right: 0,
            child: Container(
              height: screenHeight * 0.45,
              decoration: BoxDecoration(
                  image: DecorationImage(image: NetworkImage(_image), fit: BoxFit.fill)),
            ),
          ),
          // appbar
          Positioned(
            top: 0,
            left: 24,
            child: SafeArea(
                top: true,
                left: true,
                right: true,
                child: Container(
                    height: 36.0,
                    width: 36.0,
                    decoration:
                        BoxDecoration(shape: BoxShape.circle, color: Colors.grey.withOpacity(0.3)),
                    child: Icon(
                      Icons.arrow_back,
                      size: 28.0,
                      color: Colors.black,
                    ))),
          ),
          // bottom
          Positioned(
            bottom: 0,
            left: 0,
            right: 0,
            child: Container(
              padding: EdgeInsets.symmetric(vertical: 8.0, horizontal: 24.0),
              height: screenHeight * 0.60,
              decoration: BoxDecoration(
                  color: Colors.white,
                  borderRadius: BorderRadius.only(
                      topLeft: Radius.circular(16.0), topRight: Radius.circular(16.0))),
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: <Widget>[
                  Container(
                      alignment: Alignment.center,
                      child: Container(
                        height: 4.0,
                        width: 130.0,
                        decoration: BoxDecoration(
                            color: Colors.grey[300], borderRadius: BorderRadius.circular(8.0)),
                      )),
                  Text(
                    "Today's workout",
                    style:
                        TextStyle(color: Colors.black, fontSize: 24.0, fontWeight: FontWeight.bold),
                  ),
                  Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: <Widget>[
                      Container(
                        height: 32.0,
                        width: 100.0,
                        decoration: ShapeDecoration(shape: StadiumBorder(), color: Colors.teal),
                        child: Center(
                            child: Text(
                          "ACTIVITY".toUpperCase(),
                          style: TextStyle(
                              color: Colors.white, fontSize: 12.0, fontWeight: FontWeight.bold),
                        )),
                      ),
                      Container(
                        height: 32.0,
                        width: 100.0,
                        decoration: ShapeDecoration(shape: StadiumBorder(), color: Colors.white),
                        child: Center(
                            child: Text(
                          "MEAL".toUpperCase(),
                          style: TextStyle(
                              color: Colors.grey, fontSize: 12.0, fontWeight: FontWeight.bold),
                        )),
                      ),
                      Container(
                        height: 32.0,
                        width: 100.0,
                        decoration: ShapeDecoration(shape: StadiumBorder(), color: Colors.white),
                        child: Center(
                            child: Text(
                          "WEIGHT".toUpperCase(),
                          style: TextStyle(
                              color: Colors.grey, fontSize: 12.0, fontWeight: FontWeight.bold),
                        )),
                      )
                    ],
                  ),
                  RichText(text: TextSpan(children: [
                    TextSpan(text: "624 ", style: TextStyle(color: Colors.black, fontSize: 24.0, fontWeight: FontWeight.bold)),
                    TextSpan(text: "/850 cal", style: TextStyle(color: Colors.grey, fontSize: 16.0, fontWeight: FontWeight.bold)),
                  ]),),

                  SimpleBarChart(),
                ],
              ),
            ),
          )
        ],
      ),
    );
  }
}