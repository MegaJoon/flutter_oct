import 'package:flutter/material.dart';

// https://dribbble.com/shots/3146248-Sleep-dashboard

class SleepDashboard extends StatefulWidget {
  @override
  _SleepDashboardState createState() => _SleepDashboardState();
}

class _SleepDashboardState extends State<SleepDashboard> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
        body: Column(
          children: <Widget>[
            //
          ],
        ),
        bottomNavigationBar: BottomNavigationBar(items: [
          BottomNavigationBarItem(
              icon: Icon(
                Icons.show_chart,
                size: 24.0,
              ),
              title: Text("Dashboard")),
          BottomNavigationBarItem(
              icon: Icon(
                Icons.show_chart,
                size: 24.0,
              ),
              title: Text("Dashboard")),
          BottomNavigationBarItem(
              icon: Icon(
                Icons.show_chart,
                size: 24.0,
              ),
              title: Text("Dashboard")),
          BottomNavigationBarItem(
              icon: Icon(
                Icons.show_chart,
                size: 24.0,
              ),
              title: Text("Dashboard")),
          BottomNavigationBarItem(
              icon: Icon(
                Icons.show_chart,
                size: 24.0,
              ),
              title: Text("Dashboard")),
        ]));
  }
}
