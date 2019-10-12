import 'package:flutter/material.dart';

// https://dribbble.com/shots/3146248-Sleep-dashboard

class SleepDashboard extends StatefulWidget {
  @override
  _SleepDashboardState createState() => _SleepDashboardState();
}

class _SleepDashboardState extends State<SleepDashboard> {
  Color _topColor = Color.fromRGBO(34, 122, 252, 1);  // blue
  Color _bottomColor = Color.fromRGBO(122, 216, 253, 1);  // light blue

  int _currentIndex = 0;
  @override
  Widget build(BuildContext context) {
    return Scaffold(
        body: Column(
          children: <Widget>[
            //
          ],
        ),
        bottomNavigationBar: BottomNavigationBar(
            backgroundColor: Colors.white,
            currentIndex: _currentIndex,
            showSelectedLabels: true,
            showUnselectedLabels: true,
            unselectedItemColor: Colors.grey[300],
            unselectedFontSize: 12.0,
            unselectedLabelStyle: TextStyle(fontWeight: FontWeight.w600),
            selectedLabelStyle: TextStyle(fontWeight: FontWeight.w600),
            selectedItemColor: _topColor,
            elevation: 0.0,
            onTap: (index){
              setState(() {
                _currentIndex = index;
              });
            },
            items: [
          BottomNavigationBarItem(
              icon: Icon(
                Icons.show_chart,
                size: 24.0,
              ),
              title: Text("Dashboard")),
          BottomNavigationBarItem(
              icon: Icon(
                Icons.swap_calls,
                size: 24.0,
              ),
              title: Text("Fitness")),
          BottomNavigationBarItem(
              icon: Icon(
                Icons.swap_horiz,
                size: 24.0,
              ),
              title: Text("Position")),
          BottomNavigationBarItem(
              icon: Icon(
                Icons.whatshot,
                size: 24.0,
              ),
              title: Text("Massage")),
          BottomNavigationBarItem(
              icon: Icon(
                Icons.more_horiz,
                size: 24.0,
              ),
              title: Text("More")),
        ]));
  }
}
