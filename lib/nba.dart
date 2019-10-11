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
          // listview
          Positioned(
            top: 90,
            left: 0,
            right: 0,
            child: Container(
              height: 100,
              color: Colors.transparent,
              child: Container(
                height: 100,
                width: double.infinity,
//                      color: Colors.teal,
                child: ListView(
                  padding: EdgeInsets.zero,
                  shrinkWrap: true,
                  scrollDirection: Axis.horizontal,
                  children: <Widget>[
                    Container(
                      margin: EdgeInsets.only(right: 24.0),
                      height: 50,
                      width: 70,
                      decoration: BoxDecoration(
                        color: Colors.grey[200],
                        borderRadius: BorderRadius.circular(16.0),
                      ),
                      child: Column(
                        mainAxisAlignment: MainAxisAlignment.center,
                        crossAxisAlignment: CrossAxisAlignment.center,
                        children: <Widget>[
                          Text(
                            "Tue",
                            style: TextStyle(
                                color: Colors.grey, fontSize: 20.0, fontWeight: FontWeight.w300),
                          ),
                          Text(
                            "8",
                            style: TextStyle(
                                color: Colors.grey, fontSize: 40.0, fontWeight: FontWeight.bold),
                          ),
                          Text(
                            "Oct",
                            style: TextStyle(
                                color: Colors.grey, fontSize: 20.0, fontWeight: FontWeight.w300),
                          ),
                        ],
                      ),
                    ),
                    Container(
                      margin: EdgeInsets.only(right: 24.0),
                      height: 50,
                      width: 70,
                      decoration: BoxDecoration(
                          color: Colors.grey[200],
                          borderRadius: BorderRadius.circular(16.0),
                          border: Border.all(color: _topColor, width: 2.5)),
                      child: Column(
                        mainAxisAlignment: MainAxisAlignment.center,
                        crossAxisAlignment: CrossAxisAlignment.center,
                        children: <Widget>[
                          Text(
                            "Wed",
                            style: TextStyle(
                                color: _topColor, fontSize: 20.0, fontWeight: FontWeight.w300),
                          ),
                          Text(
                            "9",
                            style: TextStyle(
                                color: _topColor, fontSize: 40.0, fontWeight: FontWeight.bold),
                          ),
                          Text(
                            "Oct",
                            style: TextStyle(
                                color: _topColor, fontSize: 20.0, fontWeight: FontWeight.w300),
                          ),
                        ],
                      ),
                    ),
                    Container(
                      margin: EdgeInsets.only(right: 24.0),
                      height: 50,
                      width: 70,
                      decoration: BoxDecoration(
                        color: Colors.grey[200],
                        borderRadius: BorderRadius.circular(16.0),
                      ),
                      child: Column(
                        mainAxisAlignment: MainAxisAlignment.center,
                        crossAxisAlignment: CrossAxisAlignment.center,
                        children: <Widget>[
                          Text(
                            "Thu",
                            style: TextStyle(
                                color: Colors.grey, fontSize: 20.0, fontWeight: FontWeight.w300),
                          ),
                          Text(
                            "10",
                            style: TextStyle(
                                color: Colors.grey, fontSize: 40.0, fontWeight: FontWeight.bold),
                          ),
                          Text(
                            "Oct",
                            style: TextStyle(
                                color: Colors.grey, fontSize: 20.0, fontWeight: FontWeight.w300),
                          ),
                        ],
                      ),
                    ),
                    Container(
                      margin: EdgeInsets.only(right: 24.0),
                      height: 50,
                      width: 70,
                      decoration: BoxDecoration(
                        color: Colors.grey[200],
                        borderRadius: BorderRadius.circular(16.0),
                      ),
                      child: Column(
                        mainAxisAlignment: MainAxisAlignment.center,
                        crossAxisAlignment: CrossAxisAlignment.center,
                        children: <Widget>[
                          Text(
                            "Fri",
                            style: TextStyle(
                                color: Colors.grey, fontSize: 20.0, fontWeight: FontWeight.w300),
                          ),
                          Text(
                            "11",
                            style: TextStyle(
                                color: Colors.grey, fontSize: 40.0, fontWeight: FontWeight.bold),
                          ),
                          Text(
                            "Oct",
                            style: TextStyle(
                                color: Colors.grey, fontSize: 20.0, fontWeight: FontWeight.w300),
                          ),
                        ],
                      ),
                    ),
                    Container(
                      margin: EdgeInsets.only(right: 24.0),
                      height: 50,
                      width: 70,
                      decoration: BoxDecoration(
                        color: Colors.grey[200],
                        borderRadius: BorderRadius.circular(16.0),
                      ),
                      child: Column(
                        mainAxisAlignment: MainAxisAlignment.center,
                        crossAxisAlignment: CrossAxisAlignment.center,
                        children: <Widget>[
                          Text(
                            "Sat",
                            style: TextStyle(
                                color: Colors.grey, fontSize: 20.0, fontWeight: FontWeight.w300),
                          ),
                          Text(
                            "12",
                            style: TextStyle(
                                color: Colors.grey, fontSize: 40.0, fontWeight: FontWeight.bold),
                          ),
                          Text(
                            "Oct",
                            style: TextStyle(
                                color: Colors.grey, fontSize: 20.0, fontWeight: FontWeight.w300),
                          ),
                        ],
                      ),
                    ),
                  ],
                ),
              ),
            ),
          ),
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
            top: 0,
            left: 0,
            right: 0,
            child: SafeArea(
              top: true,
              left: true,
              right: true,
              child: Container(
                margin: EdgeInsets.only(top: 4.0, bottom: 24.0),
                height: 40.0,
                child: Row(
                  crossAxisAlignment: CrossAxisAlignment.end,
                  mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                  children: <Widget>[
                    Text(
                      "Games",
                      style: TextStyle(
                          color: Colors.white, fontSize: 28.0, fontWeight: FontWeight.bold),
                    ),
                    Text(
                      "Calendar",
                      style: TextStyle(
                          height: 1.5,
                          color: Colors.white.withOpacity(0.6),
                          fontSize: 20.0,
                          fontWeight: FontWeight.w600),
                    ),
                    Icon(
                      Icons.account_circle,
                      color: Colors.white,
                      size: 24.0,
                    )
                  ],
                ),
              ),
            ),
          ),

          
        ],
      ),
    );
  }
}

// topcontainer_ clipper
class myClipper extends CustomClipper<Path> {
  @override
  Path getClip(Size size) {
    var path = new Path();
    path.lineTo(0, 0);
    path.quadraticBezierTo(
        size.width * 0.05, size.height * 0.40, size.width * 0.20, size.height * 0.50);
    path.lineTo(size.width * 0.70, size.height * 0.50);
    path.quadraticBezierTo(size.width * 0.90, size.height * 0.55, size.width, size.height);
    path.lineTo(size.width, size.height);
    path.lineTo(size.width, 0);
    path.close();
    return path;
  }

  @override
  bool shouldReclip(CustomClipper<Path> oldClipper) => false;
}
