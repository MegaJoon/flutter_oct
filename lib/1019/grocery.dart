import 'package:flutter/material.dart';

// https://dribbble.com/shots/7555925-Grocery-App-Design/attachments/353102?mode=media

class Grocery extends StatefulWidget {
  @override
  _GroceryState createState() => _GroceryState();
}

class _GroceryState extends State<Grocery> {
  Color _backgroundColor = Color.fromRGBO(252, 164, 171, 1);

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
          bottom: screenHeight * 0.30,
          child: Stack(
            children: <Widget>[
              // background color
              Positioned(
                top: 0,
                right: 0,
                left: 0,
                bottom: 32.0,
                child: Container(
                  color: _backgroundColor,
                ),
              ),

              // appbar & image
              Positioned(
                top: 0,
                left: 16.0,
                right: 16.0,
                child: SafeArea(
                    child: Column(
                      children: <Widget>[
                        Container(
                  height: 40.0,
                  child: Row(
                        children: <Widget>[
                          Icon(
                            Icons.arrow_back,
                            size: 28.0,
                            color: Colors.white,
                          ),
                          Spacer(),
                          Icon(
                            Icons.search,
                            size: 28.0,
                            color: Colors.white,
                          ),
                          SizedBox(
                            width: 16.0,
                          ),
                          Icon(
                            Icons.shop,
                            size: 28.0,
                            color: Colors.white,
                          ),
                        ],
                  ),
                ),
                        // image
                        Image.asset("assets/pomegranate.png", fit: BoxFit.fitHeight, height: 300.0,),
                      ],
                    )),
              )
            ],
          ),
        ),
      ],
    ));
  }
}
