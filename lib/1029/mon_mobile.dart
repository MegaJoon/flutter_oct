import 'package:flutter/material.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';

// https://dribbble.com/shots/7859385-MON-mobile-version/attachments/481970?mode=media

class MONMobile extends StatefulWidget {
  @override
  _MONMobileState createState() => _MONMobileState();
}

class _MONMobileState extends State<MONMobile> {
  @override
  Widget build(BuildContext context) {
    String _image = "assets/ansley_gulielmi.jpg";  // left image
    String _image2 = "assets/ansley_gulielmi2.jpg";  // right image

    return Scaffold(
      body: Stack(
        children: <Widget>[
          // background image
          Positioned(
            top: 0,
            left: 0,
            right: 0,
            bottom: 0,
            child: Row(
              children: <Widget>[
                // left container
                Flexible(
                  child: Container(
                    decoration: BoxDecoration(image: DecorationImage(image: AssetImage(_image), fit: BoxFit.cover)),
                  ),
                ),

                // right container
                Flexible(
                  child: Container(
                    decoration: BoxDecoration(image: DecorationImage(image: AssetImage(_image2), fit: BoxFit.cover)),
                  ),
                ),
              ],
            ),
          ),

          // appbar
          Positioned(
            top: 0,
            left: 16.0,
            right: 0,
            child: SafeArea(
                top: true,
                left: true,
                right: true,
                child: Container(
                  height: 80.0,
                  child: Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: <Widget>[
                      //
                      Container(
                        alignment: Alignment.centerLeft,
                        height: 40.0,
                          width: 100.0,
                          child: Icon(Icons.menu, size: 32.0, color: Colors.black,)),

                      Container(
                        margin: EdgeInsets.only(right: 16.0),
                        height: 80.0,
                        width: 80.0,
                        color: Colors.grey[800],
                        child: Column(
                          crossAxisAlignment: CrossAxisAlignment.center,
                          mainAxisAlignment: MainAxisAlignment.center,
                          children: <Widget>[
                            Text("MoN", style: TextStyle(color: Colors.white, fontSize: 24.0, fontWeight: FontWeight.bold, fontFamily: "ITCAvantGardeStd",),),
                            Text("makeup", style: TextStyle(color: Colors.white12, fontSize: 12.0, fontWeight: FontWeight.w400),)
                          ],
                        ),
                      ),

                      Container(
                        height: 56.0,
                        width: 100.0,
                        child: Row(
                          crossAxisAlignment: CrossAxisAlignment.center,
                          mainAxisAlignment: MainAxisAlignment.spaceBetween,
                          children: <Widget>[
                            Icon(Icons.search, size: 32.0, color: Colors.black,),
                            Container(
                              height: 56.0,
                              width: 56.0,
                              color: Colors.yellowAccent,
                              child: Icon(Icons.shopping_cart, size: 32.0, color: Colors.black,),
                            ),
                          ],
                        ),
                      ),
                    ],
                  ),
                )),
          ),

          // left icons
          Positioned(
            top: 120.0,
            left: 16.0,
            child: Container(
              height: 160.0,
              width: 40.0,
              child: Column(
                children: <Widget>[
                  Flexible(
                    child: Container(
                      decoration: BoxDecoration(border: Border.all(color: Colors.white, width: 1.0)),
                      child: Center(child: Icon(FontAwesomeIcons.ambulance, size: 20.0, color: Colors.white,)),
                    ),
                  ),
                  Flexible(
                    child: Container(
                      decoration: BoxDecoration(border: Border.all(color: Colors.white, width: 1.0)),
                      child: Center(child: Icon(FontAwesomeIcons.handshake, size: 20.0, color: Colors.white,)),
                    ),
                  ),
                  Flexible(
                    child: Container(
                      decoration: BoxDecoration(border: Border.all(color: Colors.white, width: 1.0)),
                      child: Center(child: Icon(FontAwesomeIcons.lockOpen, size: 20.0, color: Colors.white,)),
                    ),
                  ),
                  Flexible(
                    child: Container(
                      decoration: BoxDecoration(border: Border.all(color: Colors.white, width: 1.0)),
                      child: Center(child: Icon(FontAwesomeIcons.carrot, size: 20.0, color: Colors.white,)),
                    ),
                  ),
                ],
              ),
            ),
          ),

          // right icons
          Positioned(
            top: 120.0,
            right: 16.0,
            child: Container(
              height: 120.0,
              width: 40.0,
              child: Column(
                children: <Widget>[
                  Flexible(
                    child: Container(
                      decoration: BoxDecoration(border: Border.all(color: Colors.grey, width: 1.0)),
                      child: Center(child: Icon(FontAwesomeIcons.facebookF, size: 20.0, color: Colors.black,)),
                    ),
                  ),
                  Flexible(
                    child: Container(
                      decoration: BoxDecoration(border: Border.all(color: Colors.grey, width: 1.0)),
                      child: Center(child: Icon(FontAwesomeIcons.twitter, size: 20.0, color: Colors.black,)),
                    ),
                  ),
                  Flexible(
                    child: Container(
                      decoration: BoxDecoration(border: Border.all(color: Colors.grey, width: 1.0)),
                      child: Center(child: Icon(FontAwesomeIcons.instagram, size: 20.0, color: Colors.black,)),
                    ),
                  ),
                ],
              ),
            ),
          ),

          
        ],
      )
    );
  }
}
