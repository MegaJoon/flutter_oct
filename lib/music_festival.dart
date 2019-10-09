import 'package:flutter/material.dart';

// https://dribbble.com/shots/7394686-Music-Festival-App/attachments/273902?mode=media

class MusicFestival extends StatefulWidget {
  @override
  _MusicFestivalState createState() => _MusicFestivalState();
}

class _MusicFestivalState extends State<MusicFestival> {
  Color _topColor = Color.fromRGBO(0, 67, 148, 1);
  Color _bottomColor = Color.fromRGBO(5, 18, 66, 1);

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
            child: ClipPath(
              clipper: myClipper(),
              child: Container(
                height: screenHeight * 0.4,
                decoration: BoxDecoration(
                    gradient: LinearGradient(
                        colors: [_topColor, _bottomColor],
                        begin: Alignment.topCenter,
                        end: Alignment.bottomCenter)),
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
    path.quadraticBezierTo(size.width * 0.05, size.height * 0.9, size.width * 0.5, size.height);
    path.lineTo(size.width, size.height);
    path.lineTo(size.width, 0);
    return path;
  }

  @override
  bool shouldReclip(CustomClipper<Path> oldClipper) => false;
}
