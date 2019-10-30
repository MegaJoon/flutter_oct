import 'package:flutter/material.dart';
import 'package:flutter_oct/1030/MyVerticalTab.dart';
import 'package:dots_indicator/dots_indicator.dart';

// https://dribbble.com/shots/7859350/attachments/481956?mode=media

class DailyApp extends StatefulWidget {
  @override
  _DailyAppState createState() => _DailyAppState();
}

class _DailyAppState extends State<DailyApp> {
  List<Widget> pages;

  // vertical tabbar index
  int _currentIndex = 0;

  void _onClicked(int idx) {
    setState(() {
      _currentIndex = idx;
    });
  }

  @override
  Widget build(BuildContext context) {
    _definePages();

    return Scaffold(
      body: Column(
        children: <Widget>[
          // top
          Flexible(
            flex: 8,
            child: Row(
              children: <Widget>[
                // vertical tabbar
                Flexible(
                  flex: 2,
                  child: Column(
                    crossAxisAlignment: CrossAxisAlignment.center,
                    mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                    children: <Widget>[
                      MyVerticalTab(
                        title: "Classical",
                        color: Colors.black,
                        isSelected: _currentIndex == 0,
                        onClicked: () {
                          _onClicked(0);
                        },
                      ),
                      MyVerticalTab(
                        title: "Popular",
                        color: Colors.black,
                        isSelected: _currentIndex == 1,
                        onClicked: () {
                          _onClicked(1);
                        },
                      ),
                      MyVerticalTab(
                        title: "Nationality",
                        color: Colors.black,
                        isSelected: _currentIndex == 2,
                        onClicked: () {
                          _onClicked(2);
                        },
                      ),
                    ],
                  ),
                ),

                // main tabbarview
                Flexible(
                  flex: 8,
                  child: pages[_currentIndex],
                ),
              ],
            ),
          ),

          // bottom
          Flexible(
            flex: 1,
            child: Placeholder(),
          ),
        ],
      ),
    );
  }

  _definePages(){
    pages = [
      // first page
      SafeArea(
        top: true,
        left: true,
        right: true,
        child: Column(
          children: <Widget>[
            // appbar
            Flexible(
              flex: 2,
              child: Padding(
                padding: const EdgeInsets.only(right: 16.0),
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  crossAxisAlignment: CrossAxisAlignment.center,
                  children: <Widget>[
                    // title
                    Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      mainAxisAlignment: MainAxisAlignment.center,
                      children: <Widget>[
                        Text("Daily", style: TextStyle(color: Colors.black, fontSize: 36.0, fontFamily: "Montserrat-Black"),),
                        Text("Recommended", style: TextStyle(color: Colors.grey, fontSize: 16.0, fontFamily: "Montserrat-Black"),),
                      ],
                    ),

                    // dots indicator
                    DotsIndicator(
                      dotsCount: 3,
                      position: 1,
                      decorator: DotsDecorator(
                        color: Colors.grey,
                        activeColor: Colors.black,
                        size: Size(6.0, 6.0),
                        activeSize: Size(6.0, 6.0),
                      ),
                    ),
                  ],
                ),
              ),
            ),

            // pageview
            Flexible(
              flex: 8,
              child: Placeholder(),
            ),
          ],
        ),
      ),


      Placeholder(),
      Placeholder(),
    ];
  }
}
