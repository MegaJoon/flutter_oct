import 'package:flutter/material.dart';
import 'package:carousel_slider/carousel_slider.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';
import 'package:scrollable_bottom_sheet/scrollable_bottom_sheet.dart';
import 'package:scrollable_bottom_sheet/scrollable_controller.dart';

// https://pub.dev/packages/carousel_slider

class MyPage extends StatefulWidget {
  @override
  _MyPageState createState() => _MyPageState();
}

class _MyPageState extends State<MyPage> with TickerProviderStateMixin {
  String _image =
      "https://cdn.pixabay.com/photo/2019/10/02/14/09/jam-4521023__340.jpg";
  String _image2 =
      "https://cdn.pixabay.com/photo/2019/10/02/16/56/landscape-4521413__340.jpg";
  String _image3 =
      "https://cdn.pixabay.com/photo/2019/09/30/14/51/squirrel-4515962__340.jpg";
  String _profileImage =
      "https://cdn.pixabay.com/photo/2019/10/02/18/00/selfie-4521579__340.jpg";

  Color _color = Color.fromRGBO(219, 162, 103, 1);
  Color _color2 = Color.fromRGBO(151, 30, 125, 1);
  final controller = ScrollableController();
  TabController _tabController;

  @override
  void initState() {
    // TODO: implement initState
    super.initState();
    _tabController = TabController(length: 2, vsync: this);
  }

