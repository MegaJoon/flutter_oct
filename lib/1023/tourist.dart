import 'package:flutter/material.dart';
import 'package:badges/badges.dart';

import 'myTab.dart';

// https://dribbble.com/shots/7710168-Tourists-Mobile-App/attachments/431983?mode=media

class Tourist extends StatefulWidget {
  @override
  _TouristState createState() => _TouristState();
}

class _TouristState extends State<Tourist> {
  String _image = "assets/hongdduk.jpg";

  //
  String _image2 = "https://cdn.pixabay.com/photo/2019/08/28/14/24/tokyo-4436914__340.jpg";
  String _image3 = "https://cdn.pixabay.com/photo/2019/10/21/21/56/dew-4567294__340.jpg";
  String _image4 = "https://cdn.pixabay.com/photo/2019/10/15/13/36/mist-4551691__340.jpg";

  Color _backgroundColor = Color.fromRGBO(255, 249, 244, 1);

  int currentIndex = 0;

  List<Widget> pages;

  void _onClicked(int index) {
    setState(() {
      currentIndex = index;
    });
  }

  @override
  Widget build(BuildContext context) {
    _definePages();

    return Scaffold(
      body: Container(
        child: Row(
          children: <Widget>[
            // tabbar
            Flexible(
              flex: 2,
              child: Container(
                decoration: BoxDecoration(
                  gradient: LinearGradient(colors: [_backgroundColor, Colors.white], begin: Alignment.topCenter, end: Alignment.bottomCenter),
                ),
                child: SafeArea(
                  child: Column(
                    children: <Widget>[
                      // menu icon
                      Flexible(
                        flex: 1,
                        child: SizedBox(
                            height: 40.0,
                            child: Icon(
                              Icons.menu,
                              size: 20.0,
                              color: Colors.black,
                            )),
                      ),

                      // listview
                      Flexible(
                        flex: 12,
                        child: Padding(
                          padding: const EdgeInsets.only(bottom: 52.0),
                          child: Column(
                            mainAxisAlignment: MainAxisAlignment.spaceBetween,
                            children: <Widget>[
                              MyTab(
                                title: "All",
                                color: Colors.black,
                                isSelected: currentIndex == 0,
                                onClicked: () {
                                  _onClicked(0);
                                },
                              ),
                              MyTab(
                                title: "Outdoor",
                                color: Colors.green,
                                isSelected: currentIndex == 1,
                                onClicked: () {
                                  _onClicked(1);
                                },
                              ),
                              MyTab(
                                title: "Indoor",
                                color: Colors.amber,
                                isSelected: currentIndex == 2,
                                onClicked: () {
                                  _onClicked(2);
                                },
                              ),
                              MyTab(
                                title: "Intellectual",
                                color: Colors.indigo,
                                isSelected: currentIndex == 3,
                                onClicked: () {
                                  _onClicked(3);
                                },
                              ),
                              MyTab(
                                title: "Architecture",
                                color: Colors.red,
                                isSelected: currentIndex == 4,
                                onClicked: () {
                                  _onClicked(4);
                                },
                              ),
                            ],
                          ),
                        ),
                      ),

                      // profile image container
                      Flexible(
                        flex: 1,
                        child: Center(
                          child: Container(
                            height: 40.0,
                            width: 40.0,
                            decoration: BoxDecoration(
                              shape: BoxShape.circle,
                              image: DecorationImage(image: AssetImage(_image), fit: BoxFit.fill),
                              boxShadow: [
                                BoxShadow(color: Colors.black12, blurRadius: 4, spreadRadius: 2),
                              ],
                            ),
                          ),
                        ),
                      ),
                    ],
                  ),
                ),
              ),
            ),

            // main
            Flexible(
              flex: 8,
              child: pages[currentIndex],
            ),
          ],
        ),
      ),
    );
  }

