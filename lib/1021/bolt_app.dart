import 'package:flutter/material.dart';
import 'package:google_maps_flutter/google_maps_flutter.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';

// https://dribbble.com/shots/7700524-BOLT-App-Airport-Shuttle-Feature-Screens/attachments/428810?mode=media

// https://medium.com/@meysam.mahfouzi/drawing-curved-dashed-lines-in-flutter-b5d0645b04c8

class BoltApp extends StatefulWidget {
  @override
  _BoltAppState createState() => _BoltAppState();
}

class _BoltAppState extends State<BoltApp> with TickerProviderStateMixin {
  String _bus = "https://cdn.pixabay.com/photo/2014/03/25/15/18/shuttle-bus-296452__340.png";
  String _car = "https://cdn.pixabay.com/photo/2013/07/13/01/11/beetle-155267__340.png";

  Color _color = Color.fromRGBO(103, 112, 255, 1);
  Color _color2 = Color.fromRGBO(47, 183, 118, 1);

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
        // top container
        Flexible(
          flex: 7,
          child: Container(
            child: Stack(
              children: <Widget>[
                // background: Google map
                GoogleMap(initialCameraPosition: CameraPosition(target: LatLng(59.354969, 17.942227), zoom: 14.0)),

                // back arrow icon
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

                // custom paint
                Positioned(
                  top: 170.0,
                  left: 100.0,
                  child: CustomPaint(
                    painter: MyPainter(),
                    child: Container(),
                  ),
                ),

                // bromma text container
                Positioned(
                  top: 140.0,
                  left: 24.0,
                  child: Container(
                    padding: EdgeInsets.all(8.0),
                    decoration: BoxDecoration(
                        boxShadow: [BoxShadow(color: Colors.black12, spreadRadius: 2, blurRadius: 4)], color: Colors.white),
                    child: Row(
                      children: <Widget>[
                        Text(
                          "Bromma Stockholm Airport",
                          style: TextStyle(color: Colors.black, fontSize: 12.0, fontWeight: FontWeight.w600),
                        ),
                        SizedBox(
                          width: 12.0,
                        ),
                        Icon(
                          Icons.arrow_forward_ios,
                          size: 12.0,
                          color: Colors.black,
                        ),
                      ],
                    ),
                  ),
                ),

                // location icon
                Positioned(
                  top: 170.0,
                  left: 100.0,
                  child: Icon(
                    Icons.location_on,
                    size: 24.0,
                    color: _color,
                  ),
                ),

                // destination icon
                Positioned(
                  top: 326.0,
                  right: 80.0,
                  child: Container(
                    padding: EdgeInsets.all(4.0),
                    height: 20.0,
                    width: 20.0,
                    decoration: BoxDecoration(
                        shape: BoxShape.circle,
                        border: Border.all(
                          color: Colors.white,
                          width: 2.0,
                        ),
                        color: _color2),
                    child: Container(
                      decoration: BoxDecoration(shape: BoxShape.circle, color: Colors.white),
                    ),
                  ),
                ),

                // destination container
                Positioned(
                  top: 350.0,
                  right: 24.0,
                  child: Container(
                    padding: EdgeInsets.all(8.0),
                    decoration: BoxDecoration(
                        boxShadow: [BoxShadow(color: Colors.black12, spreadRadius: 2, blurRadius: 4)], color: Colors.white),
                    child: Row(
                      children: <Widget>[
                        Text(
                          "Norrbyvogen, 279",
                          style: TextStyle(color: Colors.black, fontSize: 12.0, fontWeight: FontWeight.w600),
                        ),
                        SizedBox(
                          width: 12.0,
                        ),
                        Icon(
                          Icons.arrow_forward_ios,
                          size: 12.0,
                          color: Colors.black,
                        ),
                      ],
                    ),
                  ),
                ),
              ],
            ),
          ),
        ),

        // bottom container
        Flexible(
          flex: 3,
          child: Container(
            margin: EdgeInsets.only(left: 16.0),
            color: Colors.white,
            child: Column(
              children: <Widget>[
                // top
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

                // divider
                Divider(),

                // bottom
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

// CustomPainter
class MyPainter extends CustomPainter {
  Color _color = Color.fromRGBO(103, 112, 255, 1);

  @override
  void paint(Canvas canvas, Size size) {
    Paint paint = Paint();
    paint.color = _color;
    paint.strokeWidth = 4.0;
    paint.style = PaintingStyle.stroke;

    var startPoint = Offset(15.0, 15.0);
    var curvePoint1 = Offset(180.0, 70.0);
    var curvePoint2 = Offset(210.0, 120.0);
    var endPoint = Offset(220.0, 160.0);

    var path = Path();
    path.moveTo(startPoint.dx, startPoint.dy);
    path.cubicTo(curvePoint1.dx, curvePoint1.dy, curvePoint2.dx, curvePoint2.dy, endPoint.dx, endPoint.dy);

    canvas.drawPath(path, paint);
  }

  @override
  bool shouldRepaint(CustomPainter oldDelegate) => false;
}
