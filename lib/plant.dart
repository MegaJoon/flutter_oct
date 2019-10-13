import 'package:flutter/material.dart';

// https://dribbble.com/shots/7469237-Forest-Restoration-App-Concept-Plant-A-Billion-Trees/attachments/308908?mode=media

class Plant extends StatefulWidget {
  @override
  _PlantState createState() => _PlantState();
}

class _PlantState extends State<Plant> {
  Color _lightColor = Color.fromRGBO(161, 191, 160, 1);
  Color _color = Color.fromRGBO(102, 137, 100, 1);
  Color _highlightColor = Color.fromRGBO(43, 103, 42, 1);

  int _currentIndex = 0;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Container(
        child: Placeholder(),
      ),
      bottomNavigationBar: BottomAppBar(
        child: Container(
          padding: EdgeInsets.symmetric(horizontal: 24.0),
          height: 54.0,
          color: _color,
          child: Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: <Widget>[
              Container(
                height: 36.0,
                width: 90.0,
                decoration: ShapeDecoration(shape: StadiumBorder(), color: _highlightColor),
                child: Center(
                  child: Row(
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: <Widget>[
                      Icon(Icons.home, size: 24.0, color: Colors.white,),
                      Text("Home", style: TextStyle(color: Colors.white, fontSize: 14.0),)
                    ],
                  ),
                ),
              ),
              Icon(Icons.swap_horizontal_circle, size: 24.0, color: Colors.white,),
              Container(
                height: 36.0,
                width: 90.0,
                child: Center(
                  child: Icon(Icons.person_outline, size: 24.0, color: Colors.white,),
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
