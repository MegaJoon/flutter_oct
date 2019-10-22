import 'package:flutter/material.dart';

class JokerPage extends StatefulWidget {
  @override
  _JokerPageState createState() => _JokerPageState();
}

class _JokerPageState extends State<JokerPage> {
  String _jokerImage = "assets/joker1.jpg";

  // red color
  Color _color = Color.fromRGBO(215, 25, 32, 1);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.black,
      body: SingleChildScrollView(
        child: Padding(
          padding: const EdgeInsets.symmetric(horizontal: 16.0),
          child: Column(
            children: <Widget>[
              // SafeArea
              SafeArea(
                top: true,
                left: true,
                right: true,
                child: Container(
                  height: 40.0,
                  child: Row(
                    children: <Widget>[
                      IconButton(
                        icon: Icon(
                          Icons.arrow_back,
                          size: 28.0,
                          color: Colors.white,
                        ),
                        onPressed: () {
                          setState(() {
                            Navigator.pop(context);
                          });
                        },
                      ),
                      Spacer(),
                      Icon(
                        Icons.search,
                        size: 28.0,
                        color: Colors.white,
                      ),
                    ],
                  ),
                ),
              ),
              Divider(
                color: Colors.grey,
              ),
              Container(
                  margin: EdgeInsets.symmetric(horizontal: 16.0),
                  height: 24.0,
                  child: Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: <Widget>[
                      Text(
                        "Synopsis".toUpperCase(),
                        style: TextStyle(color: Colors.white, fontSize: 12.0, fontWeight: FontWeight.bold),
                      ),
                      Text(
                        "cast".toUpperCase(),
                        style: TextStyle(color: Colors.white, fontSize: 12.0, fontWeight: FontWeight.bold),
                      ),
                      Text(
                        "crew".toUpperCase(),
                        style: TextStyle(color: Colors.white, fontSize: 12.0, fontWeight: FontWeight.bold),
                      ),
                      Text(
                        "user reviews".toUpperCase(),
                        style: TextStyle(color: Colors.white, fontSize: 12.0, fontWeight: FontWeight.bold),
                      ),
                      Text(
                        "critic".toUpperCase(),
                        style: TextStyle(color: Colors.white, fontSize: 12.0, fontWeight: FontWeight.bold),
                      ),
                    ],
                  )),
              Divider(
                color: Colors.grey,
              ),

              Container(
                height: 600.0,
                child: Stack(
                  children: <Widget>[
                    // background image
                    Positioned(
                      top: 0,
                      left: 0,
                      right: 0,
                      child: Container(
                        height: 460.0,
                        decoration: BoxDecoration(image: DecorationImage(image: AssetImage(_jokerImage), fit: BoxFit.fill)),
                        child: Container(
                          margin: EdgeInsets.symmetric(horizontal: 165.0),
//                          height: 48.0,
//                          width: 48.0,
                          decoration: BoxDecoration(
                            shape: BoxShape.circle,
                            color: _color,
                          ),
                          child: Center(
                              child: Icon(
                            Icons.arrow_right,
                            size: 48.0,
                            color: Colors.white,
                          )),
                        ),
                      ),
                    ),

                    Positioned(
                      top: 400.0,
                      left: 0,
                      right: 0,
                      child: Column(
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: <Widget>[
                          Text(
                            "Joker",
                            style: TextStyle(color: Colors.white, fontSize: 48.0, fontWeight: FontWeight.bold),
                          ),
                          Text(
                            "English | Crime, Fantasy & Thriller",
                            style: TextStyle(color: Colors.grey, fontSize: 12.0, fontWeight: FontWeight.w400),
                          ),
                          SizedBox(
                            height: 16.0,
                          ),
                          Text(
                            "Arthur Fleck, a man struggling with loniliness and\nisolation, wears tow masks. One, he paints on for his\nday job as a clown. The other is a guise he projects in\mddddd d dd d d dd dd d ddd.",
                            style: TextStyle(color: Colors.white, fontSize: 12.0, fontWeight: FontWeight.w400, height: 1.5),
                            maxLines: 4,
                          ),
                        ],
                      ),
                    ),

                    Positioned(
                      bottom: 0,
                      left: 0,
                      right: 0,
                      child: Container(
                        height: 90.0,
                        decoration: BoxDecoration(
                            gradient: LinearGradient(
                                colors: [Colors.black.withOpacity(0.3), Colors.black],
                                begin: Alignment.topCenter,
                                end: Alignment.bottomCenter)),
                      ),
                    )
                  ],
                ),
              )
            ],
          ),
        ),
      ),
    );
  }
}
