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
  Color _closeColor = Color.fromRGBO(167, 54, 10, 1);
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
          // pending requests
          Container(
            height: double.infinity,
            // listview
            child: ListView(
              padding: EdgeInsets.only(top: 24.0),
              children: <Widget>[
                Container(
                  margin: EdgeInsets.only(bottom: 16.0, left: 16.0, right: 16.0),
                  height: 150.0,
                  decoration: BoxDecoration(
                      borderRadius: BorderRadius.circular(8.0),
                      color: Colors.white,
                      boxShadow: [
                        BoxShadow(
                            color: Colors.black.withOpacity(0.1), spreadRadius: 2, blurRadius: 4)
                      ]),
                  child: Column(
                    children: <Widget>[
                      Flexible(
                        flex: 5,
                        child: Padding(
                          padding: const EdgeInsets.only(top: 8.0, left: 16.0, right: 16.0),
                          child: Column(
                            mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                            children: <Widget>[
                              Row(
                                children: <Widget>[
                                  Container(
                                    margin: EdgeInsets.only(right: 8.0),
                                    height: 40.0,
                                    width: 40.0,
                                    decoration: BoxDecoration(
                                        shape: BoxShape.circle,
                                        border: Border.all(color: Colors.white, width: 1.0),
                                        image: DecorationImage(
                                            image: NetworkImage(
                                                "https://cdn.pixabay.com/photo/2016/11/21/14/53/adult-1845814__340.jpg"),
                                            fit: BoxFit.fill)),
                                  ),
                                  Column(
                                    crossAxisAlignment: CrossAxisAlignment.start,
                                    mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                                    children: <Widget>[
                                      Text(
                                        "Phet Putrie",
                                        style: TextStyle(
                                            color: Colors.black,
                                            fontSize: 18.0,
                                            fontWeight: FontWeight.bold),
                                      ),
                                      Text(
                                        "132 Points",
                                        style: TextStyle(
                                            color: Colors.grey,
                                            fontSize: 14.0,
                                            fontWeight: FontWeight.w600),
                                      ),
                                    ],
                                  )
                                ],
                              ),
                              RichText(
                                text: TextSpan(children: [
                                  TextSpan(
                                      text: "Phet requested to join ",
                                      style: TextStyle(
                                          color: Colors.grey[700],
                                          fontSize: 15.0,
                                          fontWeight: FontWeight.w600)),
                                  TextSpan(
                                      text: "your team ",
                                      style: TextStyle(
                                          color: Colors.teal,
                                          fontSize: 15.0,
                                          fontWeight: FontWeight.w600)),
                                  TextSpan(
                                      text: "(Abral Shar3 9),\n",
                                      style: TextStyle(
                                          color: Colors.black,
                                          fontSize: 15.0,
                                          fontWeight: FontWeight.w600)),
                                  TextSpan(
                                      text: "Do you want to accept him?",
                                      style: TextStyle(
                                          color: Colors.grey[700],
                                          fontSize: 15.0,
                                          fontWeight: FontWeight.w600)),
                                ]),
                              )
                            ],
                          ),
                        ),
                      ),
                      Divider(),
                      Flexible(
                        flex: 2,
                        child: Row(
                          mainAxisAlignment: MainAxisAlignment.center,
                          crossAxisAlignment: CrossAxisAlignment.center,
                          children: <Widget>[
                            Flexible(
                              child: Row(
                                mainAxisAlignment: MainAxisAlignment.center,
                                crossAxisAlignment: CrossAxisAlignment.center,
                                children: <Widget>[
                                  Icon(
                                    Icons.check_circle,
                                    color: _color,
                                    size: 16.0,
                                  ),
                                  Text(
                                    "Accept",
                                    style: TextStyle(
                                        color: _color, fontSize: 16.0, fontWeight: FontWeight.bold),
                                  ),
                                ],
                              ),
                            ),
                            VerticalDivider(),
                            Flexible(
                              child: Row(
                                mainAxisAlignment: MainAxisAlignment.center,
                                crossAxisAlignment: CrossAxisAlignment.center,
                                children: <Widget>[
                                  Icon(
                                    Icons.remove_circle,
                                    color: _closeColor,
                                    size: 16.0,
                                  ),
                                  Text(
                                    "Reject",
                                    style: TextStyle(
                                        color: _closeColor, fontSize: 16.0, fontWeight: FontWeight.bold),
                                  ),
                                ],
                              ),
                            )
                          ],
                        ),
                      ),
                    ],
                  ),
                ),
                Container(
                  margin: EdgeInsets.only(bottom: 16.0, left: 16.0, right: 16.0),
                  height: 150.0,
                  decoration: BoxDecoration(
                      borderRadius: BorderRadius.circular(8.0),
                      color: Colors.white,
                      boxShadow: [
                        BoxShadow(
                            color: Colors.black.withOpacity(0.1), spreadRadius: 2, blurRadius: 4)
                      ]),
                  child: Column(
                    children: <Widget>[
                      Flexible(
                        flex: 5,
                        child: Padding(
                          padding: const EdgeInsets.only(top: 8.0, left: 16.0, right: 16.0),
                          child: Column(
                            mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                            children: <Widget>[
                              Row(
                                children: <Widget>[
                                  Stack(
                                    children: <Widget>[
                                      Container(
                                        margin: EdgeInsets.only(right: 8.0),
                                        height: 40.0,
                                        width: 40.0,
                                        decoration: BoxDecoration(
                                            shape: BoxShape.circle,
                                            border: Border.all(color: Colors.white, width: 1.0),
                                            image: DecorationImage(
                                                image: NetworkImage(
                                                    "https://cdn.pixabay.com/photo/2012/12/14/15/23/jaguar-70026__340.jpg"),
                                                fit: BoxFit.fill)),
                                      ),
                                      Positioned(
                                        top: 0, right: -5,
                                        child: Container(
                                          margin: EdgeInsets.only(right: 8.0),
                                          height: 24.0,
                                          width: 24.0,
                                          decoration: BoxDecoration(
                                              shape: BoxShape.circle,
                                              border: Border.all(color: Colors.white, width: 1.0),
                                              image: DecorationImage(
                                                  image: NetworkImage(
                                                      "https://cdn.pixabay.com/photo/2016/11/22/21/42/adult-1850703__340.jpg"),
                                                  fit: BoxFit.fill)),
                                        ),
                                      ),
                                      Positioned(
                                        bottom: 0, right: -5,
                                        child: Container(
                                          margin: EdgeInsets.only(right: 8.0),
                                          height: 24.0,
                                          width: 24.0,
                                          decoration: BoxDecoration(
                                              shape: BoxShape.circle,
                                              border: Border.all(color: Colors.white, width: 1.0),
                                              image: DecorationImage(
                                                  image: NetworkImage(
                                                      "https://cdn.pixabay.com/photo/2015/09/02/12/51/woman-918707__340.jpg"),
                                                  fit: BoxFit.fill)),
                                        ),
                                      )
                                    ],
                                  ),
                                  Column(
                                    crossAxisAlignment: CrossAxisAlignment.start,
                                    mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                                    children: <Widget>[
                                      Row(
                                        children: <Widget>[
                                          Text(
                                            "Abtal Shar3 9 Team",
                                            style: TextStyle(
                                                color: Colors.black,
                                                fontSize: 18.0,
                                                fontWeight: FontWeight.bold),
                                          ),
                                          Icon(Icons.lock, size: 16.0, color: Colors.grey[500],)
                                        ],
                                      ),
                                      Text(
                                        "3 of 1334 teams",
                                        style: TextStyle(
                                            color: Colors.grey,
                                            fontSize: 14.0,
                                            fontWeight: FontWeight.w600),
                                      ),
                                    ],
                                  )
                                ],
                              ),
                              RichText(
                                text: TextSpan(children: [
                                  TextSpan(
                                      text: "Mark requested to join ",
                                      style: TextStyle(
                                          color: Colors.grey[700],
                                          fontSize: 15.0,
                                          fontWeight: FontWeight.w600)),
                                  TextSpan(
                                      text: "His team ",
                                      style: TextStyle(
                                          color: Colors.teal,
                                          fontSize: 15.0,
                                          fontWeight: FontWeight.w600)),
                                  TextSpan(
                                      text: "(Abral Shar3 9),",
                                      style: TextStyle(
                                          color: Colors.black,
                                          fontSize: 15.0,
                                          fontWeight: FontWeight.w600)),
                                  TextSpan(
                                      text: "Do\n you want to accept his invitation?",
                                      style: TextStyle(
                                          color: Colors.grey[700],
                                          fontSize: 15.0,
                                          fontWeight: FontWeight.w600)),
                                ]),
                              )
                            ],
                          ),
                        ),
                      ),
                      Divider(),
                      Flexible(
                        flex: 2,
                        child: Row(
                          mainAxisAlignment: MainAxisAlignment.center,
                          crossAxisAlignment: CrossAxisAlignment.center,
                          children: <Widget>[
                            Flexible(
                              child: Row(
                                mainAxisAlignment: MainAxisAlignment.center,
                                crossAxisAlignment: CrossAxisAlignment.center,
                                children: <Widget>[
                                  Icon(
                                    Icons.check_circle,
                                    color: _color,
                                    size: 16.0,
                                  ),
                                  Text(
                                    "Accept",
                                    style: TextStyle(
                                        color: _color, fontSize: 16.0, fontWeight: FontWeight.bold),
                                  ),
                                ],
                              ),
                            ),
                            VerticalDivider(),
                            Flexible(
                              child: Row(
                                mainAxisAlignment: MainAxisAlignment.center,
                                crossAxisAlignment: CrossAxisAlignment.center,
                                children: <Widget>[
                                  Icon(
                                    Icons.remove_circle,
                                    color: _closeColor,
                                    size: 16.0,
                                  ),
                                  Text(
                                    "Reject",
                                    style: TextStyle(
                                        color: _closeColor, fontSize: 16.0, fontWeight: FontWeight.bold),
                                  ),
                                ],
                              ),
                            )
                          ],
                        ),
                      ),
                    ],
                  ),
                ),
                Container(
                  margin: EdgeInsets.only(bottom: 16.0, left: 16.0, right: 16.0),
                  height: 150.0,
                  decoration: BoxDecoration(
                      borderRadius: BorderRadius.circular(8.0),
                      color: Colors.white,
                      boxShadow: [
                        BoxShadow(
                            color: Colors.black.withOpacity(0.1), spreadRadius: 2, blurRadius: 4)
                      ]),
                  child: Column(
                    children: <Widget>[
                      Flexible(
                        flex: 5,
                        child: Padding(
                          padding: const EdgeInsets.only(top: 8.0, left: 16.0, right: 16.0),
                          child: Column(
                            mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                            children: <Widget>[
                              Row(
                                children: <Widget>[
                                  Stack(
                                    children: <Widget>[
                                      Container(
                                        margin: EdgeInsets.only(right: 8.0),
                                        height: 40.0,
                                        width: 40.0,
                                        decoration: BoxDecoration(
                                            shape: BoxShape.circle,
                                            border: Border.all(color: Colors.white, width: 1.0),
                                            image: DecorationImage(
                                                image: NetworkImage(
                                                    "https://cdn.pixabay.com/photo/2012/12/14/15/23/jaguar-70026__340.jpg"),
                                                fit: BoxFit.fill)),
                                      ),
                                      Positioned(
                                        top: 0, right: -5,
                                        child: Container(
                                          margin: EdgeInsets.only(right: 8.0),
                                          height: 24.0,
                                          width: 24.0,
                                          decoration: BoxDecoration(
                                              shape: BoxShape.circle,
                                              border: Border.all(color: Colors.white, width: 1.0),
                                              image: DecorationImage(
                                                  image: NetworkImage(
                                                      "https://cdn.pixabay.com/photo/2016/11/22/21/42/adult-1850703__340.jpg"),
                                                  fit: BoxFit.fill)),
                                        ),
                                      ),
                                      Positioned(
                                        bottom: 0, right: -5,
                                        child: Container(
                                          margin: EdgeInsets.only(right: 8.0),
                                          height: 24.0,
                                          width: 24.0,
                                          decoration: BoxDecoration(
                                              shape: BoxShape.circle,
                                              border: Border.all(color: Colors.white, width: 1.0),
                                              image: DecorationImage(
                                                  image: NetworkImage(
                                                      "https://cdn.pixabay.com/photo/2015/09/02/12/51/woman-918707__340.jpg"),
                                                  fit: BoxFit.fill)),
                                        ),
                                      )
                                    ],
                                  ),
                                  Column(
                                    crossAxisAlignment: CrossAxisAlignment.start,
                                    mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                                    children: <Widget>[
                                      Row(
                                        children: <Widget>[
                                          Text(
                                            "Abtal Shar3 9 Team",
                                            style: TextStyle(
                                                color: Colors.black,
                                                fontSize: 18.0,
                                                fontWeight: FontWeight.bold),
                                          ),
                                          Icon(Icons.lock, size: 16.0, color: Colors.grey[500],)
                                        ],
                                      ),
                                      Text(
                                        "3 of 1334 teams",
                                        style: TextStyle(
                                            color: Colors.grey,
                                            fontSize: 14.0,
                                            fontWeight: FontWeight.w600),
                                      ),
                                    ],
                                  )
                                ],
                              ),
                              RichText(
                                text: TextSpan(children: [
                                  TextSpan(
                                      text: "Mark requested to join ",
                                      style: TextStyle(
                                          color: Colors.grey[700],
                                          fontSize: 15.0,
                                          fontWeight: FontWeight.w600)),
                                  TextSpan(
                                      text: "His team ",
                                      style: TextStyle(
                                          color: Colors.teal,
                                          fontSize: 15.0,
                                          fontWeight: FontWeight.w600)),
                                  TextSpan(
                                      text: "(Abral Shar3 9),",
                                      style: TextStyle(
                                          color: Colors.black,
                                          fontSize: 15.0,
                                          fontWeight: FontWeight.w600)),
                                  TextSpan(
                                      text: "Do\n you want to accept his invitation?",
                                      style: TextStyle(
                                          color: Colors.grey[700],
                                          fontSize: 15.0,
                                          fontWeight: FontWeight.w600)),
                                ]),
                              )
                            ],
                          ),
                        ),
                      ),
                      Divider(),
                      Flexible(
                        flex: 2,
                        child: Row(
                          mainAxisAlignment: MainAxisAlignment.center,
                          crossAxisAlignment: CrossAxisAlignment.center,
                          children: <Widget>[
                            Flexible(
                              child: Row(
                                mainAxisAlignment: MainAxisAlignment.center,
                                crossAxisAlignment: CrossAxisAlignment.center,
                                children: <Widget>[
                                  Icon(
                                    Icons.check_circle,
                                    color: _color,
                                    size: 16.0,
                                  ),
                                  Text(
                                    "Accept",
                                    style: TextStyle(
                                        color: _color, fontSize: 16.0, fontWeight: FontWeight.bold),
                                  ),
                                ],
                              ),
                            ),
                            VerticalDivider(),
                            Flexible(
                              child: Row(
                                mainAxisAlignment: MainAxisAlignment.center,
                                crossAxisAlignment: CrossAxisAlignment.center,
                                children: <Widget>[
                                  Icon(
                                    Icons.remove_circle,
                                    color: _closeColor,
                                    size: 16.0,
                                  ),
                                  Text(
                                    "Reject",
                                    style: TextStyle(
                                        color: _closeColor, fontSize: 16.0, fontWeight: FontWeight.bold),
                                  ),
                                ],
                              ),
                            )
                          ],
                        ),
                      ),
                    ],
                  ),
                ),
              ],
            ),
          ),

          // previous requests
          Placeholder(),
        ],
        //
      ),
    );
  }
}
