import 'package:flutter/material.dart';
import 'package:badges/badges.dart';

import 'bottom_tab.dart';

// https://dribbble.com/shots/7807406-Knights-shop/attachments/463368?mode=media

class KnightsApp extends StatefulWidget {
  @override
  _KnightsAppState createState() => _KnightsAppState();
}

class _KnightsAppState extends State<KnightsApp> {
  List<Widget> pages;

  Color _color = Color.fromRGBO(136, 123, 121, 1);

  int currentIndex = 1;


  void _onTab(int index) {
    setState(() {
      currentIndex = index;
    });
  }

  @override
  Widget build(BuildContext context) {
    _definePages();
    return Scaffold(
      body: Stack(
        children: <Widget>[
          // main
          Positioned(
            top: 0,
            left: 24.0,
            right: 0,
            bottom: 64.0,
            child: pages[currentIndex],
          ),

          // bottombar
          Positioned(
            bottom: 0,
            left: 0,
            right: 0,
            child: Container(
              margin: EdgeInsets.symmetric(horizontal: 24.0),
              height: 64.0,
//              color: Colors.amber,
              child: Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: <Widget>[
                  BottomTab(
                    iconData: Icons.home,
                    text: "Home",
                    isSelected: currentIndex == 0,
                    onTab: () {
                      _onTab(0);
                    },
                  ),
                  BottomTab(
                    iconData: Icons.menu,
                    text: "Shop",
                    isSelected: currentIndex == 1,
                    onTab: () {
                      _onTab(1);
                    },
                  ),
                  BottomTab(
                    iconData: Icons.bookmark_border,
                    text: "Mark",
                    isSelected: currentIndex == 2,
                    onTab: () {
                      _onTab(2);
                    },
                  ),
                  BottomTab(
                    iconData: Icons.person_outline,
                    text: "User",
                    isSelected: currentIndex == 3,
                    onTab: () {
                      _onTab(3);
                    },
                  ),
                ],
              ),
            ),
          )
        ],
      ),
    );
  }

  _definePages() {
    pages = [
      Placeholder(
        color: Colors.red,
      ),

      // main pages
      Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: <Widget>[
          // appbar
          SafeArea(
            top: true,
            left: true,
            right: true,
            child: Container(
              margin: EdgeInsets.only(right: 24.0, bottom: 16.0),
              height: 32.0,
              child: Row(
                children: <Widget>[
                  Icon(
                    Icons.menu,
                    size: 28.0,
                    color: _color,
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
            ),
          ),

          // title
          Text(
            "Knights shop",
            style: TextStyle(
                color: _color, fontSize: 40.0, fontWeight: FontWeight.bold),
          ),

          // listview
          Container(
            margin: EdgeInsets.only(top: 16.0),
            height: 60.0,
            child: ListView(
              scrollDirection: Axis.horizontal,
              padding: EdgeInsets.zero,
              shrinkWrap: true,
              physics: BouncingScrollPhysics(),
              children: <Widget>[
                Container(
                  margin: EdgeInsets.only(right: 36.0),
                  width: 60.0,
                  decoration: BoxDecoration(borderRadius: BorderRadius.circular(12.0),
                    color: _color,
                  boxShadow: [BoxShadow(color: Colors.black12, spreadRadius: 2, blurRadius: 4)]),
                  child: Center(child: Icon(Icons.favorite_border, size: 32.0, color: Colors.white,)),
                ),
                Container(
                  margin: EdgeInsets.only(right: 36.0),
                  width: 60.0,
                  decoration: BoxDecoration(borderRadius: BorderRadius.circular(12.0),
                      color: Colors.grey[200],
//                      boxShadow: [BoxShadow(color: Colors.black12, spreadRadius: 2, blurRadius: 4)]
                  ),
                  child: Center(child: Icon(Icons.favorite_border, size: 32.0, color: _color,)),
                ),
                Container(
                  margin: EdgeInsets.only(right: 36.0),
                  width: 60.0,
                  decoration: BoxDecoration(borderRadius: BorderRadius.circular(12.0),
                      color: Colors.grey[200],
//                      boxShadow: [BoxShadow(color: Colors.black12, spreadRadius: 2, blurRadius: 4)]
                  ),
                  child: Center(child: Icon(Icons.favorite_border, size: 32.0, color: _color,)),
                ),
                Container(
                  margin: EdgeInsets.only(right: 36.0),
                  width: 60.0,
                  decoration: BoxDecoration(borderRadius: BorderRadius.circular(12.0),
                      color: Colors.grey[200],
//                      boxShadow: [BoxShadow(color: Colors.black12, spreadRadius: 2, blurRadius: 4)]
                  ),
                  child: Center(child: Icon(Icons.favorite_border, size: 32.0, color: _color,)),
                ),
              ],
            ),
          ),

          
        ],
      ),
      Placeholder(
        color: Colors.black,
      ),
      Placeholder(
        color: Colors.indigo,
      ),
    ];
  }
}


