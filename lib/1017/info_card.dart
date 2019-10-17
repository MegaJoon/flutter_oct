import 'dart:ui';

import 'package:flutter/material.dart';

// https://dribbble.com/shots/7564011-Info-Card/attachments/357381?mode=media
// https://www.lonelyplanet.com/south-korea
class InfoCard extends StatefulWidget {
  @override
  _InfoCardState createState() => _InfoCardState();
}

class _InfoCardState extends State<InfoCard> {
  String _image0 = "https://cdn.pixabay.com/photo/2018/04/08/23/19/wood-3302802__340.jpg";
  String _image1 = "https://cdn.pixabay.com/photo/2017/04/03/11/14/gangneung-2198026__340.jpg";
  String _image2 = "https://cdn.pixabay.com/photo/2017/09/26/16/32/autumn-leaves-2789234__340.jpg";
  String _image3 = "https://cdn.pixabay.com/photo/2016/02/25/20/55/deogyusan-1222918__340.jpg";

  Color _lineColor = Color.fromRGBO(128, 177, 254, 1);

  String _description =
      "Welcome to South Korea\nSplit by a hair-trigger border, the Korean Peninsula offers the traveller a dazzling range of experiences, beautiful landscapes and 5000 years of culture and history.\nDecorum plays a major role in Korean people’s generosity to outsiders, and their instinctive graciousness possesses a highly endearing quality. ";

  @override
  Widget build(BuildContext context) {
    final screenHeight = MediaQuery.of(context).size.height;
    final screenWidth = MediaQuery.of(context).size.width;
    return Scaffold(
      body: Stack(
        children: <Widget>[
          Column(
            children: <Widget>[
              // top image
              Container(
                height: screenHeight * 0.60,
//            color: Colors.indigo,
                child: Column(
                  children: <Widget>[
                    Flexible(
                      child: Container(
                        child: Row(
                          children: <Widget>[
                            Flexible(
                              child: Container(
                                decoration: BoxDecoration(image: DecorationImage(image: NetworkImage(_image0), fit: BoxFit.fill)),
                              ),
                            ),
                            Flexible(
                              child: Container(
                                decoration: BoxDecoration(image: DecorationImage(image: NetworkImage(_image1), fit: BoxFit.fill)),
                              ),
                            )
                          ],
                        ),
                      ),
                    ),
                    Flexible(
                      child: Container(
//                    color: Colors.amber,
                        child: Row(
                          children: <Widget>[
                            Flexible(
                              child: Container(
                                decoration: BoxDecoration(image: DecorationImage(image: NetworkImage(_image2), fit: BoxFit.fill)),
                              ),
                            ),
                            Flexible(
                              child: Container(
                                decoration: BoxDecoration(image: DecorationImage(image: NetworkImage(_image3), fit: BoxFit.fill)),
                              ),
                            )
                          ],
                        ),
                      ),
                    ),
                  ],
                ),
              )
            ],
          ),

          // Text in top image
          Positioned(
            top: screenHeight * 0.30 - 32.0,
            left: screenWidth * 0.50 - 100.0,
            child: Container(
              height: 64.0,
              width: 200.0,
              child: ClipRect(
                child: BackdropFilter(
                  filter: ImageFilter.blur(sigmaX: 5, sigmaY: 5),
                  child: Container(
                    decoration: BoxDecoration(
                        color: Colors.white.withOpacity(0.2),
                        border: Border.all(color: _lineColor, width: 2.5),
                        borderRadius: BorderRadius.circular(8.0)),
                    child: Center(
                        child: Text(
                      "Korea".toUpperCase(),
                      style: TextStyle(
                          color: Colors.white, fontSize: 40.0, fontWeight: FontWeight.bold, fontFamily: "Montserrat-Black"),
                    )),
                  ),
                ),
              ),
            ),
          ),

          // bottom
          Positioned(
              bottom: 0.0,
              left: 24.0,
              right: 24.0,
              child: Container(
                padding: EdgeInsets.only(top: 24.0),
                height: screenHeight * 0.40,
                child: Column(
                  children: <Widget>[
                    Text(
                      _description,
                      style: TextStyle(
                          color: Colors.black87, fontSize: 16.0, fontFamily: "Montserrat-Black", fontWeight: FontWeight.w300),
                    ),
                    Spacer(),
                    Container(
                      margin: EdgeInsets.only(bottom: 16.0),
                      height: 48.0,
                      width: 200.0,
                      decoration: BoxDecoration(
                        borderRadius: BorderRadius.circular(8.0),
                        color: _lineColor,
                      ),
                      child: Center(
                          child: Text(
                        "Tell me more",
                        style: TextStyle(
                            color: Colors.white, fontSize: 16.0, fontFamily: "Montserrat-Black", fontWeight: FontWeight.w300),
                      )),
                    )
                  ],
                ),
              ))
        ],
      ),
    );
  }
}