  @override
  Widget build(BuildContext context) {
    final screenHeight = MediaQuery.of(context).size.height;
    return Scaffold(
        backgroundColor: Colors.black,
        body: Stack(
          children: <Widget>[
            // safearea
            Positioned(
              top: 0,
              left: 0,
              right: 0,
              child: SafeArea(
                top: true,
                left: true,
                right: true,
                child: Container(
                  margin: EdgeInsets.symmetric(horizontal: 24.0),
                  height: 28,
                  child: Row(
                    mainAxisAlignment: MainAxisAlignment.end,
                    children: <Widget>[
                      Container(
                        height: 28,
                        width: 28,
                        decoration: BoxDecoration(
                            shape: BoxShape.circle,
                            border:
                                Border.all(color: Colors.white, width: 1.5)),
                        child: Icon(
                          Icons.add,
                          color: Colors.white,
                          size: 20.0,
                        ),
                      )
                    ],
                  ),
                ),
              ),
            ),

            // carousel
            Positioned(
              top: 52,
              left: 0,
              right: 0,
              child: Container(
                  margin: EdgeInsets.only(top: 12.0),
                  height: screenHeight * 0.55,
                  width: MediaQuery.of(context).size.width,
//                color: Colors.amber,
                  child: CarouselSlider(
                      height: screenHeight * 0.55,
                      scrollDirection: Axis.horizontal,
                      initialPage: 1,
                      viewportFraction: 0.6,
                      items: [
                        Container(
                          margin: EdgeInsets.symmetric(horizontal: 8.0),
                          width: 250,
                          decoration: BoxDecoration(
                              borderRadius: BorderRadius.circular(16.0),
                              color: Colors.white,
                              image: DecorationImage(
                                  image: NetworkImage(_image),
                                  fit: BoxFit.cover)),
                        ),
                        Container(
                          margin: EdgeInsets.symmetric(horizontal: 8.0),
                          width: 250,
                          decoration: BoxDecoration(
                              borderRadius: BorderRadius.circular(16.0),
                              color: Colors.white,
                              image: DecorationImage(
                                  image: NetworkImage(_image2),
                                  fit: BoxFit.cover)),
                        ),
                        Container(
                          margin: EdgeInsets.symmetric(horizontal: 8.0),
                          width: 250,
                          decoration: BoxDecoration(
                              borderRadius: BorderRadius.circular(16.0),
                              color: Colors.white,
                              image: DecorationImage(
                                  image: NetworkImage(_image3),
                                  fit: BoxFit.cover)),
                        ),
                      ])),
            ),

            // Container
            Positioned(
              bottom: 0,
              left: 0,
              right: 0,
              child: ScrollableBottomSheet(
                snapBelow: true,
                snapAbove: true,
                halfHeight: screenHeight * 0.34,
//                halfHeight: 300,
                autoPop: false,
                minimumHeight: screenHeight * 0.34,
                controller: controller,
                scrollTo: ScrollState.full,
                child: Container(
                  height: MediaQuery.of(context).size.height,
                  decoration: BoxDecoration(
                      gradient: LinearGradient(colors: [
                    Colors.black.withOpacity(0.8),
                    Colors.black,
                  ], begin: Alignment.topCenter, end: Alignment.bottomCenter)),
                  child: Column(
                    crossAxisAlignment: CrossAxisAlignment.center,
                    children: <Widget>[
                      Icon(FontAwesomeIcons.chevronUp,
                          size: 24.0, color: Colors.white),
                      Container(
                        height: 80,
                        width: 80,
                        decoration: BoxDecoration(
                            shape: BoxShape.circle,
                            gradient: LinearGradient(
                                colors: [_color, _color2],
                                begin: Alignment.bottomLeft,
                                end: Alignment.topRight)),
                        child: Container(
                          margin: EdgeInsets.all(1.5),
                          decoration: BoxDecoration(
                              shape: BoxShape.circle,
                              border:
                                  Border.all(color: Colors.black, width: 3.0),
                              image: DecorationImage(
                                  image: NetworkImage(_profileImage),
                                  fit: BoxFit.fill)),
                        ),
                      ),
                      Text(
                        "Sarf Pearl",
                        style: TextStyle(
                            color: Colors.white,
                            fontSize: 20.0,
                            fontWeight: FontWeight.bold),
                      ),
                      Text(
                        "Personal Blog",
                        style: TextStyle(
                            color: Colors.grey[500],
                            fontSize: 12.0,
                            fontWeight: FontWeight.w600),
                      ),
                      Text(
                        "Introvert | Photo Freak | WonderLust",
                        style:
                            TextStyle(color: Colors.grey[500], fontSize: 12.0),
                      ),
                      Text(
                        "Beautiful monent are to be treasured",
                        style:
                            TextStyle(color: Colors.grey[500], fontSize: 12.0),
                      ),
                      Text(
                        "and that's why I capture it",
                        style:
                            TextStyle(color: Colors.grey[500], fontSize: 12.0),
                      ),
                      SizedBox(height: 8),
                      Row(
                        mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                        children: <Widget>[
                          Column(
                            crossAxisAlignment: CrossAxisAlignment.center,
                            mainAxisAlignment: MainAxisAlignment.center,
                            children: <Widget>[
                              Text(
                                "86",
                                style: TextStyle(
                                    color: Colors.white,
                                    fontSize: 16.0,
                                    fontWeight: FontWeight.w600),
                              ),
                              Text(
                                "Posts",
                                style: TextStyle(
                                    color: Colors.grey,
                                    fontSize: 12.0,
                                    fontWeight: FontWeight.w600),
                              ),
                            ],
                          ),
                          Column(
                            crossAxisAlignment: CrossAxisAlignment.center,
                            mainAxisAlignment: MainAxisAlignment.center,
                            children: <Widget>[
                              Text(
                                "673",
                                style: TextStyle(
                                    color: Colors.white,
                                    fontSize: 16.0,
                                    fontWeight: FontWeight.w600),
                              ),
                              Text(
                                "Followers",
                                style: TextStyle(
                                    color: Colors.grey,
                                    fontSize: 12.0,
                                    fontWeight: FontWeight.w600),
                              ),
                            ],
                          ),
                          Column(
                            crossAxisAlignment: CrossAxisAlignment.center,
                            mainAxisAlignment: MainAxisAlignment.center,
                            children: <Widget>[
                              Text(
                                "468",
                                style: TextStyle(
                                    color: Colors.white,
                                    fontSize: 16.0,
                                    fontWeight: FontWeight.w600),
                              ),
                              Text(
                                "Following",
                                style: TextStyle(
                                    color: Colors.grey,
                                    fontSize: 12.0,
                                    fontWeight: FontWeight.w600),
                              ),
                            ],
                          )
                        ],
                      ),
                      Container(
                        height: 40,
                        color: Colors.black,
                        child: TabBar(
//                          indicatorColor: Colors.black,
                          indicator: BoxDecoration(color: Colors.black),
                          controller: _tabController,
                          tabs: <Widget>[
                            Tab(
                                icon: Icon(Icons.grid_on,
                                    color: Colors.white, size: 16.0)),
                            Tab(
                                icon: Icon(Icons.photo_album,
                                    color: Colors.white, size: 16.0)),
                          ],
                        ),
                      ),
                      Container(
                        color: Colors.black,
//                        height: double.infinity,
                        height: 419,
                        child:
                            TabBarView(controller: _tabController, children: [
                          GridView.builder(
                              padding: EdgeInsets.zero,
                              gridDelegate:
                                  SliverGridDelegateWithFixedCrossAxisCount(
                                      crossAxisCount: 3),
                              itemBuilder: (BuildContext context, int index) {
                                return Placeholder();
                              }),
                          Container(height: 419, child: Placeholder()),
                        ]),
                      )
                    ],
                  ),
                ),
              ),
            )
          ],
        ));
  }
}
