import 'package:flutter/material.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';

// https://dribbble.com/shots/7767063-Sign-up-page-Daily-UI-001/attachments/447898?mode=media

class Sign extends StatefulWidget {
  @override
  _SignState createState() => _SignState();
}

class _SignState extends State<Sign> {
  Color _color = Color.fromRGBO(64, 155, 140, 1);
  Color _color2 = Color.fromRGBO(65, 216, 128, 1);
  Color _color3 = Color.fromRGBO(63, 174, 125, 1);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Stack(
        children: <Widget>[
          // circle 1.
          Positioned(
            top: 50.0,
            left: -50.0,
            child: Container(
              height: 500.0,
              width: 500.0,
              decoration: BoxDecoration(
                shape: BoxShape.circle,
                color: _color.withOpacity(0.8),
              ),
            ),
          ),

          // circle 2.
          Positioned(
            bottom: -200.0,
            right: 110.0,
            child: Container(
              height: 500.0,
              width: 500.0,
              decoration: BoxDecoration(
                shape: BoxShape.circle,
                color: _color2.withOpacity(0.8),
              ),
            ),
          ),

          // circle 3.
          Positioned(
            bottom: -200.0,
            left: 110.0,
            child: Container(
              height: 500.0,
              width: 500.0,
              decoration: BoxDecoration(
                shape: BoxShape.circle,
                color: _color3.withOpacity(0.8),
              ),
            ),
          ),

          // column
          Positioned(
            top: 0,
            left: 0,
            right: 0,
            bottom: 16.0,
            child: SafeArea(
              top: true,
              left: true,
              right: true,
              child: Column(
                children: <Widget>[
                  Spacer(),
                  Text(
                    "Sign Up",
                    style: TextStyle(color: Colors.white, fontWeight: FontWeight.bold, fontSize: 56.0),
                  ),

                  SizedBox(height: 48.0,),

                  Container(
                    margin: EdgeInsets.all(16.0),
                    height: 32.0,
                    child: TextField(
                      decoration: InputDecoration(
                        hintText: "email",
                        hintStyle: TextStyle(color: Colors.white, fontSize: 24.0, fontWeight: FontWeight.w400),
                        enabledBorder: UnderlineInputBorder(
                          borderSide: BorderSide(
                            color: Colors.white,
                            width: 2.0,)
                        )
                      ),
                    ),
                  ),

                  Container(
                    margin: EdgeInsets.all(16.0),
                    height: 32.0,
                    child: TextField(
                      decoration: InputDecoration(
                          hintText: "password",
                          hintStyle: TextStyle(color: Colors.white, fontSize: 24.0, fontWeight: FontWeight.w400),
                          suffixIcon: Icon(FontAwesomeIcons.eyeSlash, size: 24.0, color: Colors.white,),
                          enabledBorder: UnderlineInputBorder(
                              borderSide: BorderSide(
                                color: Colors.white,
                                width: 2.0,)
                          )
                      ),
                    ),
                  ),

                  Container(
                    margin: EdgeInsets.all(16.0),
                    height: 32.0,
                    child: TextField(
                      decoration: InputDecoration(
                          hintText: "confirm password",
                          hintStyle: TextStyle(color: Colors.white, fontSize: 24.0, fontWeight: FontWeight.w400),
                          suffixIcon: Icon(FontAwesomeIcons.eyeSlash, size: 24.0, color: Colors.white,),
                          enabledBorder: UnderlineInputBorder(
                              borderSide: BorderSide(
                                color: Colors.white,
                                width: 2.0,)
                          )
                      ),
                    ),
                  ),

                  Container(
                    margin: EdgeInsets.symmetric(vertical: 16.0, horizontal: 48.0),
                    height: 48.0,
                    decoration: BoxDecoration(borderRadius: BorderRadius.circular(8.0), color: Colors.white,),
                    child: Center(child: Text("Create account", style: TextStyle(color: Colors.black, fontSize: 20.0, fontWeight: FontWeight.w600),)),
                  ),

                  Container(
                    margin: EdgeInsets.symmetric(vertical: 16.0, horizontal: 48.0),
                    height: 48.0,
                    decoration: BoxDecoration(borderRadius: BorderRadius.circular(8.0), color: Colors.indigo,),
                    child: Row(
                      mainAxisAlignment: MainAxisAlignment.center,
                      crossAxisAlignment: CrossAxisAlignment.center,
                      children: <Widget>[
                        Icon(FontAwesomeIcons.facebookF, size: 20.0, color: Colors.white,),
                        SizedBox(width: 8.0,),
                        Text("Continue with Facebook", style: TextStyle(color: Colors.white, fontSize: 20.0, fontWeight: FontWeight.w600),),
                      ],
                    ),
                  ),

                  SizedBox(height: 48.0,),
                  Text("Login", style: TextStyle(color: Colors.white, fontSize: 24.0, fontWeight: FontWeight.w600),)
                ],
              ),
            ),
          )
        ],
      ),
    );
  }
}
