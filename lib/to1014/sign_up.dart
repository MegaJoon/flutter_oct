import 'package:flutter/material.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';

// https://dribbble.com/shots/7336038-Daily-UI-001-Sign-Up/attachments/249357?mode=media

class SignUp extends StatefulWidget {
  @override
  _SignUpState createState() => _SignUpState();
}

class _SignUpState extends State<SignUp> {
  String _image =
      "https://cdn.pixabay.com/photo/2016/07/27/01/27/basketball-1544366_960_720.jpg";

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Container(
        decoration: BoxDecoration(
            image:
                DecorationImage(image: NetworkImage(_image), fit: BoxFit.fill)),
        child: Center(
          child: Container(
            margin: EdgeInsets.only(top: 80),
            height: 530,
            width: 330,
//            color: Colors.black,
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.center,
              children: <Widget>[
                Text("AND\nONE\nAPP".toUpperCase(),
                    style: TextStyle(
                        height: 0.7,
                        color: Colors.white,
                        fontSize: 60.0,
                        fontWeight: FontWeight.bold)),
                SizedBox(height: 130),
                Text("Find local basketball players".toUpperCase(),
                    style: TextStyle(
                        height: 1.0,
                        wordSpacing: 6.0,
                        color: Colors.white,
                        fontSize: 14.0)),
                Text("To run together with".toUpperCase(),
                    style: TextStyle(
                        height: 1.0,
                        wordSpacing: 6.0,
                        color: Colors.white,
                        fontSize: 14.0)),
                Text("or play against".toUpperCase(),
                    style: TextStyle(
                        height: 1.0,
                        wordSpacing: 6.0,
                        color: Colors.white,
                        fontSize: 14.0)),
                SizedBox(height: 16),
                Container(
                  margin: EdgeInsets.only(bottom: 8.0),
                  padding: EdgeInsets.symmetric(horizontal: 16.0),
                  height: 44,
                  decoration: BoxDecoration(
                      color: Color.fromRGBO(76, 110, 166, 1),
                      borderRadius: BorderRadius.circular(8.0)),
                  child: Row(
                    children: <Widget>[
                      Text("Sign up with Facebook",
                          style:
                              TextStyle(color: Colors.white, fontSize: 16.0)),
                      Spacer(),
                      Icon(FontAwesomeIcons.facebookF,
                          size: 18.0, color: Colors.white)
                    ],
                  ),
                ),
                Container(
                  margin: EdgeInsets.only(bottom: 8.0),
                  padding: EdgeInsets.symmetric(horizontal: 16.0),
                  height: 44,
                  decoration: BoxDecoration(
                      color: Color.fromRGBO(81, 153, 245, 1),
                      borderRadius: BorderRadius.circular(8.0)),
                  child: Row(
                    children: <Widget>[
                      Text("Sign up with Google",
                          style:
                              TextStyle(color: Colors.white, fontSize: 16.0)),
                      Spacer(),
                      Icon(FontAwesomeIcons.google,
                          size: 18.0, color: Colors.white)
                    ],
                  ),
                ),
                Container(
                  height: 32,
                  child: Row(
                    children: <Widget>[
                      Flexible(
                          flex: 1,
                          child: Text("OR",
                              style: TextStyle(
                                  color: Colors.white, fontSize: 20.0))),
                      SizedBox(width: 16),
                      Flexible(
                          flex: 8,
                          child: Divider(color: Colors.white, height: 16.0)),
                    ],
                  ),
                ),
                Container(
                  margin: EdgeInsets.only(bottom: 8.0),
                  padding: EdgeInsets.symmetric(horizontal: 16.0),
                  height: 44,
                  decoration: BoxDecoration(
                      color: Colors.black,
                      borderRadius: BorderRadius.circular(8.0)),
                  child: Row(
                    children: <Widget>[
                      Text("Sign up with Email",
                          style:
                              TextStyle(color: Colors.white, fontSize: 16.0)),
                      Spacer(),
                      Icon(FontAwesomeIcons.mailBulk,
                          size: 18.0, color: Colors.white)
                    ],
                  ),
                ),
              ],
            ),
          ),
        ),
      ),
    );
  }
}
