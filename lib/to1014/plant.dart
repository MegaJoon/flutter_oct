import 'package:flutter/material.dart';
import 'package:dots_indicator/dots_indicator.dart';

// https://dribbble.com/shots/7469237-Forest-Restoration-App-Concept-Plant-A-Billion-Trees/attachments/308908?mode=media

class Plant extends StatefulWidget {
  @override
  _PlantState createState() => _PlantState();
}

class _PlantState extends State<Plant> {
  Color _lightColor = Color.fromRGBO(161, 191, 160, 1);
  Color _color = Color.fromRGBO(102, 137, 100, 1);
  Color _highlightColor = Color.fromRGBO(43, 103, 42, 1);
  Color _textColor = Color.fromRGBO(23, 57, 22, 1);

  int _currentIndex = 0;

  String _image = "https://cdn.pixabay.com/photo/2019/09/13/15/13/chicken-4474176__340.jpg";

  @override
  Widget build(BuildContext context) {
    final screenHeight = MediaQuery.of(context).size.height;

    return Scaffold(
      body: Stack(
        children: <Widget>[
          Container(
            alignment: Alignment.bottomCenter,
            child: ClipPath(
              clipper: myClipper(),
              child: Container(
                height: screenHeight * 0.5,
                color: _lightColor,
              ),
            ),
          ),
          Container(
            alignment: Alignment.bottomCenter,
            child: ClipPath(
              clipper: myClipper(),
              child: Container(
                height: screenHeight * 0.4,
                color: _color,
              ),
            ),
          ),
          Positioned(
            top: 24.0,
            left: 24.0,
//            right: 24.0,
            child: SafeArea(
              top: true,
              left: true,
              right: true,
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: <Widget>[
                  Text(
                    "One Gift, One Tree, One Planet",
                    style: TextStyle(color: _lightColor, fontSize: 16.0, fontWeight: FontWeight.w600),
                  ),
                  Text(
                    "Plant a\nbillion trees",
                    style: TextStyle(color: _textColor, fontSize: 48.0, fontWeight: FontWeight.bold),
                  ),
                  SizedBox(
                    height: 24.0,
                  ),
                  Text(
                    "Our planting locations",
                    style: TextStyle(color: _highlightColor, fontSize: 20.0, fontWeight: FontWeight.w600),
                  ),
                  Container(
//                    alignment: Alignment.centerLeft,
                      height: 350.0,
                      width: MediaQuery.of(context).size.width,
//                    padding: EdgeInsets.zero,
//                      color: Colors.black,
                      child: ListView(
                        shrinkWrap: true,
                        physics: BouncingScrollPhysics(),
                        padding: EdgeInsets.only(top: 16.0),
                        scrollDirection: Axis.horizontal,
                        children: <Widget>[
                          Container(
                            height: 350.0,
                            width: 350.0,
                            child: Stack(
                              children: <Widget>[
                                Positioned(
                                  bottom: 24.0,
                                  top: 0,
                                  left: 0,
                                  right: 0,
                                  child: Container(
                                    margin: EdgeInsets.only(right: 24.0),
                                    padding: EdgeInsets.all(32.0),
                                    height: 334.0,
                                    width: 350.0,
                                    decoration: BoxDecoration(
                                        color: Colors.white,
                                        boxShadow: [BoxShadow(color: Colors.black12, spreadRadius: 2, blurRadius: 4)],
                                        borderRadius: BorderRadius.circular(32.0),
                                        image: DecorationImage(image: NetworkImage(_image), fit: BoxFit.fill)),
                                    child: Column(
                                      crossAxisAlignment: CrossAxisAlignment.start,
                                      mainAxisAlignment: MainAxisAlignment.end,
                                      children: <Widget>[
                                        Text(
                                          "Brazil",
                                          style: TextStyle(color: Colors.white, fontSize: 48.0, fontWeight: FontWeight.w600),
                                        ),
                                        SizedBox(
                                          height: 8.0,
                                        ),
                                        Text(
                                          "Help us ensure our forests last for\nfuture generations",
                                          style: TextStyle(color: Colors.white, fontSize: 16.0, fontWeight: FontWeight.w600),
                                        ),
                                      ],
                                    ),
                                  ),
                                ),
                                Positioned(
                                  bottom: 0,
                                  right: 48.0,
                                  child: Container(
                                    height: 48.0,
                                    width: 150.0,
                                    decoration: ShapeDecoration(
                                      shape: StadiumBorder(),
                                      color: _highlightColor,
                                      shadows: [BoxShadow(color: Colors.black12, spreadRadius: 2, blurRadius: 4)],
                                    ),
                                    child: Center(
                                        child: Text(
                                      "Plant your tree",
                                      style: TextStyle(color: Colors.white, fontSize: 16.0, fontWeight: FontWeight.bold),
                                    )),
                                  ),
                                )
                              ],
                            ),
                          ),
                          Container(
                            height: 350.0,
                            width: 350.0,
                            child: Stack(
                              children: <Widget>[
                                Positioned(
                                  bottom: 24.0,
                                  top: 0,
                                  left: 0,
                                  right: 0,
                                  child: Container(
                                    margin: EdgeInsets.only(right: 24.0),
                                    padding: EdgeInsets.all(32.0),
                                    height: 334.0,
                                    width: 350.0,
                                    decoration: BoxDecoration(
                                        color: Colors.white,
                                        boxShadow: [BoxShadow(color: Colors.black12, spreadRadius: 2, blurRadius: 4)],
                                        borderRadius: BorderRadius.circular(32.0),
                                        image: DecorationImage(image: NetworkImage(_image), fit: BoxFit.fill)),
                                    child: Column(
                                      crossAxisAlignment: CrossAxisAlignment.start,
                                      mainAxisAlignment: MainAxisAlignment.end,
                                      children: <Widget>[
                                        Text(
                                          "Brazil",
                                          style: TextStyle(color: Colors.white, fontSize: 48.0, fontWeight: FontWeight.w600),
                                        ),
                                        SizedBox(
                                          height: 8.0,
                                        ),
                                        Text(
                                          "Help us ensure our forests last for\nfuture generations",
                                          style: TextStyle(color: Colors.white, fontSize: 16.0, fontWeight: FontWeight.w600),
                                        ),
                                      ],
                                    ),
                                  ),
                                ),
                                Positioned(
                                  bottom: 0,
                                  right: 48.0,
                                  child: Container(
                                    height: 48.0,
                                    width: 150.0,
                                    decoration: ShapeDecoration(
                                      shape: StadiumBorder(),
                                      color: _highlightColor,
                                      shadows: [BoxShadow(color: Colors.black12, spreadRadius: 2, blurRadius: 4)],
                                    ),
                                    child: Center(
                                        child: Text(
                                      "Plant your tree",
                                      style: TextStyle(color: Colors.white, fontSize: 16.0, fontWeight: FontWeight.bold),
                                    )),
                                  ),
                                )
                              ],
                            ),
                          ),
                        ],
                      )),
                  Container(
                    height: 8.0,
                    width: MediaQuery.of(context).size.width,
                    margin: EdgeInsets.only(top: 24.0),
                    padding: EdgeInsets.only(right: 32.0),
                    child: Row(
                      mainAxisAlignment: MainAxisAlignment.center,
                      children: <Widget>[
                        Container(
                          margin: EdgeInsets.only(right: 8.0),
                          height: 8.0,
                          width: 8.0,
                          decoration: BoxDecoration(
                            shape: BoxShape.circle,
                            color: Colors.white,
                          ),
                        ),
                        Container(
                          margin: EdgeInsets.only(right: 8.0),
                          height: 8.0,
                          width: 8.0,
                          decoration: BoxDecoration(
                            shape: BoxShape.circle,
                            color: Colors.grey,
                          ),
                        ),
                        Container(
                          margin: EdgeInsets.only(right: 8.0),
                          height: 8.0,
                          width: 8.0,
                          decoration: BoxDecoration(
                            shape: BoxShape.circle,
                            color: Colors.grey,
                          ),
                        ),
                        Container(
                          margin: EdgeInsets.only(right: 8.0),
                          height: 8.0,
                          width: 8.0,
                          decoration: BoxDecoration(
                            shape: BoxShape.circle,
                            color: Colors.grey,
                          ),
                        ),
                      ],
                    ),
                  )
                ],
              ),
            ),
          )
        ],
      ),

      // bottom bar
      bottomNavigationBar: BottomAppBar(
        elevation: 16,
        color: _lightColor,
        child: Container(
          padding: EdgeInsets.symmetric(horizontal: 24.0),
          height: 54.0,
          color: _color,
          child: Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: <Widget>[
              Container(
                height: 36.0,
                width: 90.0,
                decoration: ShapeDecoration(shape: StadiumBorder(), color: _highlightColor),
                child: Center(
                  child: Row(
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: <Widget>[
                      Icon(
                        Icons.home,
                        size: 24.0,
                        color: Colors.white,
                      ),
                      Text(
                        "Home",
                        style: TextStyle(color: Colors.white, fontSize: 14.0),
                      )
                    ],
                  ),
                ),
              ),
              Icon(
                Icons.swap_horizontal_circle,
                size: 24.0,
                color: Colors.white,
              ),
              Container(
                height: 36.0,
                width: 90.0,
                child: Center(
                  child: Icon(
                    Icons.person_outline,
                    size: 24.0,
                    color: Colors.white,
                  ),
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}

class myClipper extends CustomClipper<Path> {
  @override
  Path getClip(Size size) {
    var path = new Path();
    path.lineTo(0, 0);
    path.quadraticBezierTo(size.width * 0.3, size.height * 0.1, size.width * 0.4, size.height * 0.2);
    path.quadraticBezierTo(size.width * 0.8, size.height * 0.4, size.width, size.height * 0.35);
    path.lineTo(size.width, size.height);
    path.lineTo(0, size.height);
    path.close();
    return path;
  }

  @override
  bool shouldReclip(CustomClipper<Path> oldClipper) => false;
}
