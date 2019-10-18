import 'package:flutter/material.dart';

// https://dribbble.com/shots/7563686-dailyui-019-Leaderboard

class LeaderBoard extends StatefulWidget {
  @override
  _LeaderBoardState createState() => _LeaderBoardState();
}

class _LeaderBoardState extends State<LeaderBoard> {
  Color _color = Color.fromRGBO(r, g, b, opacity);
  Color _color2 = Color.fromRGBO(r, g, b, opacity);
  @override
  Widget build(BuildContext context) {
    final screenHeight = MediaQuery.of(context).size.height;

    return Scaffold(
      body: Stack(
        children: <Widget>[
          Positioned(
            top: 0,
            left: 0,
            right: 0,
            child: Container(
              height: screenHeight * 0.25,
              decoration: BoxDecoration(borderRadius: BorderRadius.only(bottomLeft: Radius.circular(16.0), bottomRight: Radius.circular(16.0)),
              gradient: LinearGradient(colors: [_color, _color2])),
            ),
          )
        ],
      ),
    );
  }
}
