import 'package:flutter/material.dart';

// https://dribbble.com/shots/7536392-Cookbook-UI-mobile-app-design

class CookBook extends StatefulWidget {
  @override
  _CookBookState createState() => _CookBookState();
}

class _CookBookState extends State<CookBook> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Column(
        children: <Widget>[
          SafeArea(
            top: true,
            left: true,
            right: true,
            child: Container(
              margin: EdgeInsets.symmetric(horizontal: 24.0),
              height: 40.0,
              child: Row(
                children: <Widget>[
                  Text(
                    "Dinner",
                    style: TextStyle(color: Colors.black, fontSize: 32.0, fontWeight: FontWeight.bold),
                  ),
                  Spacer(),
                  Icon(
                    Icons.more_vert,
                    size: 28.0,
                    color: Colors.black,
                  ),
                ],
              ),
            ),
          )
        ],
      ),
    );
  }
}
