import 'package:badges/badges.dart';
import 'package:flutter/material.dart';
import 'package:flutter_oct/1025/weapon_list.dart';

class AddPage extends StatefulWidget {
  int index;

  AddPage(this.index);

  @override
  _AddPageState createState() => _AddPageState();
}

class _AddPageState extends State<AddPage> {
  Color _color = Color.fromRGBO(136, 123, 121, 1);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Stack(
        children: <Widget>[
          // left container
          Positioned(
            top: 0,
            left: 0,
            right: 0,
            bottom: 0,
            child: Row(
              children: <Widget>[
                Flexible(
                  child: Hero(
                    tag: "weapon ${widget.index}",
                    child: Container(
                      padding: EdgeInsets.only(top: 64.0, bottom: 150.0),
                      decoration: BoxDecoration(
                          color: Colors.grey[200],
                      ),
                      child: Center(child: Image.asset(weapon[widget.index].image, fit: BoxFit.fitHeight,)),
                    ),
                  ),
                ),
                Flexible(
                  child: Container(
                    color: Colors.white,
                  ),
                ),
              ],
            ),
          ),

          // appbar
          Positioned(
            top: 0,
            left: 0,
            right: 0,
            child: SafeArea(
                top: true,
                left: true,
                right: true,
                child: Container(
                  margin: EdgeInsets.only(right: 24.0),
                  height: 32.0,
                  child: Row(
                    children: <Widget>[
                      IconButton(
                        icon: Icon(
                          Icons.arrow_back,
                          size: 28.0,
                          color: _color,
                        ),
                        onPressed: () {
                          setState(() {
                            Navigator.pop(context);
                          });
                        },
                      ),
                      Spacer(),
                      Badge(
                        child: Icon(
                          Icons.shopping_basket,
                          size: 28.0,
                          color: _color,
                        ),
                        padding: EdgeInsets.all(4.0),
                        showBadge: true,
                        position: BadgePosition.topRight(top: 5.0, right: 0.0),
                      ),
                    ],
                  ),
                )),
          ),

          // floating button
          Positioned(
            left: MediaQuery.of(context).size.width /2 - 75.0,
            right: MediaQuery.of(context).size.width /2 - 75.0,
            bottom: 32.0,
            child: Container(
              height: 48.0,
              width: 150.0,
              decoration: ShapeDecoration(shape: StadiumBorder(), color: _color),
              child: Row(
                crossAxisAlignment: CrossAxisAlignment.center,
                mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                children: <Widget>[
                  Icon(Icons.add, size: 16.0, color: Colors.white,),
                  Text("Add to chest", style: TextStyle(color: Colors.white, fontSize: 12.0, fontWeight: FontWeight.bold),),
                ],
              ),
            ),
          )
        ],
      ),
    );
  }
}
