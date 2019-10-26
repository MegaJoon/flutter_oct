import 'package:flutter/material.dart';
import 'package:flutter_oct/1026/secondpage.dart';

import 'itemlist.dart';
import 'myColumn.dart';

// https://dribbble.com/shots/7821431-Dating-App/attachments/468279?mode=media

class DatingApp extends StatefulWidget {
  @override
  _DatingAppState createState() => _DatingAppState();
}

class _DatingAppState extends State<DatingApp> {
  String title = "Matches";

  // icon clicked event
  _onClickIcon(int _selectedIndex) {
    setState(() {
      // clicked icon index : _selectedIndex
      // change state
      itemList[_selectedIndex].isSelected =
          !itemList[_selectedIndex].isSelected;
    });
  }

  // Navigator
  _onTab(int selectedIndex) {
    setState(() {
      // selectedIndex == hero tag
      Navigator.push(context,
          MaterialPageRoute(builder: (context) => SecondPage(selectedIndex)));
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: CustomScrollView(
        shrinkWrap: true,
        scrollDirection: Axis.vertical,
        slivers: <Widget>[
          // abbbar
          SliverAppBar(
            backgroundColor: Colors.white,
            actions: <Widget>[
              Icon(
                Icons.filter_list,
                size: 28.0,
                color: Colors.black,
              ),
            ],
            bottom: PreferredSize(
                child: Text(
                  title,
                  style: TextStyle(
                      color: Colors.black,
                      fontSize: 28.0,
                      fontWeight: FontWeight.bold,
                      fontFamily: "Bannie"),
                ),
                preferredSize: Size.fromHeight(8.0)),
          ),

          // sizedbox: Spacer
          SliverToBoxAdapter(
            child: SizedBox(
              height: 16.0,
            ),
          ),

          // main
          SliverGrid(
            gridDelegate: SliverGridDelegateWithFixedCrossAxisCount(
              crossAxisCount: 2,
              mainAxisSpacing: 16.0,
              crossAxisSpacing: 16.0,
              childAspectRatio: 1.2 / 1.6,
            ),
            delegate:
                SliverChildBuilderDelegate((BuildContext context, int index) {
              return listItem(index);
            },
                    childCount: itemList.length),
          ),
        ],
      ),
    );
  }

  // grid view list
  listItem(int idx) {
    int num = idx % 4;
    double marginHorizontal = 16.0;
    double marginY = 64.0;
    double offsetY = -64.0 * (idx ~/ 4);
    double offsetY2 = -64.0 * (1 + idx ~/ 4);

    if (idx < itemList.length) {
      switch (num) {
        case 0:
          return Transform.translate(
            offset: Offset(0.0, offsetY),
            child: Container(
              margin: EdgeInsets.only(left: marginHorizontal),
              child: MyColumn(idx, () {
                _onTab(idx);
              }, () {
                _onClickIcon(idx);
              }),
            ),
          );

        case 1:
          return Transform.translate(
            offset: Offset(0.0, offsetY),
            child: Container(
              margin: EdgeInsets.only(right: marginHorizontal, bottom: marginY),
              child: MyColumn(idx, () {
                _onTab(idx);
              }, () {
                _onClickIcon(idx);
              }),
            ),
          );

        case 2:
          return Transform.translate(
            offset: Offset(0.0, offsetY),
            child: Container(
              margin: EdgeInsets.only(left: marginHorizontal, bottom: marginY),
              child: MyColumn(idx, () {
                _onTab(idx);
              }, () {
                _onClickIcon(idx);
              }),
            ),
          );

        case 3:
          return Transform.translate(
            offset: Offset(0.0, offsetY2),
            child: Container(
              margin: EdgeInsets.only(right: marginHorizontal),
              child: MyColumn(idx, () {
                _onTab(idx);
              }, () {
                _onClickIcon(idx);
              }),
            ),
          );
      }
    }
  }
}
