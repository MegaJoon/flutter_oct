import 'package:flutter/material.dart';

// https://dribbble.com/shots/7849915/attachments/479260?mode=media

class SubjectApp extends StatefulWidget {
  @override
  _SubjectAppState createState() => _SubjectAppState();
}

class _SubjectAppState extends State<SubjectApp> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Column(
        children: <Widget>[
          // appbar
          SafeArea(
            top: true,
            left: true,
            right: true,
            child: Container(
              margin: EdgeInsets.symmetric(horizontal: 16.0),
              height: 60.0,
              child: Row(
                children: <Widget>[
                  Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: <Widget>[
                      Text("Subject", style: TextStyle(color: Colors.black, fontSize: 32.0, fontWeight: FontWeight.w600),),
                      RichText(text: TextSpan(children: [
                        TextSpan(text: "Today's English porgress", style: TextStyle(color: Colors.grey, fontSize: 12.0, fontWeight: FontWeight.w600)),
                        TextSpan(text: "15 min", style: TextStyle(color: Colors.teal, fontSize: 14.0, fontWeight: FontWeight.w600))
                      ]),)
                    ],
                  ),
                  Spacer(),
                  Icon(Icons.border_color, color: Colors.black, size: 20.0,),
                ],
              ),
            ),
          )
        ],
      ),
    );
  }
}
