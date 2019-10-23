import 'package:flutter/material.dart';

import 'myTab.dart';

// https://dribbble.com/shots/7710168-Tourists-Mobile-App/attachments/431983?mode=media

class Tourist extends StatefulWidget {
  @override
  _TouristState createState() => _TouristState();
}

class _TouristState extends State<Tourist> {
  String _image = "assets/hongdduk.jpg";

  Color _backgroundColor = Color.fromRGBO(255, 249, 244, 1);

  int currentIndex = 0;

  List<Widget> pages;

  void _onClicked(int index) {
    setState(() {
      currentIndex = index;
    });
  }

  @override
  Widget build(BuildContext context) {
    _definePages();

    return Scaffold(
      body: Container(
        child: Row(
          children: <Widget>[
            // tabbar
            Flexible(
              flex: 2,
              child: Container(
                decoration: BoxDecoration(
                  gradient: LinearGradient(colors: [_backgroundColor, Colors.white], begin: Alignment.topCenter, end: Alignment.bottomCenter),
                ),
                child: SafeArea(
                  child: Column(
                    children: <Widget>[
                      // menu icon
                      Flexible(
                        flex: 1,
                        child: SizedBox(
                            height: 40.0,
                            child: Icon(
                              Icons.menu,
                              size: 20.0,
                              color: Colors.black,
                            )),
                      ),

                      // listview
                      Flexible(
                        flex: 12,
                        child: Padding(
                          padding: const EdgeInsets.only(bottom: 52.0),
                          child: Column(
                            mainAxisAlignment: MainAxisAlignment.spaceBetween,
                            children: <Widget>[
                              MyTab(
                                title: "All",
                                color: Colors.black,
                                isSelected: currentIndex == 0,
                                onClicked: () {
                                  _onClicked(0);
                                },
                              ),
                              MyTab(
                                title: "Outdoor",
                                color: Colors.green,
                                isSelected: currentIndex == 1,
                                onClicked: () {
                                  _onClicked(1);
                                },
                              ),
                              MyTab(
                                title: "Indoor",
                                color: Colors.amber,
                                isSelected: currentIndex == 2,
                                onClicked: () {
                                  _onClicked(2);
                                },
                              ),
                              MyTab(
                                title: "Intellectual",
                                color: Colors.indigo,
                                isSelected: currentIndex == 3,
                                onClicked: () {
                                  _onClicked(3);
                                },
                              ),
                              MyTab(
                                title: "Architecture",
                                color: Colors.red,
                                isSelected: currentIndex == 4,
                                onClicked: () {
                                  _onClicked(4);
                                },
                              ),
                            ],
                          ),
                        ),
                      ),

                      // profile image container
                      Flexible(
                        flex: 1,
                        child: Center(
                          child: Container(
                            height: 40.0,
                            width: 40.0,
                            decoration: BoxDecoration(
                              shape: BoxShape.circle,
                              image: DecorationImage(image: AssetImage(_image), fit: BoxFit.fill),
                              boxShadow: [
                                BoxShadow(color: Colors.black12, blurRadius: 4, spreadRadius: 2),
                              ],
                            ),
                          ),
                        ),
                      ),
                    ],
                  ),
                ),
              ),
            ),

            // main
            Flexible(
              flex: 8,
              child: pages[currentIndex],
            ),
          ],
        ),
      ),
    );
  }

  _definePages() {
    pages = [
      Placeholder(
        color: Colors.black,
      ),
      Placeholder(
        color: Colors.green,
      ),
      Placeholder(
        color: Colors.amber,
      ),
      Placeholder(
        color: Colors.indigo,
      ),
      Placeholder(
        color: Colors.red,
      ),
    ];
  }
}
