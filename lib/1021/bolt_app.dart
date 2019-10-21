import 'package:flutter/material.dart';
import 'package:google_maps_flutter/google_maps_flutter.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';

class BoltApp extends StatefulWidget {
  @override
  _BoltAppState createState() => _BoltAppState();
}

class _BoltAppState extends State<BoltApp> with TickerProviderStateMixin{
  TabController _tabController;

  @override
  void initState() {
    super.initState();
    _tabController = TabController(length: 3, vsync: this);
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        body: Column(
      children: <Widget>[
        Flexible(
          flex: 7,
          child: Container(
            child: Stack(
              children: <Widget>[
                GoogleMap(initialCameraPosition: CameraPosition(target: LatLng(59.354969, 17.942227), zoom: 14.0)),
                Positioned(
                  top: 32.0,
                  left: 16.0,
                  child: Container(
                    height: 28.0,
                    width: 28.0,
                    decoration: BoxDecoration(
                        shape: BoxShape.circle,
                        color: Colors.white,
                        boxShadow: [BoxShadow(color: Colors.black12, spreadRadius: 2, blurRadius: 4)]),
                    child: Center(
                        child: Icon(
                      Icons.arrow_back,
                      size: 20.0,
                      color: Colors.black,
                    )),
                  ),
                ),
                //
              ],
            ),
          ),
        ),
        Flexible(
          flex: 3,
          child: Container(
            margin: EdgeInsets.symmetric(horizontal: 16.0),
            color: Colors.white,
            child: Column(
              children: <Widget>[
                Flexible(
                  flex: 1,
                  child: Column(
                    children: <Widget>[
                      Text(
                        "Recommended",
                        style: TextStyle(color: Colors.orange, fontSize: 12.0, fontWeight: FontWeight.bold),
                      ),
                      Container(
                        height: 16.0,
                        child: TabBar(
                          controller: _tabController,
                          isScrollable: true,
                          labelColor: Colors.black,
                          labelStyle: TextStyle(fontWeight: FontWeight.bold, fontSize: 16.0),
                          unselectedLabelStyle: TextStyle(fontWeight: FontWeight.bold, fontSize: 16.0),
                          unselectedLabelColor: Colors.grey,
                          tabs: <Widget>[
                            Tab(text: "Airport Shuttle",),
                            Tab(text: "Bolt",),
                            Tab(text: "Executive connection",),
                          ],
                        ),
                      ),
                      Container(
                          height: 32.0,
                          child: TabBarView(
                            physics: BouncingScrollPhysics(),
                            controller: _tabController,
                            children: <Widget>[
                              Placeholder(),
                              Placeholder(),
                              Placeholder(),
                            ],
                          )),
                    ],
                  ),
                ),
                Divider(),
                Flexible(
                  flex: 1,
                  child: Padding(
                    padding: const EdgeInsets.only(bottom: 16.0),
                    child: Column(
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      children: <Widget>[
                        Row(
                          children: <Widget>[
                            Icon(
                              FontAwesomeIcons.moneyBillAlt,
                              size: 20.0,
                              color: Colors.black,
                            ),
                            SizedBox(
                              width: 8.0,
                            ),
                            Text(
                              "Cash",
                              style: TextStyle(color: Colors.black, fontSize: 20.0, fontWeight: FontWeight.w600),
                            ),
                            SizedBox(
                              width: 8.0,
                            ),
                            Icon(
                              Icons.keyboard_arrow_down,
                              size: 20.0,
                              color: Colors.black,
                            ),
                          ],
                        ),
                        Container(
                          height: 40.0,
                          decoration: ShapeDecoration(
                              shape: StadiumBorder(),
                              color: Color.fromRGBO(46, 184, 117, 1),
                              shadows: [BoxShadow(color: Colors.black12, spreadRadius: 2, blurRadius: 4)]),
                          child: Center(
                              child: Text(
                            "Change pickup".toUpperCase(),
                            style: TextStyle(color: Colors.white, fontSize: 16.0, fontWeight: FontWeight.bold),
                          )),
                        )
                      ],
                    ),
                  ),
                ),
              ],
            ),
          ),
        ),
      ],
    ));
  }
}
