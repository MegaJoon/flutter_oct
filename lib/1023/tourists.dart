import 'package:flutter/material.dart';

import 'myTab.dart';

// https://dribbble.com/shots/7710168-Tourists-Mobile-App/attachments/431983?mode=media

class Tourists extends StatefulWidget {
  @override
  _TouristsState createState() => _TouristsState();
}

class _TouristsState extends State<Tourists> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Container(
        child: Row(
          children: <Widget>[
            Flexible(flex: 2, child: Stack(
              children: <Widget>[
                Column(
                  children: <Widget>[
                    MyTab(),
                  ],
                )
              ],
            ),),
            Flexible(flex: 8, child: Placeholder(),),
          ],
        ),
      ),
    );
  }
}
