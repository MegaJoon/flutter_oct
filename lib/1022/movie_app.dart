import 'package:flutter/material.dart';

// https://dribbble.com/shots/7734747-Movie-Explorer-Service-App-for-Watching-Movies-and-TV-Series/attachments/438184?mode=media

class MovieApp extends StatefulWidget {
  @override
  _MovieAppState createState() => _MovieAppState();
}

class _MovieAppState extends State<MovieApp> {
  // red color
  Color _color = Color.fromRGBO(215, 25, 32, 1);

  // asset.image
  String _jokerImage = "assets/joker.jpg";
  String _joker1Image = "assets/joker1.jpg";
  String _jumanjiImage = "assets/jumanji.jpg";
  String _terminatorImage = "assets/terminator.jpg";

  @override
  Widget build(BuildContext context) {
    final screenHeight = MediaQuery.of(context).size.height;

    return Scaffold(
      backgroundColor: Colors.black,
      body: Column(
        children: <Widget>[
          // appbar
          SafeArea(
            top: true,
            left: true,
            right: true,
            child: Container(
              margin: EdgeInsets.symmetric(horizontal: 24.0),
              height: 48.0,
              child: Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: <Widget>[
                  Icon(
                    Icons.menu,
                    size: 28.0,
                    color: Colors.white,
                  ),
                  Container(
                    alignment: Alignment.center,
                    height: 48.0,
                    width: 160.0,
                    child: Stack(
                      children: <Widget>[
                        Positioned(
                          top: 2.0,
                          left: 60.0,
                          bottom: 0,
                          child: Transform.rotate(
                            angle: 0.20,
                            child: ClipPath(
                              clipper: myClipper(),
                              child: Container(
                                height: 32.0,
                                width: 32.0,
                                color: _color,
                              ),
                            ),
                          ),
                        ),
                        Text(
                          "book my show",
                          style: TextStyle(color: Colors.white, fontSize: 24.0, fontWeight: FontWeight.w600),
                        ),
                      ],
                    ),
                  ),
                  Icon(
                    Icons.search,
                    size: 28.0,
                    color: Colors.white,
                  ),
                ],
              ),
            ),
          ),

          // main container
          Container(
            height: screenHeight,
            child: Stack(
              children: <Widget>[
                // background image
                Positioned(
                  top: 16.0,
                  left: 0,
                  right: 0,
                  bottom: screenHeight*0.20,
                  child: Image.asset(_jokerImage, fit: BoxFit.fill,),
                ),

              ],
            ),
          ),
        ],
      ),
    );
  }
}

class myClipper extends CustomClipper<Path> {
  @override
  Path getClip(Size size) {
    var path = Path();
    path.lineTo(0.0, 4.0);
    path.lineTo(size.width * 0.125, 0.0);
    path.lineTo(size.width * 0.250, 4.0);
    path.lineTo(size.width * 0.375, 0.0);
    path.lineTo(size.width * 0.500, 4.0);
    path.lineTo(size.width * 0.625, 0.0);
    path.lineTo(size.width * 0.750, 4.0);
    path.lineTo(size.width * 0.875, 0.0);
    path.lineTo(size.width, 4.0);
    path.lineTo(size.width, size.height);
    path.lineTo(0.0, size.height);
    path.close();
    return path;
  }

  @override
  bool shouldReclip(CustomClipper<Path> oldClipper) => false;
}
