import 'package:flutter/material.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';

// https://dribbble.com/shots/7555925-Grocery-App-Design/attachments/353102?mode=media

class Grocery extends StatefulWidget {
  @override
  _GroceryState createState() => _GroceryState();
}

class _GroceryState extends State<Grocery> {
  Color _backgroundColor = Color.fromRGBO(252, 164, 171, 1);
  Color _color = Color.fromRGBO(196, 119, 125, 1);
  Color _containerColor = Color.fromRGBO(254, 224, 223, 1);
  Color _saleColor = Color.fromRGBO(233, 76, 61, 1);
  Color _addColor = Color.fromRGBO(30, 86, 49, 1);

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
          bottom: screenHeight * 0.40,
          child: Stack(
            children: <Widget>[
              // background color
              Positioned(
                top: 0,
                right: 0,
                left: 0,
                bottom: 0.0,
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
                    Image.asset(
                      "assets/pomegranate.png",
                      fit: BoxFit.fitHeight,
                      height: 300.0,
                    ),
                  ],
                )),
              ),
            ],
          ),
        ),

        // bottom container
        Positioned(
          top: screenHeight * 0.60,
          bottom: 0,
          left: 0,
          right: 0,
          child: Container(
            padding: EdgeInsets.only(top: 80.0, left: 24.0, bottom: 64.0),
            color: Colors.grey[200],
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: <Widget>[
                Text(
                  "UNIT".toUpperCase(),
                  style: TextStyle(color: Colors.black, fontSize: 20.0, fontWeight: FontWeight.w600),
                ),
                RichText(
                  text: TextSpan(children: [
                    TextSpan(
                        text: "4 units ", style: TextStyle(color: Colors.black, fontSize: 20.0, fontWeight: FontWeight.w600)),
                    TextSpan(
                        text: "(0.9 - 1.2kg)",
                        style: TextStyle(color: Colors.black, fontSize: 20.0, fontWeight: FontWeight.w300)),
                  ]),
                ),
                Container(
                  margin: EdgeInsets.only(right: 36.0),
                  padding: EdgeInsets.symmetric(horizontal: 8.0),
                  height: 32.0,
                  decoration: BoxDecoration(
                      color: _containerColor,
                      border: Border.all(color: _color, width: 1.5),
                      borderRadius: BorderRadius.circular(4.0)),
                  child: Row(
                    children: <Widget>[
                      Icon(
                        Icons.favorite_border,
                        size: 24.0,
                        color: _color,
                      ),
                      SizedBox(
                        width: 8.0,
                      ),
                      Text(
                        "Price ofr club member : 199",
                        style: TextStyle(
                          color: _color,
                          fontSize: 16.0,
                          fontWeight: FontWeight.bold,
                        ),
                      ),
                      Spacer(),
                      Icon(
                        FontAwesomeIcons.angleDoubleRight,
                        size: 24.0,
                        color: _color,
                      )
                    ],
                  ),
                ),
              ],
            ),
          ),
        ),

        Positioned(
          top: screenHeight * 0.60 - 24.0,
          left: 24.0,
          child: Container(
            padding: EdgeInsets.all(12.0),
            height: 100.0,
            width: 250.0,
            decoration: BoxDecoration(
                color: Colors.white,
                borderRadius: BorderRadius.circular(4.0),
                boxShadow: [BoxShadow(color: Colors.black12, spreadRadius: 2, blurRadius: 4)]),
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: <Widget>[
                RichText(
                  text: TextSpan(children: [
                    TextSpan(
                      text: "Pomegranate ",
                      style: TextStyle(color: Colors.black, fontSize: 18.0, fontWeight: FontWeight.w600),
                    ),
                    TextSpan(
                      text: "(Anaar)",
                      style: TextStyle(color: Colors.black, fontSize: 18.0, fontWeight: FontWeight.w300),
                    ),
                  ]),
                ),
                RichText(
                  text: TextSpan(children: [
                    TextSpan(
                      text: "\$199 ",
                      style: TextStyle(color: Colors.black, fontSize: 18.0, fontWeight: FontWeight.w300),
                    ),
                    TextSpan(
                      text: "\$259",
                      style: TextStyle(
                          color: Colors.black,
                          fontSize: 18.0,
                          fontWeight: FontWeight.w300,
                          decoration: TextDecoration.lineThrough),
                    ),
                  ]),
                ),
                Container(
                  height: 24.0,
                  width: 64.0,
                  decoration: BoxDecoration(color: _saleColor, borderRadius: BorderRadius.circular(4.0)),
                  child: Center(
                      child: Text(
                    "23% OFF".toUpperCase(),
                    style: TextStyle(color: Colors.white, fontSize: 14.0, fontWeight: FontWeight.w600),
                  )),
                )
              ],
            ),
          ),
        ),

        Positioned(
          top: screenHeight * 0.60,
          right: 24.0,
          child: Container(
            height: 48.0,
            width: 113.0,
            color: _addColor,
            child: Center(
              child: Row(
                mainAxisAlignment: MainAxisAlignment.center,
                children: <Widget>[
                  Text(
                    "ADD",
                    style: TextStyle(color: Colors.white, fontSize: 16.0, fontWeight: FontWeight.bold),
                  ),
                  SizedBox(width: 8.0),
                  Icon(
                    Icons.add,
                    size: 20.0,
                    color: Colors.white,
                  ),
                ],
              ),
            ),
          ),
        )
      ],
    ));
  }
}
