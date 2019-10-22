import 'package:flutter/material.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';

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

  int currentIndex = 0;

  void onTab(int index) {
    setState(() {
      currentIndex = index;
    });
  }

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
                    margin: EdgeInsets.only(left: 16.0, top: 16.0),
                    height: 64.0,
                    child: ListView(
                      shrinkWrap: true,
                      scrollDirection: Axis.horizontal,
                      children: <Widget>[
                        //
                        MyTab(
                          text: "10",
                          text2: "Mon",
                          isSelected: currentIndex == 0,
                          function: () {
                            onTab(0);
                          },
                        ),

                        MyTab(
                          text: "11",
                          text2: "Tue",
                          isSelected: currentIndex == 1,
                          function: () {
                            onTab(1);
                          },
                        ),

                        MyTab(
                          text: "12",
                          text2: "Wed",
                          isSelected: currentIndex == 2,
                          function: () {
                            onTab(2);
                          },
                        ),

                        MyTab(
                          text: "13",
                          text2: "Thu",
                          isSelected: currentIndex == 3,
                          function: () {
                            onTab(3);
                          },
                        ),

                        MyTab(
                          text: "14",
                          text2: "Fri",
                          isSelected: currentIndex == 4,
                          function: () {
                            onTab(4);
                          },
                        ),

                        MyTab(
                          text: "15",
                          text2: "Sat",
                          isSelected: currentIndex == 5,
                          function: () {
                            onTab(5);
                          },
                        ),

                        MyTab(
                          text: "16",
                          text2: "Sun",
                          isSelected: currentIndex == 6,
                          function: () {
                            onTab(6);
                          },
                        ),
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

      bottomNavigationBar: BottomAppBar(
        child: Container(
          height: 48.0,
          decoration: BoxDecoration(color: Colors.white, borderRadius: BorderRadius.only(topLeft: Radius.circular(24.0), topRight: Radius.circular(24.0))),
          child: Row(
            mainAxisAlignment: MainAxisAlignment.spaceEvenly,
            children: <Widget>[
              Icon(Icons.home, size: 28.0, color: Colors.grey,),
              Icon(Icons.person_outline, size: 28.0, color: Colors.grey,),
              Icon(FontAwesomeIcons.tint, size: 22.0, color: Colors.black,),
            ],
          ),
        ),
      ),
    );
  }
}
