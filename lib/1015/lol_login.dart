import 'package:flutter/material.dart';
import 'package:flutter/services.dart';

// https://dribbble.com/shots/7434142-league-login-redesign/attachments/294966?mode=media

class LOL extends StatefulWidget {
  @override
  _LOLState createState() => _LOLState();
}

class _LOLState extends State<LOL> {
  @override
  Widget build(BuildContext context) {
//    SystemChrome.setSystemUIOverlayStyle(SystemUiOverlayStyle(statusBarColor: Colors.transparent));

    final screenHeight = MediaQuery.of(context).size.height;
    final screenWidth = MediaQuery.of(context).size.width;

    return Scaffold(
        body: Row(
      children: <Widget>[
        // left
        Flexible(
          flex: 3,
          child: Container(
            padding: EdgeInsets.only(left: 16.0, right: 16.0, top: 100.0, bottom: 32.0),
            height: screenHeight,
            width: screenWidth * 0.30,
            color: Color.fromRGBO(24, 24, 24, 1),
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.center,
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: <Widget>[
//                Spacer(),
                Row(
                  children: <Widget>[
                    Container(
                      height: 24.0,
                      width: 24.0,
                      child: Image.asset(
                        "assets/icon.ico",
                        fit: BoxFit.fill,
                      ),
                    ),
                    SizedBox(
                      width: 8.0,
                    ),
                    Text(
                      "Sign In".toUpperCase(),
                      style: TextStyle(color: Color.fromRGBO(232, 189, 101, 1), fontSize: 20.0, fontWeight: FontWeight.bold),
                    )
                  ],
                ),
                SizedBox(
                  height: 4.0,
                ),
                Container(
                  height: 32.0,
                  width: screenWidth,
                  decoration: BoxDecoration(
                    borderRadius: BorderRadius.circular(4.0),
                    color: Colors.black,
                  ),
                  child: TextField(
                    decoration: InputDecoration(
                        contentPadding: EdgeInsets.all(6.0),
                        border: InputBorder.none,
                        hintText: "Username",
                        hintStyle:
                            TextStyle(color: Colors.amberAccent.withOpacity(0.3), fontWeight: FontWeight.w600, fontSize: 8.0)),
                  ),
                ),
                Container(
                  height: 32.0,
                  width: screenWidth,
                  decoration: BoxDecoration(
                    borderRadius: BorderRadius.circular(4.0),
                    color: Colors.black,
                  ),
                  child: TextField(
                    decoration: InputDecoration(
                        contentPadding: EdgeInsets.all(6.0),
                        border: InputBorder.none,
                        hintText: "Username",
                        hintStyle:
                            TextStyle(color: Colors.amberAccent.withOpacity(0.3), fontWeight: FontWeight.w600, fontSize: 8.0)),
                  ),
                ),
                Row(
                  children: <Widget>[
                    Icon(
                      Icons.check_circle,
                      size: 8.0,
                      color: Colors.white.withOpacity(0.5),
                    ),
                    Text(
                      "EUW(EN)",
                      style: TextStyle(color: Colors.white.withOpacity(0.5), fontSize: 8.0, fontWeight: FontWeight.bold),
                    ),
                    Spacer(),
                    Text(
                      "STAY SIGNED".toUpperCase(),
                      style: TextStyle(color: Colors.white.withOpacity(0.5), fontSize: 8.0, fontWeight: FontWeight.bold),
                    ),
                  ],
                ),
                Container(
                  margin: EdgeInsets.symmetric(horizontal: 24.0),
                  height: 24.0,
                  decoration: ShapeDecoration(
                      shape: StadiumBorder(),
                      gradient: LinearGradient(colors: [Color.fromRGBO(232, 189, 101, 1), Color.fromRGBO(184, 136, 59, 1)])),
                  child: Center(
                      child: Text(
                    "Sign in".toUpperCase(),
                    style: TextStyle(color: Colors.black, fontSize: 12.0, fontWeight: FontWeight.bold),
                  )),
                ),
                SizedBox(
                  height: 16.0,
                ),
                Row(
                  crossAxisAlignment: CrossAxisAlignment.end,
                  children: <Widget>[
                    Column(
                      children: <Widget>[
                        Text(
                          "Create account",
                          style: TextStyle(color: Colors.white.withOpacity(0.5), fontSize: 8.0, fontWeight: FontWeight.w600),
                        ),
                        Text(
                          "Cant sign in?",
                          style: TextStyle(color: Colors.white.withOpacity(0.5), fontSize: 8.0, fontWeight: FontWeight.w600),
                        ),
                      ],
                    ),
                    Spacer(),
                    Text(
                      "v0.0.0",
                      style: TextStyle(color: Colors.white.withOpacity(0.5), fontSize: 8.0, fontWeight: FontWeight.w600),
                    )
                  ],
                )
              ],
            ),
          ),
        ),

        // right dragon
        Flexible(
          flex: 7,
          child: Container(
            height: screenHeight,
            width: screenWidth * 0.70,
            decoration: BoxDecoration(image: DecorationImage(image: AssetImage("assets/lol_client.PNG"), fit: BoxFit.fill)),
            child: Stack(
              children: <Widget>[
                Positioned(
                  top: 10.0,
                  right: 30.0,
                  child: Container(
                    height: 30.0,
                    width: 130.0,
                    child: Row(
                      crossAxisAlignment: CrossAxisAlignment.center,
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      children: <Widget>[
                        Text(
                          "_",
                          style: TextStyle(color: Colors.white, fontSize: 20.0, fontWeight: FontWeight.bold),
                        ),
                        Icon(
                          Icons.settings,
                          size: 20.0,
                          color: Colors.white,
                        ),
                        Text(
                          "?",
                          style: TextStyle(color: Colors.white, fontSize: 20.0, fontWeight: FontWeight.bold),
                        ),
                        Icon(
                          Icons.close,
                          size: 20.0,
                          color: Colors.white,
                        ),
                      ],
                    ),
                  ),
                )
              ],
            ),
          ),
        ),
      ],
    ));
  }
}
