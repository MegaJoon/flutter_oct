import 'package:flutter/material.dart';
import 'package:badges/badges.dart';
import 'package:dots_indicator/dots_indicator.dart';
import 'package:flutter_oct/1025/weapon_list.dart';

import 'add_page.dart';
import 'bottom_tab.dart';

// https://dribbble.com/shots/7807406-Knights-shop/attachments/463368?mode=media

class KnightsApp extends StatefulWidget {
  @override
  _KnightsAppState createState() => _KnightsAppState();
}

class _KnightsAppState extends State<KnightsApp> {
  List<Widget> pages;

  Color _color = Color.fromRGBO(136, 123, 121, 1);

  int currentIndex = 1; // bottom bar index

  int selectedIndex = 0; // pageview index

  PageController _pageController;

  void _onTab(int index) {
    setState(() {
      currentIndex = index;
    });
  }

  @override
  void initState() {
    // TODO: implement initState
    _pageController =
        PageController(initialPage: selectedIndex, viewportFraction: 0.40);
    super.initState();
  }

  @override
  Widget build(BuildContext context) {
    _definePages();
    return Scaffold(
      body: Stack(
        children: <Widget>[
          // main
          Positioned(
            top: 0,
            left: 24.0,
            right: 0,
            bottom: 64.0,
            child: pages[currentIndex],
          ),

          // bottombar
          Positioned(
            bottom: 0,
            left: 0,
            right: 0,
            child: Container(
              margin: EdgeInsets.symmetric(horizontal: 24.0),
              height: 64.0,
//              color: Colors.amber,
              child: Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: <Widget>[
                  BottomTab(
                    iconData: Icons.home,
                    text: "Home",
                    isSelected: currentIndex == 0,
                    onTab: () {
                      _onTab(0);
                    },
                  ),
                  BottomTab(
                    iconData: Icons.menu,
                    text: "Shop",
                    isSelected: currentIndex == 1,
                    onTab: () {
                      _onTab(1);
                    },
                  ),
                  BottomTab(
                    iconData: Icons.bookmark_border,
                    text: "Mark",
                    isSelected: currentIndex == 2,
                    onTab: () {
                      _onTab(2);
                    },
                  ),
                  BottomTab(
                    iconData: Icons.person_outline,
                    text: "User",
                    isSelected: currentIndex == 3,
                    onTab: () {
                      _onTab(3);
                    },
                  ),
                ],
              ),
            ),
          )
        ],
      ),
    );
  }

  _definePages() {
    pages = [
      Placeholder(
        color: Colors.red,
      ),

      // main pages
      Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: <Widget>[
          // appbar
          SafeArea(
            top: true,
            left: true,
            right: true,
            child: Container(
              margin: EdgeInsets.only(right: 24.0, bottom: 16.0),
              height: 32.0,
              child: Row(
                children: <Widget>[
                  Icon(
                    Icons.menu,
                    size: 28.0,
                    color: _color,
                  ),
                  Spacer(),
                  Badge(
                    child: Icon(
                      Icons.shopping_basket,
                      size: 28.0,
                      color: _color,
                    ),
                    padding: EdgeInsets.all(4.0),
                    showBadge: true,
                    position: BadgePosition.topRight(top: 5.0, right: 0.0),
                  ),
                ],
              ),
            ),
          ),

          // title
          Text(
            "Knights shop",
            style: TextStyle(
                color: _color, fontSize: 40.0, fontWeight: FontWeight.bold),
          ),

          // listview
          Container(
            margin: EdgeInsets.only(top: 16.0, bottom: 32.0),
            height: 60.0,
            child: ListView(
              scrollDirection: Axis.horizontal,
              padding: EdgeInsets.zero,
              shrinkWrap: true,
              physics: BouncingScrollPhysics(),
              children: <Widget>[
                Container(
                  margin: EdgeInsets.only(right: 36.0),
                  width: 60.0,
                  decoration: BoxDecoration(
                      borderRadius: BorderRadius.circular(12.0),
                      color: _color,
                      boxShadow: [
                        BoxShadow(
                            color: Colors.black12,
                            spreadRadius: 2,
                            blurRadius: 4)
                      ]),
                  child: Center(
                      child: Icon(
                    Icons.favorite_border,
                    size: 32.0,
                    color: Colors.white,
                  )),
                ),
                Container(
                  margin: EdgeInsets.only(right: 36.0),
                  width: 60.0,
                  decoration: BoxDecoration(
                    borderRadius: BorderRadius.circular(12.0),
                    color: Colors.grey[200],
//                      boxShadow: [BoxShadow(color: Colors.black12, spreadRadius: 2, blurRadius: 4)]
                  ),
                  child: Center(
                      child: Icon(
                    Icons.favorite_border,
                    size: 32.0,
                    color: _color,
                  )),
                ),
                Container(
                  margin: EdgeInsets.only(right: 36.0),
                  width: 60.0,
                  decoration: BoxDecoration(
                    borderRadius: BorderRadius.circular(12.0),
                    color: Colors.grey[200],
//                      boxShadow: [BoxShadow(color: Colors.black12, spreadRadius: 2, blurRadius: 4)]
                  ),
                  child: Center(
                      child: Icon(
                    Icons.favorite_border,
                    size: 32.0,
                    color: _color,
                  )),
                ),
                Container(
                  margin: EdgeInsets.only(right: 36.0),
                  width: 60.0,
                  decoration: BoxDecoration(
                    borderRadius: BorderRadius.circular(12.0),
                    color: Colors.grey[200],
//                      boxShadow: [BoxShadow(color: Colors.black12, spreadRadius: 2, blurRadius: 4)]
                  ),
                  child: Center(
                      child: Icon(
                    Icons.favorite_border,
                    size: 32.0,
                    color: _color,
                  )),
                ),
              ],
            ),
          ),

          Padding(
            padding: const EdgeInsets.only(right: 16.0),
            child: Row(
              children: <Widget>[
                Text(
                  "Swords",
                  style: TextStyle(
                      color: _color,
                      fontSize: 24.0,
                      fontWeight: FontWeight.bold),
                ),
                Spacer(),
                DotsIndicator(
                  dotsCount: weapon.length,
                  position: selectedIndex,
                  decorator: DotsDecorator(
                    color: _color,
                    activeColor: _color,
                    activeShape: StadiumBorder(),
                    activeSize: Size(32.0, 4.0),
                    size: Size(4.0, 4.0),
                  ),
                ),
              ],
            ),
          ),

          Container(
            height: 300.0,
            child: PageView.builder(
              scrollDirection: Axis.horizontal,
              itemCount: weapon.length,
              controller: _pageController,
              onPageChanged: (_selectedIndex) {
                setState(() {
                  selectedIndex = _selectedIndex;
                });
              },
              itemBuilder: (BuildContext context, int index) {
                return Transform.translate(
                  offset: Offset(-50.0, 16.0),
                  child: InkWell(
                    onTap: () {
                      setState(() {
                        Navigator.push(context,
                            MaterialPageRoute(builder: (context) => AddPage(selectedIndex)));
                      });
                    },
                    child: Hero(
                      tag: "weapon $index",
                      child: Container(
                        margin: EdgeInsets.only(right: 24.0),
                        height: 300.0,
                        width: 120.0,
                        child: Column(
                          crossAxisAlignment: CrossAxisAlignment.start,
                          children: <Widget>[
                            Flexible(
                              flex: 8,
                              child: Container(
                                decoration: BoxDecoration(
                                    borderRadius: BorderRadius.circular(16.0),
                                    color: Colors.grey[200],
                                    image: DecorationImage(
                                        image: AssetImage(weapon[index].image),
                                        fit: BoxFit.contain)),
                              ),
                            ),
                            Flexible(
                              flex: 1,
                              child: Text(
                                weapon[index].name,
                                style: TextStyle(
                                    color: Colors.grey[300],
                                    fontWeight: FontWeight.bold,
                                    fontSize: 16.0),
                              ),
                            ),
                            Flexible(
                              flex: 1,
                              child: Text(
                                weapon[index].price,
                                style: TextStyle(
                                    color: _color,
                                    fontWeight: FontWeight.bold,
                                    fontSize: 16.0),
                              ),
                            ),
                          ],
                        ),
                      ),
                    ),
                  ),
                );
              },
            ),
          )
        ],
      ),
      Placeholder(
        color: Colors.black,
      ),
      Placeholder(
        color: Colors.indigo,
      ),
    ];
  }
}
