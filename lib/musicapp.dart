import 'package:flutter/material.dart';

// https://dribbble.com/shots/7346324-simple-music-app/attachments/252403?mode=media

class MusicApp extends StatefulWidget {
  @override
  _MusicAppState createState() => _MusicAppState();
}

class _MusicAppState extends State<MusicApp> {
  Color _color = Color.fromRGBO(225, 205, 205, 1);
  Color _color2 = Color.fromRGBO(219, 149, 148, 1);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Container(
        decoration: BoxDecoration(
          gradient: LinearGradient(colors: [_color, _color2], begin: Alignment.topCenter, end: Alignment.bottomCenter),

        ),
      ),
      // bottomnavigation
      bottomNavigationBar: BottomAppBar(
        color: _color2,
        child: Container(
          height: 64,
          decoration: BoxDecoration(
              color: Color.fromRGBO(225, 125, 125, 1),
              borderRadius: BorderRadius.only(topLeft: Radius.circular(52.0))),
          child: Row(
            mainAxisAlignment: MainAxisAlignment.spaceEvenly,
            children: <Widget>[
              Column(
                mainAxisAlignment: MainAxisAlignment.center,
                children: <Widget>[
                  Icon(
                    Icons.file_download,
                    size: 28.0,
                    color: Colors.white,
                  ),
                  Text(
                    "Download",
                    style: TextStyle(
                      color: Colors.white,
                      fontSize: 12.0,
                      fontWeight: FontWeight.w300,
                    ),
                  )
                ],
              ),
              Column(
                mainAxisAlignment: MainAxisAlignment.center,
                children: <Widget>[
                  Icon(
                    Icons.favorite_border,
                    size: 28.0,
                    color: Colors.white,
                  ),
                  Text(
                    "Favorite",
                    style: TextStyle(
                      color: Colors.white,
                      fontSize: 12.0,
                      fontWeight: FontWeight.w300,
                    ),
                  )
                ],
              ),
              Column(
                mainAxisAlignment: MainAxisAlignment.center,
                children: <Widget>[
                  Icon(
                    Icons.menu,
                    size: 28.0,
                    color: Colors.white,
                  ),
                  Text(
                    "Menu",
                    style: TextStyle(
                      color: Colors.white,
                      fontSize: 12.0,
                      fontWeight: FontWeight.w300,
                    ),
                  )
                ],
              ),
            ],
          ),
        ),
      ),
    );
  }
}
