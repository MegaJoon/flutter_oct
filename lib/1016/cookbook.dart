import 'package:flutter/material.dart';
import 'package:dots_indicator/dots_indicator.dart';

import 'mytab.dart';

// https://dribbble.com/shots/7536392-Cookbook-UI-mobile-app-design/attachments/342061?mode=media

class CookBook extends StatefulWidget {
  @override
  _CookBookState createState() => _CookBookState();
}

class _CookBookState extends State<CookBook> {
  String _bottomImage = "https://cdn.pixabay.com/photo/2016/05/31/13/01/raspberries-1426859__340.jpg";
  String _bottomImage2 = "https://cdn.pixabay.com/photo/2017/03/23/19/57/asparagus-2169305__340.jpg";

  String _image = "https://cdn.pixabay.com/photo/2019/09/29/08/12/coffee-4512564__340.jpg";

  int currentIndex = 0; // using tabbar

  PageController _pageController;
  int _selectedIndex = 0; // using pageview

  @override
  void initState() {
    // TODO: implement initState
    super.initState();
    _pageController = PageController(initialPage: _selectedIndex, viewportFraction: 0.80);
  }

  void onTabTap(int index) {
    setState(() {
      currentIndex = index;
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Padding(
        padding: const EdgeInsets.only(left: 24.0),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: <Widget>[
            // appbar
            SafeArea(
              top: true,
              left: true,
              right: true,
              child: Container(
                margin: EdgeInsets.only(right: 24.0),
                height: 40.0,
                child: Row(
                  children: <Widget>[
                    Text(
                      "Dinner",
                      style: TextStyle(color: Colors.black, fontSize: 28.0, fontWeight: FontWeight.bold),
                    ),
                    Spacer(),
                    Icon(
                      Icons.more_vert,
                      size: 28.0,
                      color: Colors.black,
                    ),
                  ],
                ),
              ),
            ),

            // container
            Container(
              margin: EdgeInsets.only(top: 20.0),
              height: 400.0,
              child: Row(
                children: <Widget>[
                  Flexible(
                    flex: 2,
                    child: Stack(
                      children: <Widget>[
                        Positioned(
                          top: 0,
                          bottom: 0,
                          left: -24.0,
                          child: Column(
                            mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                            children: <Widget>[
                              MyTab(
                                  text: "Pancakes",
                                  isSelected: currentIndex == 0,
                                  onTabTap: () {
                                    onTabTap(0);
                                  }),
                              MyTab(
                                  text: "Bread",
                                  isSelected: currentIndex == 1,
                                  onTabTap: () {
                                    onTabTap(1);
                                  }),
                              MyTab(
                                  text: "Cakes",
                                  isSelected: currentIndex == 2,
                                  onTabTap: () {
                                    onTabTap(2);
                                  }),
                            ],
                          ),
                        ),
                      ],
                    ),
                  ),
                  Flexible(
                    flex: 25,
                    child: PageView.builder(
                        scrollDirection: Axis.horizontal,
                        controller: _pageController,
                        itemCount: 5,
                        physics: BouncingScrollPhysics(),
                        onPageChanged: (selectedIndex) {
                          setState(() {
                            _selectedIndex = selectedIndex;
                            print("_selectedIndex = $_selectedIndex");
                            print("selectedIndex = $selectedIndex");
                          });
                        },
                        itemBuilder: (BuildContext context, int idx) {
                          print("idx = $idx");
                          return Container(
                            margin: EdgeInsets.only(
                                top: 16.0, bottom: 32.0 + (_selectedIndex - idx).abs().toDouble() * 60, right: 32.0),
                            padding: EdgeInsets.all(16.0),
                            height: 300.0,
                            width: 200.0,
                            decoration: BoxDecoration(
                              borderRadius: BorderRadius.circular(16.0),
                              image: DecorationImage(image: NetworkImage(_image), fit: BoxFit.fill),
                            ),
                            child: Stack(
                              children: <Widget>[
                                Column(
                                  crossAxisAlignment: CrossAxisAlignment.start,
                                  mainAxisAlignment: MainAxisAlignment.start,
                                  children: <Widget>[
                                    Text(
                                      "With fruits",
                                      style: TextStyle(color: Colors.white, fontSize: 24.0, fontWeight: FontWeight.bold),
                                    ),
                                    Text(
                                      "aboris nisi laborum quis ea\naliquip quis aute\nincididunt.",
                                      style: TextStyle(color: Colors.white, fontSize: 14.0, fontWeight: FontWeight.w300),
                                    ),
                                  ],
                                ),
                                Positioned(
                                  right: 0,
                                  top: 0,
                                  child: Icon(
                                    Icons.favorite_border,
                                    size: 24.0,
                                    color: Colors.white,
                                  ),
                                )
                              ],
                            ),
                          );
                        }),
                  ),
                ],
              ),
            ),

            // dot indicator
            Container(
              margin: EdgeInsets.only(right: 80.0),
              alignment: Alignment.centerRight,
              height: 20.0,
              child: DotsIndicator(
                  dotsCount: 3,
                  position: _selectedIndex,
                  decorator: DotsDecorator(
                      size: Size(24.0, 3.0),
                      activeSize: Size(24.0, 3.0),
                      activeColor: Colors.black87,
                      activeShape: StadiumBorder(),
                      shape: StadiumBorder())),
            ),

            // popular
            Text(
              "Pupular",
              style: TextStyle(color: Colors.black, fontSize: 24.0, fontWeight: FontWeight.bold),
            ),
            Container(
              margin: EdgeInsets.only(top: 8.0, right: 24.0),
              height: 60.0,
              child: Stack(
                children: <Widget>[
                  Container(
                    height: 60.0,
                    decoration: BoxDecoration(
                        borderRadius: BorderRadius.circular(8.0),
                        image: DecorationImage(image: NetworkImage(_bottomImage), fit: BoxFit.fitWidth)),
                  ),
                  Container(
                    height: 60.0,
                    decoration: BoxDecoration(borderRadius: BorderRadius.circular(8.0), color: Colors.indigo.withOpacity(0.5)),
                    child: Column(
                      crossAxisAlignment: CrossAxisAlignment.center,
                      mainAxisAlignment: MainAxisAlignment.center,
                      children: <Widget>[
                        Text(
                          "Salads",
                          style: TextStyle(color: Colors.white, fontSize: 16.0, fontWeight: FontWeight.bold),
                        ),
                        SizedBox(
                          height: 4.0,
                        ),
                        Row(
                          mainAxisAlignment: MainAxisAlignment.center,
                          crossAxisAlignment: CrossAxisAlignment.center,
                          children: <Widget>[
                            Icon(
                              Icons.star_border,
                              size: 12.0,
                              color: Colors.white,
                            ),
                            Icon(
                              Icons.star_border,
                              size: 12.0,
                              color: Colors.white,
                            ),
                            Icon(
                              Icons.star_border,
                              size: 12.0,
                              color: Colors.white,
                            ),
                            Icon(
                              Icons.star_border,
                              size: 12.0,
                              color: Colors.white,
                            ),
                            Icon(
                              Icons.star_border,
                              size: 12.0,
                              color: Colors.white,
                            ),
                          ],
                        )
                      ],
                    ),
                  )
                ],
              ),
            ),
            Container(
              margin: EdgeInsets.only(top: 12.0, right: 24.0),
              height: 60.0,
              child: Stack(
                children: <Widget>[
                  Container(
                    height: 60.0,
                    decoration: BoxDecoration(
                        borderRadius: BorderRadius.circular(8.0),
                        image: DecorationImage(image: NetworkImage(_bottomImage2), fit: BoxFit.fitWidth)),
                  ),
                  Container(
                    height: 60.0,
                    decoration: BoxDecoration(borderRadius: BorderRadius.circular(8.0), color: Colors.indigo.withOpacity(0.5)),
                    child: Column(
                      crossAxisAlignment: CrossAxisAlignment.center,
                      mainAxisAlignment: MainAxisAlignment.center,
                      children: <Widget>[
                        Text(
                          "Soups",
                          style: TextStyle(color: Colors.white, fontSize: 16.0, fontWeight: FontWeight.bold),
                        ),
                        SizedBox(
                          height: 4.0,
                        ),
                        Row(
                          mainAxisAlignment: MainAxisAlignment.center,
                          crossAxisAlignment: CrossAxisAlignment.center,
                          children: <Widget>[
                            Icon(
                              Icons.star_border,
                              size: 12.0,
                              color: Colors.white,
                            ),
                            Icon(
                              Icons.star_border,
                              size: 12.0,
                              color: Colors.white,
                            ),
                            Icon(
                              Icons.star_border,
                              size: 12.0,
                              color: Colors.white,
                            ),
                            Icon(
                              Icons.star_border,
                              size: 12.0,
                              color: Colors.white,
                            ),
                            Icon(
                              Icons.star_border,
                              size: 12.0,
                              color: Colors.white,
                            ),
                          ],
                        )
                      ],
                    ),
                  )
                ],
              ),
            ),
          ],
        ),
      ),
    );
  }
}
