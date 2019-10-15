import 'package:flutter/material.dart';

// https://dribbble.com/shots/7415439-HSBC-Find-HSBC

class HSBC extends StatefulWidget {
  @override
  _HSBCState createState() => _HSBCState();
}

class _HSBCState extends State<HSBC> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Stack(
        children: <Widget>[
          //
        ],
      ),
      bottomNavigationBar: BottomNavigationBar(
          backgroundColor: Colors.white,
          elevation: 0,
          unselectedItemColor: Colors.grey[300],
          unselectedFontSize: 12.0,
          unselectedLabelStyle: TextStyle(
            fontWeight: FontWeight.w600,
          ),
          unselectedIconTheme: IconThemeData(size: 28.0),
          selectedFontSize: 12.0,
          selectedItemColor: Colors.black,
          selectedIconTheme: IconThemeData(color: Colors.red, size: 28.0),
          selectedLabelStyle: TextStyle(fontWeight: FontWeight.w600),
          showUnselectedLabels: true,
          showSelectedLabels: true,
          currentIndex: 2,
          items: [
            BottomNavigationBarItem(
                icon: Icon(Icons.home), title: Text("Home")),
            BottomNavigationBarItem(
                icon: Icon(Icons.insert_drive_file), title: Text("History")),
            BottomNavigationBarItem(
                icon: Icon(Icons.location_on), title: Text("Find HSBC")),
            BottomNavigationBarItem(
                icon: Icon(Icons.person_outline), title: Text("Account")),
          ]),
    );
  }
}
