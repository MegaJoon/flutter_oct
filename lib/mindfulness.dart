import 'package:flutter/material.dart';

// https://dribbble.com/shots/7424303-Mobile-App-Mindfulness

class Mindfulness extends StatefulWidget {
  @override
  _MindfulnessState createState() => _MindfulnessState();
}

class _MindfulnessState extends State<Mindfulness> {
  String _profileImage = "https://cdn.pixabay.com/photo/2019/09/30/14/51/squirrel-4515962__340.jpg";
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        leading: Container(
          height: 32.0,
          width: 32.0,
          decoration: BoxDecoration(
              shape: BoxShape.circle,
              image: DecorationImage(image: NetworkImage(_profileImage), fit: BoxFit.fill)),
        ),
        // tabbar
//        bottom: ,
      ),
    );
  }
}
