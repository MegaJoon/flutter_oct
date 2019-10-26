import 'package:flutter/material.dart';

// https://dribbble.com/shots/7821431-Dating-App/attachments/468279?mode=media

class DatingApp extends StatefulWidget {
  @override
  _DatingAppState createState() => _DatingAppState();
}

class _DatingAppState extends State<DatingApp> {
  String title = "Matches";
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: CustomScrollView(
        slivers: <Widget>[
          // abbbar
          SliverAppBar(
            backgroundColor: Colors.white,
            actions: <Widget>[
              Icon(Icons.filter_list, size: 28.0, color: Colors.black,),
            ],
            bottom: PreferredSize(
                child: Text(title, style: TextStyle(color: Colors.black, fontSize: 28.0, fontWeight: FontWeight.bold, fontFamily: "Bannie"),),
                preferredSize: Size.fromHeight(8.0)),
          )
        ],
      ),

    );
  }
}
