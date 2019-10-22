import 'package:flutter/material.dart';

import 'myTab.dart';

// https://dribbble.com/shots/7735714-Plantation-App/attachments/438539?mode=media

class PlantationApp extends StatefulWidget {
  @override
  _PlantationAppState createState() => _PlantationAppState();
}

class _PlantationAppState extends State<PlantationApp> {
  Color _color = Color.fromRGBO(192, 219, 135, 1);
  Color _color2 = Color.fromRGBO(238, 246, 223, 1);

  String _image = "https://cdn.pixabay.com/photo/2013/07/13/01/24/forest-155689_960_720.png";

  @override
  Widget build(BuildContext context) {
    final screenHeight = MediaQuery.of(context).size.height;

    return Scaffold(
      body: Container(
        height: screenHeight * 0.40,
        child: Stack(
          children: <Widget>[
            // light green color container
            Positioned(
              top: 0,
              left: 0,
              right: 0,
              bottom: screenHeight * 0.07,
              child: Container(
                decoration: BoxDecoration(
                  color: _color,
                  borderRadius: BorderRadius.only(
                    bottomLeft: Radius.circular(48.0),
                  ),
                ),
              ),
            ),

            // tabbar
            Positioned(
              top: 0,
              left: 0,
              right: 0,
              child: SafeArea(
                  top: true,
                  left: true,
                  right: true,
                  child: Container(
                    height: 48.0,
                    child: ListView(
                      shrinkWrap: true,
                      scrollDirection: Axis.horizontal,
                      children: <Widget>[
                        //
                        MyTab(),
                      ],
                    ),
                  )),
            ),

            // image
            Positioned(
              bottom: 0,
              left: 0,
              right: 0,
              child: Container(
                  height: screenHeight * 0.25,
                  child: Image.network(
                    _image,
                    fit: BoxFit.fill,
                  )),
            )
          ],
        ),
      ),
    );
  }
}
