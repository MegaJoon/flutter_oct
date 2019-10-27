import 'package:flutter/material.dart';

// https://dribbble.com/shots/7822622-Foodie-Food-review-app/attachments/469048?mode=media

class FoodieApp extends StatefulWidget {
  @override
  _FoodieAppState createState() => _FoodieAppState();
}

class _FoodieAppState extends State<FoodieApp> {
  String title = "Foodie";
  Color _color = Color.fromRGBO(31, 48, 99, 1);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: CustomScrollView(
        slivers: <Widget>[
          // appbar
          SliverAppBar(
            backgroundColor: Colors.white,
            leading: IconButton(
              icon: Icon(Icons.menu, size: 28.0, color: _color,),
              onPressed: (){},),
            centerTitle: true,
            title: Text(title,
              style: TextStyle(color: _color, fontSize: 28.0, fontWeight: FontWeight.bold,),
            ),
            actions: <Widget>[
              IconButton(
                icon: Icon(Icons.filter_list, size: 28.0, color: _color,),
                onPressed: (){},
              ),
            ],
          ),
        ],
      ),
    );
  }
}
