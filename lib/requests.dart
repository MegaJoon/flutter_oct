import 'package:flutter/material.dart';
import 'package:badges/badges.dart';

// https://dribbble.com/shots/7412094-Social-Sports-App-Requests/attachments/283325?mode=media

class Requests extends StatefulWidget {
  @override
  _RequestsState createState() => _RequestsState();
}

class _RequestsState extends State<Requests> with TickerProviderStateMixin {
  Color _color = Color.fromRGBO(3, 184, 118, 1);
  Color _badgeColor = Color.fromRGBO(208, 1, 28, 1);
  TabController _tabController;

  @override
  void initState() {
    // TODO: implement initState
    super.initState();
    _tabController = TabController(length: 2, vsync: this);
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      // appbar
      appBar: AppBar(
        backgroundColor: _color,
        leading: Icon(
          Icons.menu,
          size: 28.0,
          color: Colors.white,
        ),
//        centerTitle: true,
        title: Text(
          "Requests",
          style: TextStyle(color: Colors.white, fontSize: 32.0, fontWeight: FontWeight.bold),
        ),
        actions: <Widget>[
          Container(
            width: 80,
            child: Row(
              mainAxisAlignment: MainAxisAlignment.start,
              children: <Widget>[
                Icon(
                  Icons.search,
                  size: 28.0,
                  color: Colors.white,
                ),
                SizedBox(width: 8.0),
                Badge(
                  showBadge: true,
                  badgeColor: _badgeColor,
                  badgeContent: Text(
                    "3",
                    style: TextStyle(color: Colors.white, fontSize: 12.0),
                  ),
                  position: BadgePosition.topRight(top: -5, right: -5),
                  child: Icon(
                    Icons.notifications,
                    size: 28.0,
                    color: Colors.white,
                  ),
                ),
              ],
            ),
          ),
        ],
        bottom: PreferredSize(
          preferredSize: Size.fromHeight(48.0),
          child: Container(
            padding: EdgeInsets.all(4.0),
            margin: EdgeInsets.only(top: 8.0, bottom: 8.0, left: 16.0, right: 16.0),
            height: 40.0,
            decoration: ShapeDecoration(shape: StadiumBorder(), color: Colors.white),
            child: TabBar(
                controller: _tabController,
                unselectedLabelStyle: TextStyle(fontWeight: FontWeight.bold, fontSize: 16.0),
                unselectedLabelColor: Colors.black87,
                labelStyle: TextStyle(fontWeight: FontWeight.bold, fontSize: 16.0),
                labelColor: Colors.white,
//                isScrollable: true,
                indicator: new ShapeDecoration(shape: StadiumBorder(), color: _color),
                indicatorPadding: EdgeInsets.all(16.0),
//                indicatorColor: _color,
                tabs: [
                  Tab(
                    text: "Pending Requests",
                  ),
                  Tab(
                    text: "Previous Requests",
                  ),
                ]),
          ),
        ),
      ),
      // tabbar view
      body: TabBarView(
        controller: _tabController,
        children: <Widget>[
          Placeholder(),
          Placeholder(),
        ],
        //
      ),
    );
  }
}
