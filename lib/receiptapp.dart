import 'package:flutter/material.dart';

import 'mydottedline.dart';

// https://dribbble.com/shots/7355190-Receipt-App/attachments/254360?mode=media

class ReceiptApp extends StatefulWidget {
  @override
  _ReceiptAppState createState() => _ReceiptAppState();
}

class _ReceiptAppState extends State<ReceiptApp> {
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
                  left: 20,
                  child: MyDottedline(),
                )
              ],
            ),
          ),

          // Main Column
          Flexible(
            flex: 8,
            child: Placeholder(),
          ),
        ],
      ),
    );
  }
}