  _definePages() {
    pages = [
      // first page
      SingleChildScrollView(
        child: Padding(
          padding: const EdgeInsets.only(left: 16.0, right: 16.0, top: 16.0),
          child: Column(
            mainAxisAlignment: MainAxisAlignment.start,
            crossAxisAlignment: CrossAxisAlignment.start,
            children: <Widget>[
              // appbar
              SafeArea(
                top: true,
                left: true,
                right: true,
                child: Row(
                  children: <Widget>[
                    Spacer(),
                    Icon(
                      Icons.search,
                      size: 28.0,
                      color: Colors.black,
                    ),
                    SizedBox(
                      width: 8.0,
                    ),
                    Badge(
                      child: Icon(
                        Icons.bookmark_border,
                        size: 28.0,
                        color: Colors.black,
                      ),
                      showBadge: true,
                      position: BadgePosition.topRight(top: 0, right: 0),
                      badgeColor: Colors.deepOrange,
                      badgeContent: Text(
                        "5",
                        style: TextStyle(color: Colors.white, fontWeight: FontWeight.bold, fontSize: 8.0),
                      ),
                      padding: EdgeInsets.all(4.0),
                    ),
                  ],
                ),
              ),

              Text(
                "Sights",
                style: TextStyle(color: Colors.black, fontSize: 36.0, fontWeight: FontWeight.w600),
              ),
              Row(
                children: <Widget>[
                  Text(
                    "Boston",
                    style: TextStyle(color: Colors.grey, fontSize: 36.0, fontWeight: FontWeight.w600),
                  ),
                  Icon(
                    Icons.keyboard_arrow_down,
                    size: 32.0,
                    color: Colors.grey,
                  ),
                ],
              ),

              SizedBox(height: 16.0,),

              Container(
                margin: EdgeInsets.only(top: 16.0, bottom: 16.0),
                height: 201.0,
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: <Widget>[
                    Text(
                      "Museum of Fine Arts",
                      style: TextStyle(color: Colors.black, fontSize: 16.0, fontWeight: FontWeight.w400),
                    ),
                    Container(
                      margin: EdgeInsets.only(top: 8.0, right: 100.0, bottom: 8.0),
                      height: 150.0,
                      decoration: BoxDecoration(
                          borderRadius: BorderRadius.circular(16.0),
                          boxShadow: [BoxShadow(color: Colors.black12, spreadRadius: 2, blurRadius: 4)],
                          image: DecorationImage(image: NetworkImage(_image2), fit: BoxFit.fill)),
                    ),
                    Row(
                      children: <Widget>[
                        Container(
                          margin: EdgeInsets.only(right: 8.0),
                          height: 8.0,
                          width: 2.0,
                          color: Colors.deepOrange,
                        ),
                        Text(
                          "indoor".toUpperCase(),
                          style: TextStyle(color: Colors.grey, fontSize: 12.0, fontWeight: FontWeight.w400),
                        ),
                        SizedBox(
                          width: 12.0,
                        ),
                        Icon(
                          Icons.bookmark,
                          size: 16.0,
                          color: Colors.deepOrange,
                        ),
                      ],
                    )
                  ],
                ),
              ),
              Container(
                margin: EdgeInsets.only(top: 16.0, bottom: 16.0),
                height: 201.0,
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: <Widget>[
                    Text(
                      "Public Library",
                      style: TextStyle(color: Colors.black, fontSize: 16.0, fontWeight: FontWeight.w400),
                    ),
                    Container(
                      margin: EdgeInsets.only(top: 8.0, right: 100.0, bottom: 8.0),
                      height: 150.0,
                      decoration: BoxDecoration(
                          borderRadius: BorderRadius.circular(16.0),
                          boxShadow: [BoxShadow(color: Colors.black12, spreadRadius: 2, blurRadius: 4)],
                          image: DecorationImage(image: NetworkImage(_image3), fit: BoxFit.fill)),
                    ),
                    Row(
                      children: <Widget>[
                        Container(
                          margin: EdgeInsets.only(right: 8.0),
                          height: 8.0,
                          width: 2.0,
                          color: Colors.indigo
                        ),
                        Text(
                          "intellectual".toUpperCase(),
                          style: TextStyle(color: Colors.grey, fontSize: 12.0, fontWeight: FontWeight.w400),
                        ),
                        SizedBox(
                          width: 12.0,
                        ),
                        Icon(
                          Icons.bookmark,
                          size: 16.0,
                          color: Colors.grey,
                        ),
                      ],
                    )
                  ],
                ),
              ),
              Container(
                margin: EdgeInsets.only(top: 16.0, bottom: 16.0),
                height: 201.0,
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: <Widget>[
                    Text(
                      "Boston Common",
                      style: TextStyle(color: Colors.black, fontSize: 16.0, fontWeight: FontWeight.w400),
                    ),
                    Container(
                      margin: EdgeInsets.only(top: 8.0, right: 100.0, bottom: 8.0),
                      height: 150.0,
                      decoration: BoxDecoration(
                          borderRadius: BorderRadius.circular(16.0),
                          boxShadow: [BoxShadow(color: Colors.black12, spreadRadius: 2, blurRadius: 4)],
                          image: DecorationImage(image: NetworkImage(_image4), fit: BoxFit.fill)),
                    ),
                    Row(
                      children: <Widget>[
                        Container(
                          margin: EdgeInsets.only(right: 8.0),
                          height: 8.0,
                          width: 2.0,
                          color: Colors.indigo
                        ),
                        Text(
                          "intellectual".toUpperCase(),
                          style: TextStyle(color: Colors.grey, fontSize: 12.0, fontWeight: FontWeight.w400),
                        ),
                        SizedBox(
                          width: 12.0,
                        ),
                        Icon(
                          Icons.bookmark,
                          size: 16.0,
                          color: Colors.grey,
                        ),
                      ],
                    )
                  ],
                ),
              ),
              Container(
                margin: EdgeInsets.only(top: 16.0, bottom: 16.0),
                height: 201.0,
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: <Widget>[
                    Text(
                      "Boston Common",
                      style: TextStyle(color: Colors.black, fontSize: 16.0, fontWeight: FontWeight.w400),
                    ),
                    Container(
                      margin: EdgeInsets.only(top: 8.0, right: 100.0, bottom: 8.0),
                      height: 150.0,
                      decoration: BoxDecoration(
                          borderRadius: BorderRadius.circular(16.0),
                          boxShadow: [BoxShadow(color: Colors.black12, spreadRadius: 2, blurRadius: 4)],
                          image: DecorationImage(image: NetworkImage(_image4), fit: BoxFit.fill)),
                    ),
                    Row(
                      children: <Widget>[
                        Container(
                          margin: EdgeInsets.only(right: 8.0),
                          height: 8.0,
                          width: 2.0,
                          color: Colors.indigo
                        ),
                        Text(
                          "intellectual".toUpperCase(),
                          style: TextStyle(color: Colors.grey, fontSize: 12.0, fontWeight: FontWeight.w400),
                        ),
                        SizedBox(
                          width: 12.0,
                        ),
                        Icon(
                          Icons.bookmark,
                          size: 16.0,
                          color: Colors.grey,
                        ),
                      ],
                    )
                  ],
                ),
              ),
            ],
          ),
        ),
      ),
      Placeholder(
        color: Colors.green,
      ),
      Placeholder(
        color: Colors.amber,
      ),
      Placeholder(
        color: Colors.indigo,
      ),
      Placeholder(
        color: Colors.red,
      ),
    ];
  }
}
