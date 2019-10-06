import 'package:flutter/material.dart';

import 'mydottedline.dart';

// https://dribbble.com/shots/7355190-Receipt-App/attachments/254360?mode=media

class ReceiptApp extends StatefulWidget {
  @override
  _ReceiptAppState createState() => _ReceiptAppState();
}

class _ReceiptAppState extends State<ReceiptApp> {
  Color _color = Color.fromRGBO(255, 185, 105, 1);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Row(
        children: <Widget>[
          // dotted Line
          Flexible(
            flex: 1,
            child: Stack(
              children: <Widget>[
                Positioned(
                  top: 0,
                  bottom: 0,
                  left: 25,
                  child: MyDottedline(),
                ),
                Positioned(
                  top: 200,
                  left: 0,
                  right: 0,
                  child: Container(
                    height: 60,
                    color: Colors.white,
                    child: Column(
                      mainAxisAlignment: MainAxisAlignment.center,
                      children: <Widget>[
                        Text(
                          "04",
                          style: TextStyle(color: _color, fontSize: 32.0, fontWeight: FontWeight.bold),
                        ),
                        Text(
                          "Nov",
                          style: TextStyle(color: _color, fontSize: 16.0, fontWeight: FontWeight.bold),
                        ),
                      ],
                    ),
                  ),
                )
              ],
            ),
          ),
          // Main Column
          Flexible(
              flex: 7,
              child: Container(
//              margin: EdgeInsets.only(left: 16.0),
                color: Colors.white,
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: <Widget>[
                    SafeArea(
                      top: true,
                      left: true,
                      right: true,
                      child: Container(
                        height: 40,
                        child: Row(
                          children: <Widget>[
                            Icon(Icons.menu, size: 24.0, color: Colors.black),
                            Spacer(),
                            Icon(Icons.save, size: 24.0, color: Colors.black),
                          ],
                        ),
                      ),
                    ),
                    RichText(
                      text: TextSpan(children: [
                        TextSpan(text: "Hello,\n", style: TextStyle(color: Colors.black, fontSize: 40.0, fontWeight: FontWeight.bold)),
                        TextSpan(text: "Christian", style: TextStyle(color: Colors.black, fontSize: 40.0)),
                      ]),
                    ),
                    SizedBox(height: 16.0),
                    Text(
                      "You have 3 receipts",
                      style: TextStyle(color: Colors.black, fontSize: 16.0, fontWeight: FontWeight.bold),
                    ),
                    // listview
                    Container(
                      height: 420,
                      color: Colors.blue,
                    ),
                    Container(
                      margin: EdgeInsets.all(8.0),
                      height: 48,
                      width: 48,
                      decoration: BoxDecoration(
                        shape: BoxShape.circle,
                        color: _color,
                        boxShadow: [BoxShadow(color: _color.withOpacity(0.5), spreadRadius: 2, blurRadius: 4)]
                      ),
                      child: Icon(Icons.add, size: 40.0, color: Colors.black),
                    )
                  ],
                ),
              )),
        ],
      ),
    );
  }
}
