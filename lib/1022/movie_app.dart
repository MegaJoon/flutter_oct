import 'package:flutter/material.dart';

// https://dribbble.com/shots/7734747-Movie-Explorer-Service-App-for-Watching-Movies-and-TV-Series/attachments/438184?mode=media

class MovieApp extends StatefulWidget {
  @override
  _MovieAppState createState() => _MovieAppState();
}

class _MovieAppState extends State<MovieApp> {
  // red color
  Color _color = Color.fromRGBO(215, 25, 32, 1);

  @override
  Widget build(BuildContext context) {
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
              height: 32.0,
              child: Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: <Widget>[
                  Icon(Icons.menu, size: 28.0, color: Colors.white,),
                  Container(
                    alignment: Alignment.center,
                    height: 32.0,
                    width: 160.0,
                    child: Stack(
                      children: <Widget>[
                        Text("book my show", style: TextStyle(color: Colors.white, fontSize: 24.0, fontWeight: FontWeight.w600),),
                        // container

                        Positioned(
                          top: 0,
                          left: 60.0,
                          child: ClipPath(
                            clipper: myClipper(),
                            child: Container(
                              height: 32.0,
                              width: 32.0,
                              color: _color,
                            ),
                          ),
                        )
                      ],
                    ),
                  ),
                  Icon(Icons.search, size: 28.0, color: Colors.white,),
                ],
              ),
            ),
          ),

          // main container
          Container(),
        ],
      ),
    );
  }
}





















