import 'package:flutter/material.dart';
import 'package:google_maps_flutter/google_maps_flutter.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';

class BoltApp extends StatefulWidget {
  @override
  _BoltAppState createState() => _BoltAppState();
}

class _BoltAppState extends State<BoltApp> with TickerProviderStateMixin {
  String _bus = "https://cdn.pixabay.com/photo/2014/03/25/15/18/shuttle-bus-296452__340.png";
  String _car = "https://cdn.pixabay.com/photo/2013/07/13/01/11/beetle-155267__340.png";

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
            margin: EdgeInsets.only(left: 16.0),
            color: Colors.white,
            child: Column(
              children: <Widget>[
                Flexible(
                  flex: 1,
                  child: Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: <Widget>[
                      SizedBox(
                        height: 8.0,
                      ),
                      Text(
                        "Recommended",
                        style: TextStyle(color: Colors.orange, fontSize: 12.0, fontWeight: FontWeight.bold),
                      ),
                      Container(
                        height: 24.0,
                        child: TabBar(
                          controller: _tabController,
                          labelPadding: EdgeInsets.only(left: 0, right: 80.0),
                          indicatorColor: Colors.white,
                          indicatorWeight: 0.1,
                          isScrollable: true,
                          labelColor: Colors.black,
                          labelStyle: TextStyle(fontWeight: FontWeight.bold, fontSize: 16.0),
                          unselectedLabelStyle: TextStyle(fontWeight: FontWeight.bold, fontSize: 16.0),
                          unselectedLabelColor: Colors.grey,
                          tabs: <Widget>[
                            Tab(
                              text: "Airport Shuttle",
                            ),
                            Tab(
                              text: "Bolt",
                            ),
                            Tab(
                              text: "Executive connection",
                            ),
                          ],
                        ),
                      ),
                      Container(
                          padding: EdgeInsets.symmetric(vertical: 4.0),
                          height: 48.0,
                          child: TabBarView(
                            physics: BouncingScrollPhysics(),
                            controller: _tabController,
                            children: <Widget>[
                              ListView(
                                scrollDirection: Axis.horizontal,
                                children: <Widget>[
                                  Container(
                                    margin: EdgeInsets.only(right: 64.0),
                                    width: 100.0,
                                    child: Row(
                                      children: <Widget>[
                                        Container(
                                          margin: EdgeInsets.only(right: 8.0),
                                          width: 40.0,
                                          decoration: BoxDecoration(
                                              shape: BoxShape.circle,
                                              color: Colors.grey,
                                              image: DecorationImage(image: NetworkImage(_bus), fit: BoxFit.fill)),
                                        ),
                                        Column(
                                          crossAxisAlignment: CrossAxisAlignment.center,
                                          mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                                          children: <Widget>[
                                            Text(
                                              "\$2.15",
                                              style: TextStyle(color: Colors.black, fontSize: 16.0, fontWeight: FontWeight.bold),
                                            ),
                                            Text(
                                              "10MIN",
                                              style: TextStyle(color: Colors.grey, fontSize: 14.0, fontWeight: FontWeight.w600),
                                            ),
                                          ],
                                        ),
                                      ],
                                    ),
                                  ),
                                  Container(
                                    margin: EdgeInsets.only(right: 64.0),
                                    width: 100.0,
                                    child: Row(
                                      children: <Widget>[
                                        Container(
                                          margin: EdgeInsets.only(right: 8.0),
                                          width: 40.0,
                                          decoration: BoxDecoration(
                                            shape: BoxShape.circle,
                                            color: Colors.grey.withOpacity(0.5),
                                            image: DecorationImage(
                                                image: NetworkImage(_car),
                                                fit: BoxFit.fill,
                                                colorFilter: ColorFilter.mode(Colors.white.withOpacity(0.5), BlendMode.dstATop)),
                                          ),
                                        ),
                                        Column(
                                          crossAxisAlignment: CrossAxisAlignment.center,
                                          mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                                          children: <Widget>[
                                            Text(
                                              "\$7-8",
                                              style: TextStyle(
                                                  color: Colors.black.withOpacity(0.5),
                                                  fontSize: 16.0,
                                                  fontWeight: FontWeight.bold),
                                            ),
                                            Text(
                                              "5MIN",
                                              style: TextStyle(
                                                  color: Colors.grey.withOpacity(0.5),
                                                  fontSize: 14.0,
                                                  fontWeight: FontWeight.w600),
                                            ),
                                          ],
                                        ),
                                      ],
                                    ),
                                  ),
                                  Container(
                                    margin: EdgeInsets.only(right: 64.0),
                                    width: 100.0,
                                    child: Row(
                                      children: <Widget>[
                                        Container(
                                          margin: EdgeInsets.only(right: 8.0),
                                          width: 40.0,
                                          decoration: BoxDecoration(
                                            shape: BoxShape.circle,
                                            color: Colors.grey.withOpacity(0.5),
                                            image: DecorationImage(
                                                image: NetworkImage(_car),
                                                fit: BoxFit.fill,
                                                colorFilter: ColorFilter.mode(Colors.white.withOpacity(0.5), BlendMode.dstATop)),
                                          ),
                                        ),
                                        Column(
                                          crossAxisAlignment: CrossAxisAlignment.center,
                                          mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                                          children: <Widget>[
                                            Text(
                                              "\$7-8",
                                              style: TextStyle(
                                                  color: Colors.black.withOpacity(0.5),
                                                  fontSize: 16.0,
                                                  fontWeight: FontWeight.bold),
                                            ),
                                            Text(
                                              "5MIN",
                                              style: TextStyle(
                                                  color: Colors.grey.withOpacity(0.5),
                                                  fontSize: 14.0,
                                                  fontWeight: FontWeight.w600),
                                            ),
                                          ],
                                        ),
                                      ],
                                    ),
                                  ),
                                ],
                              ),
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
                    padding: const EdgeInsets.only(right: 16.0, bottom: 16.0),
                    child: Column(
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      children: <Widget>[
                        Row(
                          children: <Widget>[
                            Icon(
                              FontAwesomeIcons.moneyBillAlt,
                              size: 16.0,
                              color: Colors.black,
                            ),
                            SizedBox(
                              width: 12.0,
                            ),
                            Text(
                              "Cash",
                              style: TextStyle(color: Colors.black, fontSize: 16.0, fontWeight: FontWeight.w600),
                            ),
                            SizedBox(
                              width: 4.0,
                            ),
                            Icon(
                              Icons.keyboard_arrow_down,
                              size: 16.0,
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
