import 'package:flutter/material.dart';
import 'package:flutter_oct/1026/dating_app.dart';

import 'itemlist.dart';

class SecondPage extends StatefulWidget {
  final int index;  // tag

  SecondPage(this.index);

  @override
  _SecondPageState createState() => _SecondPageState();
}

class _SecondPageState extends State<SecondPage> {
  @override
  Widget build(BuildContext context) {
    final screenHeight = MediaQuery.of(context).size.height;

    return Scaffold(
      body: Stack(
        children: <Widget>[
          Positioned(
            top: 0,
            left: 0,
            right: 0,
            bottom: screenHeight * 0.15,
            child: Hero(
//              tag: "$index",
              tag: "${widget.index}",
              child: Container(
                padding: EdgeInsets.all(16.0),
                decoration: BoxDecoration(
                  borderRadius: BorderRadius.only(
                      bottomLeft: Radius.circular(48.0),
                      bottomRight: Radius.circular(48.0)),
                  image: DecorationImage(
                      image: NetworkImage(itemList[widget.index].image),
                      fit: BoxFit.cover),
                ),
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  mainAxisAlignment: MainAxisAlignment.end,
                  children: <Widget>[
                    Text(
                      "${itemList[widget.index].name}, ${itemList[widget.index].age}",
                      style: TextStyle(
                        color: Colors.white,
                        fontSize: 48.0,
                        fontWeight: FontWeight.w400,
                        fontFamily: "Bannie",
                      ),
                    ),
                    Text(
                      itemList[widget.index].job,
                      style: TextStyle(
                        color: Colors.grey,
                        fontSize: 20.0,
                        fontWeight: FontWeight.w400,
                        fontFamily: "Bannie",
                      ),
                    ),
                  ],
                ),
              ),
            ),
          ),
          Positioned(
            top: 0,
            left: 16.0,
            right: 16.0,
            child: SafeArea(
              top: true,
              left: true,
              right: true,
              child: Container(
                height: 32.0,
                child: Row(
                  children: <Widget>[
                    Text(
                      "Melbourne",
                      style: TextStyle(
                          color: Colors.white,
                          fontSize: 28.0,
                          fontFamily: "Bannie",
                          fontWeight: FontWeight.w600),
                    ),
                    Spacer(),
                    Icon(
                      Icons.filter_list,
                      size: 28.0,
                      color: Colors.black,
                    )
                  ],
                ),
              ),
            ),
          ),
          Positioned(
            right: 48.0,
            bottom: screenHeight * 0.15 - 32.0,
            child: Container(
              height: 64.0,
              width: 64.0,
              decoration: BoxDecoration(
                  shape: BoxShape.circle,
                  color: Colors.pinkAccent.withOpacity(0.8)),
              child: Center(
                  child: Icon(
                Icons.favorite,
                color: Colors.white,
                size: 28.0,
              )),
            ),
          ),
          Positioned(
            bottom: 16.0,
            left: 16.0,
            right: 16.0,
            child: Row(
              crossAxisAlignment: CrossAxisAlignment.center,
              children: <Widget>[
                Container(
                  margin: EdgeInsets.only(right: 16.0),
                  height: 48.0,
                  width: 48.0,
                  decoration: BoxDecoration(
                      shape: BoxShape.circle, color: Colors.black),
                  child: Icon(
                    Icons.star,
                    color: Colors.white,
                    size: 20.0,
                  ),
                ),
                Container(
                  height: 48.0,
                  width: 48.0,
                  decoration: BoxDecoration(
                      shape: BoxShape.circle,
                      color: Colors.white,
                      border: Border.all(color: Colors.grey, width: 1.0)),

                  // close icon clicked => Navigator.pop!!
                  child: IconButton(
                    icon: Icon(
                      Icons.close,
                      color: Colors.grey,
                      size: 20.0,
                    ),
                    onPressed: () {
                      setState(() {
                        Navigator.pop(context);
                      });
                    },
                  ),
                ),
                Spacer(),
                Text(
                  itemList[widget.index].distance,
                  style: TextStyle(
                    color: Colors.black,
                    fontSize: 20.0,
                    fontWeight: FontWeight.w400,
                    fontFamily: "Bannie",
                  ),
                ),
                Container(
                  margin: EdgeInsets.only(left: 8.0, right: 8.0, bottom: 4.0),
                  height: 4.0,
                  width: 4.0,
                  decoration: BoxDecoration(
                      shape: BoxShape.circle,
                      color: Colors.pinkAccent.withOpacity(0.5)),
                ),
                Text(
                  "87%",
                  style: TextStyle(
                    color: Colors.pinkAccent,
                    fontSize: 16.0,
                    fontWeight: FontWeight.w400,
                    fontFamily: "Bannie",
                  ),
                ),
              ],
            ),
          )
        ],
      ),
    );
  }
}
