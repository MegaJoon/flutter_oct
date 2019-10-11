import 'package:flutter/material.dart';

// https://dribbble.com/shots/7434078-NBA-App-Redesign-2nd-SHOT

class NBA extends StatefulWidget {
  @override
  _NBAState createState() => _NBAState();
}

class _NBAState extends State<NBA> {
  Color _topColor = Color.fromRGBO(14, 107, 180, 1);
  Color _bottomColor = Color.fromRGBO(240, 22, 73, 1);

  @override
  Widget build(BuildContext context) {
    final screenHeight = MediaQuery.of(context).size.height;
    return Scaffold(
      body: Stack(
        children: <Widget>[
          // top container
          Positioned(
            top: 0,
            left: 0,
            right: 0,
            child: ClipPath(
              clipper: myClipper(),
              child: Container(
                height: screenHeight * 0.25,
                color: _topColor,
              ),
            ),
          ),

          // appbar
          Positioned(
            top: 8,
            left: 24,
            right: 24,
            child: SafeArea(
              top: true, left: true, right: true,
              child: Container(
                height: 40,
                child: Row(
                  crossAxisAlignment: CrossAxisAlignment.end,
                  mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                  children: <Widget>[
                    Text("Games", style: TextStyle(color: Colors.white, fontSize: 40.0, fontWeight: FontWeight.bold),),
                    Text("Calendar", style: TextStyle(color: Colors.white.withOpacity(0.6), fontSize: 20.0, fontWeight: FontWeight.w600),),
                    Icon(Icons.account_circle, color: Colors.white, size: 24.0,)
                  ],
                ),
              ),
            ),
          )
        ],
      ),
    );
  }
}

class myClipper extends CustomClipper<Path> {
  @override
  Path getClip(Size size) {
    var path = new Path();
    path.lineTo(0, 0);
    path.quadraticBezierTo(size.width * 0.05, size.height * 0.40, size.width * 0.20, size.height * 0.50);
    path.lineTo(size.width*0.70, size.height*0.50);
    path.quadraticBezierTo(size.width * 0.90, size.height*0.55, size.width, size.height);
    path.lineTo(size.width, size.height);
    path.lineTo(size.width, 0);
    path.close();
    return path;
  }

  @override
  bool shouldReclip(CustomClipper<Path> oldClipper) => false;
}
