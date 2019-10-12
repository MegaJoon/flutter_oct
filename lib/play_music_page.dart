import 'package:flutter/material.dart';
import 'package:flutter_circular_slider/flutter_circular_slider.dart';

class PlayMusicPage extends StatefulWidget {
  @override
  _PlayMusicPageState createState() => _PlayMusicPageState();
}

class _PlayMusicPageState extends State<PlayMusicPage> {
  Color _color = Color.fromRGBO(79, 60, 117, 1);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        backgroundColor: _color,
        body: Stack(
          children: <Widget>[
            // bottombar
            Positioned(
              bottom: 0,
              left: 0,
              right: 0,
              child: Container(
                height: 64.0,
                color: _color,
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                  crossAxisAlignment: CrossAxisAlignment.center,
                  children: <Widget>[
                    Icon(
                      Icons.favorite,
                      size: 28.0,
                      color: Colors.white,
                    ),
                    Icon(
                      Icons.compare_arrows,
                      size: 28.0,
                      color: Colors.white.withOpacity(0.5),
                    ),
                    Icon(
                      Icons.menu,
                      size: 28.0,
                      color: Colors.white.withOpacity(0.5),
                    ),
                  ],
                ),
              ),
            ),
            // white container
            Positioned(
              top: 0,
              left: 0,
              right: 0,
              bottom: 64.0,
              child: Container(
                decoration: BoxDecoration(
                    borderRadius: BorderRadius.only(
                        bottomLeft: Radius.circular(32.0), bottomRight: Radius.circular(32.0)),
                    color: Colors.white),
              ),
            )
          ],
        ));
  }
}
