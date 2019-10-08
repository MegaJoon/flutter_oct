import 'package:flutter/material.dart';

// https://dribbble.com/shots/7345292-DailyUi-Boarding-pass

class BoardingPass extends StatefulWidget {
  @override
  _BoardingPassState createState() => _BoardingPassState();
}

class _BoardingPassState extends State<BoardingPass> {
  String _image = "https://cdn.pixabay.com/photo/2019/03/19/14/41/bridge-4065865__340.jpg";

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Container(
        width: double.maxFinite,
        decoration:
            BoxDecoration(image: DecorationImage(image: NetworkImage(_image), fit: BoxFit.fill)),
        child: Column(
          children: <Widget>[
            Text("Airasis", style: TextStyle(color: Colors.white, fontWeight: FontWeight.bold, fontSize: 40.0),)
          ],
        ),
      ),
    );
  }
}
