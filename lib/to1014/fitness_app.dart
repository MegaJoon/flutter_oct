import 'package:flutter/material.dart';
import 'package:vertical_tabs/vertical_tabs.dart';

class FitnessApp extends StatefulWidget {
  @override
  _FitnessAppState createState() => _FitnessAppState();
}

class _FitnessAppState extends State<FitnessApp> {
  @override
  Widget build(BuildContext context) {
    Color _backgroundColor = Color.fromRGBO(30, 29, 36, 1);
    return Scaffold(
      body: Container(
        color: _backgroundColor,
        child: SafeArea(
          top: true,
          left: true,
          right: true,
          child: VerticalTabs(
              contentScrollAxis: Axis.vertical,
              selectedTabBackgroundColor: _backgroundColor,
              unselectedTabBackgroundColor: _backgroundColor,
              tabsWidth: 70,
              itemExtent: 110.0,
              indicatorWidth: 0.0,
              direction: TextDirection.ltr,
              tabs: [
                Tab(
                    child: Column(
                  mainAxisAlignment: MainAxisAlignment.center,
                  crossAxisAlignment: CrossAxisAlignment.center,
                  children: <Widget>[
                    Text("12",
                        style: TextStyle(
                            color: Colors.pink,
                            fontSize: 48.0,
                            fontWeight: FontWeight.w600)),
                    Text("MON",
                        style: TextStyle(
                            height: 0.5,
                            color: Colors.pink,
                            fontSize: 12.0,
                            fontWeight: FontWeight.w600)),
                  ],
                )),
                Tab(
                    child: Center(
                  child: Text("13",
                      style: TextStyle(
                          color: Colors.white,
                          fontSize: 32.0,
                          fontWeight: FontWeight.w600)),
                )),
              ],
              contents: [
                Padding(
                  padding: const EdgeInsets.all(32.0),
                  child: Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: <Widget>[
                      Text("Select\na Run",
                          style: TextStyle(
                              color: Colors.white,
                              fontSize: 32.0,
                              fontWeight: FontWeight.w600)),
                    ],
                  ),
                ),
                Placeholder(),
              ]),
        ),
      ),
    );
  }
}
