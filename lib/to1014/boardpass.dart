import 'dart:ui';

import 'package:flutter/material.dart';

// https://dribbble.com/shots/7345292-DailyUi-Boarding-pass

class BoardingPass extends StatefulWidget {
  @override
  _BoardingPassState createState() => _BoardingPassState();
}

class _BoardingPassState extends State<BoardingPass> {
  String _image = "https://cdn.pixabay.com/photo/2019/03/19/14/41/bridge-4065865__340.jpg";

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Container(
        padding: EdgeInsets.only(left: 24.0, right: 24.0, top: 64.0, bottom: 48.0),
        width: double.maxFinite,
        decoration:
            BoxDecoration(image: DecorationImage(image: NetworkImage(_image), fit: BoxFit.fill)),
        child: Column(
//          mainAxisAlignment: MainAxisAlignment.spaceEvenly,
          children: <Widget>[
            Text(
              "Airasia",
              style: TextStyle(
                  color: Colors.white,
                  fontWeight: FontWeight.bold,
                  fontSize: 40.0,
                  fontFamily: "NothingYouCouldDo"),
            ),
            Spacer(),
            Container(
              padding: EdgeInsets.symmetric(vertical: 16.0, horizontal: 32.0),
              height: 450,
              width: double.maxFinite,
//              color: Colors.white,
              color: Colors.white.withOpacity(0.2),
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: <Widget>[
                  Align(
                    alignment: Alignment.center,
                    child: Text(
                      "15th August 2016 at 23:05",
                      style: TextStyle(
                          color: Colors.white, fontSize: 14.0, fontWeight: FontWeight.w300),
                    ),
                  ),
                  Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    crossAxisAlignment: CrossAxisAlignment.center,
                    children: <Widget>[
                      //
                      Column(
                        children: <Widget>[
                          Text(
                            "DEL",
                            style: TextStyle(
                                color: Colors.white, fontSize: 32.0, fontWeight: FontWeight.w600),
                          ),
                          Text(
                            "New Delhi",
                            style: TextStyle(
                                color: Colors.white, fontSize: 14.0, fontWeight: FontWeight.w300),
                          ),
                        ],
                      ),
                      // middle
                      Container(
                        height: 1.0,
                        width: 60.0,
                        color: Colors.white,
                      ),
                      Icon(
                        Icons.flight_takeoff,
                        size: 20.0,
                        color: Colors.white,
                      ),
                      Container(
                        height: 1.0,
                        width: 60.0,
                        color: Colors.white,
                      ),
                      //
                      Column(
                        children: <Widget>[
                          Text(
                            "DXB",
                            style: TextStyle(
                                color: Colors.white, fontSize: 32.0, fontWeight: FontWeight.w600),
                          ),
                          Text(
                            "Dubai",
                            style: TextStyle(
                                color: Colors.white, fontSize: 14.0, fontWeight: FontWeight.w300),
                          ),
                        ],
                      ),
                    ],
                  ),
                  Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: <Widget>[
                      Text(
                        "Passenger",
                        style: TextStyle(
                            color: Colors.white, fontSize: 14.0, fontWeight: FontWeight.w300),
                      ),
                      Text(
                        "John Doe",
                        style: TextStyle(
                            color: Colors.white, fontSize: 24.0, fontWeight: FontWeight.w600),
                      ),
                    ],
                  ),
                  Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: <Widget>[
                      Column(
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: <Widget>[
                          Text(
                            "Flight",
                            style: TextStyle(
                                color: Colors.white, fontSize: 14.0, fontWeight: FontWeight.w300),
                          ),
                          Text(
                            "5G301",
                            style: TextStyle(
                                color: Colors.white, fontSize: 18.0, fontWeight: FontWeight.w600),
                          ),
                        ],
                      ),
                      Column(
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: <Widget>[
                          Text(
                            "Seat",
                            style: TextStyle(
                                color: Colors.white, fontSize: 14.0, fontWeight: FontWeight.w300),
                          ),
                          Text(
                            "51BA",
                            style: TextStyle(
                                color: Colors.white, fontSize: 18.0, fontWeight: FontWeight.w600),
                          ),
                        ],
                      ),
                      Column(
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: <Widget>[
                          Text(
                            "Gate",
                            style: TextStyle(
                                color: Colors.white, fontSize: 14.0, fontWeight: FontWeight.w300),
                          ),
                          Text(
                            "8A",
                            style: TextStyle(
                                color: Colors.white, fontSize: 18.0, fontWeight: FontWeight.w600),
                          ),
                        ],
                      ),
                      Column(
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: <Widget>[
                          Text(
                            "Cabin",
                            style: TextStyle(
                                color: Colors.white, fontSize: 14.0, fontWeight: FontWeight.w300),
                          ),
                          Text(
                            "FIRST",
                            style: TextStyle(
                                color: Colors.white, fontSize: 18.0, fontWeight: FontWeight.w600),
                          ),
                        ],
                      ),
                    ],
                  ),
                  Center(
                    child: Container(
                      padding: EdgeInsets.all(8.0),
//                    alignment: Alignment.center,
                      height: 70,
                      width: 250,
                      color: Colors.white,
                      child: Image.network(
                        "https://miro.medium.com/max/700/1*bHzXDhGyvWNKi9xZNfliFg.png",
                        fit: BoxFit.fill,
                      ),
                    ),
                  )
                ],
              ),
            )
          ],
        ),
      ),
    );
  }
}
