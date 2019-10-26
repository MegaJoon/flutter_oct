import 'package:flutter/material.dart';
import 'package:flutter_oct/1026/secondpage.dart';

import 'myColumn.dart';

// https://dribbble.com/shots/7821431-Dating-App/attachments/468279?mode=media

class DatingApp extends StatefulWidget {
  @override
  _DatingAppState createState() => _DatingAppState();
}

class _DatingAppState extends State<DatingApp> {
  String title = "Matches";

  _onTab(int selectedIndex){
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: CustomScrollView(
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

          // sizedbox
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
            delegate: SliverChildBuilderDelegate(
                (BuildContext context, int index){
                  return listItem(index);
                }
            ),
          ),
        ],
      ),
    );
  }

  Widget listItem(int idx){
    int num = idx %4;
    double marginHorizontal = 16.0;
    double marginY = 64.0;
    double offsetY = -64.0 * (idx ~/4);
    double offsetY2 = -64.0 * (1 + idx ~/4);

    switch(num){
      case 0:
        return Transform.translate(
          offset: Offset(0.0, offsetY),
          child: Container(
            margin: EdgeInsets.only(left: marginHorizontal),
            child: MyColumn(idx, _onTab(idx)),
          ),
        );

      case 1:
        return Transform.translate(
          offset: Offset(0.0, offsetY),
          child: Container(
            margin: EdgeInsets.only(right: marginHorizontal, bottom: marginY),
            child: MyColumn(idx, _onTab(idx)),
          ),
        );

      case 2:
        return Transform.translate(
          offset: Offset(0.0, offsetY),
          child: Container(
            margin: EdgeInsets.only(left: marginHorizontal, bottom: marginY),
            child: MyColumn(idx, _onTab(idx)),
          ),
        );

      case 3:
        return Transform.translate(
          offset: Offset(0.0, offsetY2),
          child: Container(
            margin: EdgeInsets.only(right: marginHorizontal),
            child: MyColumn(idx, _onTab(idx)),
          ),
        );
    }
  }
}

class ItemList{
  String image;
  String name;
  String distance;

  ItemList({this.image, this.name, this.distance});
}

List<ItemList> itemList = [
  ItemList(image: "https://cdn.pixabay.com/photo/2019/07/03/19/50/capricorn-4315367__340.jpg", name: "Olivia", distance: "6 KM AWAY".toUpperCase(),),
  ItemList(image: "https://cdn.pixabay.com/photo/2019/10/11/12/33/make-up-4541782__340.jpg", name: "Adrienne", distance: "6 KM AWAY".toUpperCase(),),
  ItemList(image: "https://cdn.pixabay.com/photo/2015/09/26/13/25/halloween-959049__340.jpg", name: "Barbara", distance: "6 KM AWAY".toUpperCase(),),
  ItemList(image: "https://cdn.pixabay.com/photo/2019/10/24/00/43/dock-4573120__340.jpg", name: "Charlotte", distance: "6 KM AWAY".toUpperCase(),),
  ItemList(image: "https://cdn.pixabay.com/photo/2019/07/03/19/50/capricorn-4315367__340.jpg", name: "Olivia", distance: "6 KM AWAY".toUpperCase(),),
  ItemList(image: "https://cdn.pixabay.com/photo/2019/10/11/12/33/make-up-4541782__340.jpg", name: "Adrienne", distance: "6 KM AWAY".toUpperCase(),),
  ItemList(image: "https://cdn.pixabay.com/photo/2015/09/26/13/25/halloween-959049__340.jpg", name: "Barbara", distance: "6 KM AWAY".toUpperCase(),),
  ItemList(image: "https://cdn.pixabay.com/photo/2019/10/24/00/43/dock-4573120__340.jpg", name: "Charlotte", distance: "6 KM AWAY".toUpperCase(),),
];
















