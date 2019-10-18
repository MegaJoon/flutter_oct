import 'package:flutter/material.dart';

// https://dribbble.com/shots/7563686-dailyui-019-Leaderboard

class LeaderBoard extends StatefulWidget {
  @override
  _LeaderBoardState createState() => _LeaderBoardState();
}

class _LeaderBoardState extends State<LeaderBoard> {
  Color _color = Color.fromRGBO(255, 76, 119, 1);
  Color _color2 = Color.fromRGBO(255, 148, 78, 1);

  String _image = "https://cdn.pixabay.com/photo/2017/03/30/18/17/girl-2189247__340.jpg";

  @override
  Widget build(BuildContext context) {
    final screenHeight = MediaQuery.of(context).size.height;

    return Scaffold(
      body: Stack(
        children: <Widget>[
          // background image
          Positioned(
            top: screenHeight * 0.23,
            left: 0,
            right: 0,
            bottom: screenHeight * 0.10,
            child: Container(
              decoration: BoxDecoration(image: DecorationImage(image: NetworkImage(_image), fit: BoxFit.fill)),
            ),
          ),

          // top bar
          Positioned(
            top: 0,
            left: 0,
            right: 0,
            child: Container(
              padding: EdgeInsets.only(left: 24.0, right: 24.0),
              height: screenHeight * 0.25,
              decoration: BoxDecoration(
                  borderRadius: BorderRadius.only(bottomLeft: Radius.circular(16.0), bottomRight: Radius.circular(16.0)),
                  gradient: LinearGradient(colors: [_color, _color2], begin: Alignment.centerLeft, end: Alignment.centerRight)),
              child: SafeArea(
                  child: Column(
                mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                crossAxisAlignment: CrossAxisAlignment.center,
                children: <Widget>[
                  Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: <Widget>[
                      SizedBox(
                        width: 32.0,
                      ),
                      Text(
                        "Eve Doe",
                        style: TextStyle(color: Colors.white, fontSize: 36.0, fontWeight: FontWeight.bold),
                      ),
                      Icon(
                        Icons.arrow_back_ios,
                        size: 36.0,
                        color: Colors.white,
                      ),
                    ],
                  ),
                  Row(
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: <Widget>[
                      SizedBox(
                        width: 80.0,
                      ),
                      Text(
                        "Veteran IV",
                        style: TextStyle(color: Colors.white, fontSize: 18.0, fontWeight: FontWeight.w600),
                      ),
                      SizedBox(
                        width: 16.0,
                      ),
                      Text(
                        "Rank: 03",
                        style: TextStyle(color: Colors.white, fontSize: 18.0, fontWeight: FontWeight.w600),
                      ),
                    ],
                  ),
                  Text(
                    "64,329 points",
                    style: TextStyle(color: Colors.white, fontSize: 28.0, fontWeight: FontWeight.w600),
                  ),
                ],
              )),
            ),
          ),

          // bottombar
          Positioned(
            bottom: 0,
            left: 0,
            right: 0,
            child: Container(
              height: screenHeight * 0.10,
              decoration: BoxDecoration(
                gradient: LinearGradient(colors: [_color2, _color], begin: Alignment.centerLeft, end: Alignment.centerRight),
              ),
              child: Row(
                crossAxisAlignment: CrossAxisAlignment.center,
                mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                children: <Widget>[
                  Icon(
                    Icons.home,
                    size: 36.0,
                    color: Colors.white,
                  ),
                  Container(
                    height: 36.0,
                    width: 150.0,
                    decoration: ShapeDecoration(shape: StadiumBorder(), color: Colors.white),
                    child: Center(
                        child: Text(
                      "Play Again",
                      style: TextStyle(color: _color, fontSize: 24.0, fontWeight: FontWeight.w600),
                    )),
                  ),
                  Icon(
                    Icons.account_circle,
                    size: 36.0,
                    color: Colors.white,
                  ),
                ],
              ),
            ),
          ),

          // center container
          Positioned(
            bottom: screenHeight * 0.10 + 24.0,
            left: 48.0,
            right: 48.0,
            child: Container(
              padding: EdgeInsets.all(12.0),
              height: screenHeight * 0.20,
              decoration: BoxDecoration(
                  borderRadius: BorderRadius.circular(16.0),
                  gradient: LinearGradient(
                      colors: [_color.withOpacity(0.7), _color2.withOpacity(0.7)],
                      begin: Alignment.centerLeft,
                      end: Alignment.centerRight)),
              child: Column(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: <Widget>[
                  Text("Match results".toUpperCase(), style: TextStyle(color: Colors.white, fontSize: 20.0, fontWeight: FontWeight.bold),),
                  Row(
                    children: <Widget>[
                      Text("Number of Kills".toUpperCase(), style: TextStyle(color: Colors.white, fontSize: 18.0, fontWeight: FontWeight.w600),),
                      Spacer(),
                      Text("42", style: TextStyle(color: Colors.white, fontSize: 18.0, fontWeight: FontWeight.w600),),
                    ],
                  ),
                  Row(
                    children: <Widget>[
                      Text("K/D".toUpperCase(), style: TextStyle(color: Colors.white, fontSize: 18.0, fontWeight: FontWeight.w600),),
                      Spacer(),
                      Text("5.25", style: TextStyle(color: Colors.white, fontSize: 18.0, fontWeight: FontWeight.w600),),
                    ],
                  ),
                  Row(
                    children: <Widget>[
                      Text("Deaths", style: TextStyle(color: Colors.white, fontSize: 18.0, fontWeight: FontWeight.w600),),
                      Spacer(),
                      Text("8", style: TextStyle(color: Colors.white, fontSize: 18.0, fontWeight: FontWeight.w600),),
                    ],
                  ),

                ],
              ),
            ),
          )
        ],
      ),
    );
  }
}
