import 'package:flutter/material.dart';

// https://dribbble.com/shots/7394686-Music-Festival-App/attachments/273902?mode=media

class MusicFestival extends StatefulWidget {
  @override
  _MusicFestivalState createState() => _MusicFestivalState();
}

class _MusicFestivalState extends State<MusicFestival> with TickerProviderStateMixin {
  Color _topColor = Color.fromRGBO(0, 67, 148, 1);
  Color _bottomColor = Color.fromRGBO(5, 18, 66, 1);
  Color _color = Color.fromRGBO(17, 174, 169, 1);
  TabController _tabController;

  @override
  void initState() {
    // TODO: implement initState
    super.initState();
    _tabController = new TabController(length: 2, vsync: this);
  }

  @override
  Widget build(BuildContext context) {
    final screenHeight = MediaQuery.of(context).size.height;
    final screenWidth = MediaQuery.of(context).size.width;
    return Scaffold(
      body: Stack(
        children: <Widget>[
          Positioned(
            top: 0,
            left: 0,
            right: 0,
            child: ClipPath(
              clipper: myClipper(),
              child: Container(
                height: screenHeight * 0.4,
                decoration: BoxDecoration(
                    gradient: LinearGradient(
                        colors: [_topColor, _bottomColor],
                        begin: Alignment.topCenter,
                        end: Alignment.bottomCenter)),
              ),
            ),
          ),
          Positioned(
            top: 0,
            left: 24,
            right: 0,
            child: SafeArea(
              top: true,
              left: true,
              right: true,
              child: Container(
                height: screenHeight,
                child: Column(
                  children: <Widget>[
                    // text, icon
                    Padding(
                      padding: const EdgeInsets.only(right: 24.0),
                      child: Row(
                        mainAxisAlignment: MainAxisAlignment.spaceBetween,
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: <Widget>[
                          Column(
                            children: <Widget>[
                              Text(
                                "Upcoming\nMusic Festivals",
                                style: TextStyle(
                                    color: Colors.white,
                                    fontSize: 36.0,
                                    fontWeight: FontWeight.bold),
                              ),
                              SizedBox(height: 16.0),
                              RichText(
                                text: TextSpan(children: [
                                  TextSpan(
                                      text: "We found ",
                                      style: TextStyle(
                                          color: Colors.white,
                                          fontSize: 20.0,
                                          fontWeight: FontWeight.w600)),
                                  TextSpan(
                                      text: "84 music festivals ",
                                      style: TextStyle(
                                          color: _color,
                                          fontSize: 20.0,
                                          fontWeight: FontWeight.w600)),
                                ]),
                              )
                            ],
                          ),
                          Container(
                            height: 40,
                            width: 40,
                            decoration: BoxDecoration(
                                color: Colors.white.withOpacity(0.2),
                                borderRadius: BorderRadius.circular(4.0)),
                            child: Icon(
                              Icons.menu,
                              size: 28.0,
                              color: Colors.amber,
                            ),
                          )
                        ],
                      ),
                    ),
                    SizedBox(height: 32.0),

                    // listview
                    Container(
                      margin: EdgeInsets.only(left: 24.0),
                      height: 250,
                      width: screenWidth,
//                      color: Colors.black,
                      child: ListView(
                        scrollDirection: Axis.horizontal,
                        children: <Widget>[
                          Container(
                            margin: EdgeInsets.only(right: 24.0),
                            padding: EdgeInsets.all(8.0),
                            height: 250,
                            width: 180,
                            decoration: BoxDecoration(
                                color: Colors.red,
                                borderRadius: BorderRadius.circular(8.0),
                                image: DecorationImage(
                                    image: NetworkImage(
                                        "https://cdn.pixabay.com/photo/2019/10/03/11/14/camp-4522970__340.jpg"),
                                    fit: BoxFit.fill)),
                            child: Column(
                              crossAxisAlignment: CrossAxisAlignment.start,
                              children: <Widget>[
                                Row(
                                  mainAxisAlignment: MainAxisAlignment.end,
                                  children: <Widget>[
                                    Container(
                                      height: 24,
                                      width: 52,
                                      decoration: BoxDecoration(
                                          color: _color, borderRadius: BorderRadius.circular(4.0)),
                                      child: Center(
                                        child: Text(
                                          "\$410",
                                          style: TextStyle(
                                              color: Colors.white,
                                              fontSize: 14.0,
                                              fontWeight: FontWeight.w600),
                                        ),
                                      ),
                                    ),
                                  ],
                                ),
                                Spacer(),
                                Text(
                                  "04/15 - 04/24",
                                  style: TextStyle(
                                      color: Colors.white,
                                      fontSize: 14.0,
                                      fontWeight: FontWeight.w400,
                                      height: 1.2),
                                ),
                                Text(
                                  "Dropping Sand",
                                  style: TextStyle(
                                      color: Colors.white,
                                      fontSize: 18.0,
                                      fontWeight: FontWeight.bold,
                                      height: 1.2),
                                ),
                                Row(
                                  mainAxisAlignment: MainAxisAlignment.start,
                                  children: <Widget>[
                                    Icon(
                                      Icons.location_on,
                                      size: 14.0,
                                      color: Colors.white,
                                    ),
                                    SizedBox(
                                      width: 4.0,
                                    ),
                                    Text(
                                      "Roadside Land, IN",
                                      style: TextStyle(
                                          color: Colors.white,
                                          fontSize: 14.0,
                                          fontWeight: FontWeight.w400,
                                          height: 1.2),
                                    ),
                                  ],
                                ),
                              ],
                            ),
                          ),
                          Container(
                            margin: EdgeInsets.only(right: 24.0),
                            padding: EdgeInsets.all(8.0),
                            height: 250,
                            width: 180,
                            decoration: BoxDecoration(
                                color: Colors.red,
                                borderRadius: BorderRadius.circular(8.0),
                                image: DecorationImage(
                                    image: NetworkImage(
                                        "https://cdn.pixabay.com/photo/2019/10/02/09/34/cinque-terre-4520509__340.jpg"),
                                    fit: BoxFit.fill)),
                            child: Column(
                              crossAxisAlignment: CrossAxisAlignment.start,
                              children: <Widget>[
                                Row(
                                  mainAxisAlignment: MainAxisAlignment.end,
                                  children: <Widget>[
                                    Container(
                                      height: 24,
                                      width: 52,
                                      decoration: BoxDecoration(
                                          color: _color, borderRadius: BorderRadius.circular(4.0)),
                                      child: Center(
                                        child: Text(
                                          "\$410",
                                          style: TextStyle(
                                              color: Colors.white,
                                              fontSize: 14.0,
                                              fontWeight: FontWeight.w600),
                                        ),
                                      ),
                                    ),
                                  ],
                                ),
                                Spacer(),
                                Text(
                                  "06/29 - 07/04",
                                  style: TextStyle(
                                      color: Colors.white,
                                      fontSize: 14.0,
                                      fontWeight: FontWeight.w400,
                                      height: 1.2),
                                ),
                                Text(
                                  "Soundbar High",
                                  style: TextStyle(
                                      color: Colors.white,
                                      fontSize: 18.0,
                                      fontWeight: FontWeight.bold,
                                      height: 1.2),
                                ),
                                Row(
                                  mainAxisAlignment: MainAxisAlignment.start,
                                  children: <Widget>[
                                    Icon(
                                      Icons.location_on,
                                      size: 14.0,
                                      color: Colors.white,
                                    ),
                                    SizedBox(
                                      width: 4.0,
                                    ),
                                    Text(
                                      "Roadside Land, IN",
                                      style: TextStyle(
                                          color: Colors.white,
                                          fontSize: 14.0,
                                          fontWeight: FontWeight.w400,
                                          height: 1.2),
                                    ),
                                  ],
                                ),
                              ],
                            ),
                          ),
                          Container(
                            margin: EdgeInsets.only(right: 24.0),
                            padding: EdgeInsets.all(8.0),
                            height: 250,
                            width: 180,
                            decoration: BoxDecoration(
                                color: Colors.red,
                                borderRadius: BorderRadius.circular(8.0),
                                image: DecorationImage(
                                    image: NetworkImage(
                                        "https://cdn.pixabay.com/photo/2019/10/03/11/14/camp-4522970__340.jpg"),
                                    fit: BoxFit.fill)),
                            child: Column(
                              crossAxisAlignment: CrossAxisAlignment.start,
                              children: <Widget>[
                                Row(
                                  mainAxisAlignment: MainAxisAlignment.end,
                                  children: <Widget>[
                                    Container(
                                      height: 24,
                                      width: 52,
                                      decoration: BoxDecoration(
                                          color: _color, borderRadius: BorderRadius.circular(4.0)),
                                      child: Center(
                                        child: Text(
                                          "\$410",
                                          style: TextStyle(
                                              color: Colors.white,
                                              fontSize: 14.0,
                                              fontWeight: FontWeight.w600),
                                        ),
                                      ),
                                    ),
                                  ],
                                ),
                                Spacer(),
                                Text(
                                  "04/15 - 04/24",
                                  style: TextStyle(
                                      color: Colors.white,
                                      fontSize: 14.0,
                                      fontWeight: FontWeight.w300,
                                      height: 1.2),
                                ),
                                Text(
                                  "Dropping Sand",
                                  style: TextStyle(
                                      color: Colors.white,
                                      fontSize: 16.0,
                                      fontWeight: FontWeight.w600,
                                      height: 1.2),
                                ),
                                Row(
                                  mainAxisAlignment: MainAxisAlignment.start,
                                  children: <Widget>[
                                    Icon(
                                      Icons.location_on,
                                      size: 14.0,
                                      color: Colors.white,
                                    ),
                                    SizedBox(
                                      width: 4.0,
                                    ),
                                    Text(
                                      "Roadside Land, IN",
                                      style: TextStyle(
                                          color: Colors.white,
                                          fontSize: 14.0,
                                          fontWeight: FontWeight.w300,
                                          height: 1.2),
                                    ),
                                  ],
                                ),
                              ],
                            ),
                          ),
                        ],
                      ),
                    ),

                    SizedBox(height: 32.0),
                    // tabbar
                    Container(
                      alignment: Alignment.topLeft,
                      height: 40,
//                      color: Colors.black,
                      child: TabBar(
                          controller: _tabController,
                          unselectedLabelColor: Colors.grey[400],
                          unselectedLabelStyle:
                              TextStyle(fontSize: 14.0, fontWeight: FontWeight.bold),
                          labelColor: Colors.black,
                          labelStyle: TextStyle(fontSize: 14.0, fontWeight: FontWeight.bold),
                          isScrollable: true,
                          labelPadding: EdgeInsets.all(8.0),
                          indicatorColor: Colors.amber,
                          indicatorSize: TabBarIndicatorSize.label,
                          indicatorPadding: EdgeInsets.only(bottom: 4.0),
                          indicatorWeight: 3.0,
                          tabs: [
                            Tab(
                              text: "UPCOMING".toUpperCase(),
                            ),
                            Tab(
                              text: "top-rated".toUpperCase(),
                            )
                          ]),
                    ),
                    // tabbar view
                    Container(
                      height: 200,
//                      color: Colors.amber,
                      child: TabBarView(controller: _tabController, children: [
                        // listview
                        Container(
                          height: 200,
                          child: ListView(
                            padding: EdgeInsets.only(top: 24.0),
//                              scrollDirection: Axis.vertical,
                            children: <Widget>[
                              Container(
                                margin: EdgeInsets.only(bottom: 16.0),
                                padding: EdgeInsets.only(right: 24.0),
                                height: 80,
//                                color: Colors.amber,
                                child: Row(
                                  children: <Widget>[
                                    Container(
                                      height: 80,
                                      width: 100,
                                      decoration: BoxDecoration(
                                          borderRadius: BorderRadius.circular(8.0),
                                          image: DecorationImage(
                                              image: NetworkImage(
                                                  "https://cdn.pixabay.com/photo/2019/09/30/15/53/train-4516149__340.jpg"),
                                              fit: BoxFit.fill)),
                                    ),
                                    SizedBox(width: 8.0),
                                    Column(
                                      crossAxisAlignment: CrossAxisAlignment.start,
                                      mainAxisAlignment: MainAxisAlignment.center,
                                      children: <Widget>[
                                        // text
                                        Text(
                                          "04/28 - 05/05",
                                          style: TextStyle(
                                              color: Colors.blue,
                                              fontSize: 14.0,
                                              fontWeight: FontWeight.w600,
                                              height: 1.2),
                                        ),
                                        Text(
                                          "Indian Shocky Hills",
                                          style: TextStyle(
                                              color: Colors.black,
                                              fontSize: 14.0,
                                              fontWeight: FontWeight.w600,
                                              height: 1.2),
                                        ),
                                        Row(
                                          children: <Widget>[
                                            Icon(
                                              Icons.location_on,
                                              size: 16.0,
                                              color: Colors.grey,
                                            ),
                                            Text(
                                              "Marve Land, IN",
                                              style: TextStyle(
                                                  color: Colors.grey,
                                                  fontSize: 14.0,
                                                  fontWeight: FontWeight.w600,
                                                  height: 1.2),
                                            ),
                                          ],
                                        ),
                                      ],
                                    ),
                                    Spacer(),
                                    Text(
                                      "\$254",
                                      style: TextStyle(
                                          color: Colors.black,
                                          fontSize: 16.0,
                                          fontWeight: FontWeight.bold),
                                    )
                                  ],
                                ),
                              ),
                              Container(
                                margin: EdgeInsets.only(bottom: 16.0),
                                padding: EdgeInsets.only(right: 24.0),
                                height: 80,
//                                color: Colors.amber,
                                child: Row(
                                  children: <Widget>[
                                    Container(
                                      height: 80,
                                      width: 100,
                                      decoration: BoxDecoration(
                                          borderRadius: BorderRadius.circular(8.0),
                                          image: DecorationImage(
                                              image: NetworkImage(
                                                  "https://cdn.pixabay.com/photo/2019/09/27/11/52/synchronization-4508329__340.jpg"),
                                              fit: BoxFit.fill)),
                                    ),
                                    SizedBox(width: 8.0),
                                    Column(
                                      crossAxisAlignment: CrossAxisAlignment.start,
                                      mainAxisAlignment: MainAxisAlignment.center,
                                      children: <Widget>[
                                        // text
                                        Text(
                                          "04/28 - 05/05",
                                          style: TextStyle(
                                              color: Colors.blue,
                                              fontSize: 14.0,
                                              fontWeight: FontWeight.w600,
                                              height: 1.2),
                                        ),
                                        Text(
                                          "Critiriz Sea",
                                          style: TextStyle(
                                              color: Colors.black,
                                              fontSize: 14.0,
                                              fontWeight: FontWeight.w600,
                                              height: 1.2),
                                        ),
                                        Row(
                                          children: <Widget>[
                                            Icon(
                                              Icons.location_on,
                                              size: 16.0,
                                              color: Colors.grey,
                                            ),
                                            Text(
                                              "Marve Land, IN",
                                              style: TextStyle(
                                                  color: Colors.grey,
                                                  fontSize: 14.0,
                                                  fontWeight: FontWeight.w600,
                                                  height: 1.2),
                                            ),
                                          ],
                                        ),
                                      ],
                                    ),
                                    Spacer(),
                                    Text(
                                      "\120",
                                      style: TextStyle(
                                          color: Colors.black,
                                          fontSize: 16.0,
                                          fontWeight: FontWeight.bold),
                                    )
                                  ],
                                ),
                              ),
                              Container(
                                margin: EdgeInsets.only(bottom: 16.0),
                                padding: EdgeInsets.only(right: 24.0),
                                height: 80,
//                                color: Colors.amber,
                                child: Row(
                                  children: <Widget>[
                                    Container(
                                      height: 80,
                                      width: 100,
                                      decoration: BoxDecoration(
                                          borderRadius: BorderRadius.circular(8.0),
                                          image: DecorationImage(
                                              image: NetworkImage(
                                                  "https://cdn.pixabay.com/photo/2019/09/30/15/53/train-4516149__340.jpg"),
                                              fit: BoxFit.fill)),
                                    ),
                                    SizedBox(width: 8.0),
                                    Column(
                                      crossAxisAlignment: CrossAxisAlignment.start,
                                      mainAxisAlignment: MainAxisAlignment.center,
                                      children: <Widget>[
                                        // text
                                        Text(
                                          "04/28 - 05/05",
                                          style: TextStyle(
                                              color: Colors.blue,
                                              fontSize: 14.0,
                                              fontWeight: FontWeight.w600,
                                              height: 1.2),
                                        ),
                                        Text(
                                          "Indian Shocky Hills",
                                          style: TextStyle(
                                              color: Colors.black,
                                              fontSize: 14.0,
                                              fontWeight: FontWeight.w600,
                                              height: 1.2),
                                        ),
                                        Row(
                                          children: <Widget>[
                                            Icon(
                                              Icons.location_on,
                                              size: 16.0,
                                              color: Colors.grey,
                                            ),
                                            Text(
                                              "Marve Land, IN",
                                              style: TextStyle(
                                                  color: Colors.grey,
                                                  fontSize: 14.0,
                                                  fontWeight: FontWeight.w600,
                                                  height: 1.2),
                                            ),
                                          ],
                                        ),
                                      ],
                                    ),
                                    Spacer(),
                                    Text(
                                      "\$254",
                                      style: TextStyle(
                                          color: Colors.black,
                                          fontSize: 16.0,
                                          fontWeight: FontWeight.bold),
                                    )
                                  ],
                                ),
                              ),
                            ],
                          ),
                        ),
                        // empty box
                        Placeholder(),
                      ]),
                    )
                  ],
                ),
              ),
            ),
          )
        ],
      ),
    );
  }
}

class myClipper extends CustomClipper<Path> {
  @override
  Path getClip(Size size) {
    var path = new Path();
    path.lineTo(0, 0);
    path.quadraticBezierTo(size.width * 0.01, size.height * 0.9, size.width * 0.3, size.height);
    path.lineTo(size.width, size.height);
    path.lineTo(size.width, 0);
    return path;
  }

  @override
  bool shouldReclip(CustomClipper<Path> oldClipper) => false;
}
