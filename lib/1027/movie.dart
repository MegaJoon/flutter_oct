import 'package:flutter/material.dart';
import 'package:flutter_oct/1027/itemlist.dart';
import 'package:flutter_oct/1027/show_page.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';

// https://dribbble.com/shots/7256728-MOVIE-APP

class MovieApp2 extends StatefulWidget {
  @override
  _MovieApp2State createState() => _MovieApp2State();
}

class _MovieApp2State extends State<MovieApp2> with TickerProviderStateMixin {
  List<Widget> pages;

  int _currentIndex = 1; // bottomNavigationBar Index;
  int selectedIndex = 0; // PageView Index;

  TabController _tabController;

  PageController _pageController;

  TextEditingController controller;

  Color _color = Color.fromRGBO(44, 43, 46, 1);

  @override
  void initState() {
    _tabController = TabController(length: 3, vsync: this);
    _pageController = PageController(initialPage: selectedIndex, viewportFraction: 0.8);
    super.initState();
  }

  @override
  Widget build(BuildContext context) {
    _definePages();

    return Scaffold(
      backgroundColor: Colors.black,
      body: pages[_currentIndex],

      // bottom bar
      bottomNavigationBar: BottomNavigationBar(
          currentIndex: _currentIndex,
          onTap: (bottomIndex) {
            setState(() {
              _currentIndex = bottomIndex;
            });
          },
          showSelectedLabels: true,
          showUnselectedLabels: true,
          backgroundColor: Colors.black,
          unselectedItemColor: Colors.white,
          unselectedLabelStyle: TextStyle(fontWeight: FontWeight.w400),
          unselectedFontSize: 10.0,
          unselectedIconTheme: IconThemeData(size: 16.0, color: Colors.white),
          selectedItemColor: Colors.amber,
          selectedFontSize: 10.0,
          selectedLabelStyle: TextStyle(fontWeight: FontWeight.w400),
          selectedIconTheme: IconThemeData(size: 24.0, color: Colors.amber),
          items: [
            BottomNavigationBarItem(
              icon: Icon(FontAwesomeIcons.tape),
              title: Text("Home"),
            ),
            BottomNavigationBarItem(
              icon: Icon(FontAwesomeIcons.clone),
              title: Text("Movie"),
              backgroundColor: Colors.black,
            ),
            BottomNavigationBarItem(
              icon: Icon(FontAwesomeIcons.commentAlt),
              title: Text("Mail"),
            ),
            BottomNavigationBarItem(
              icon: Icon(FontAwesomeIcons.cloudDownloadAlt),
              title: Text("Cloud"),
            ),
            BottomNavigationBarItem(
              icon: Icon(FontAwesomeIcons.user),
              title: Text("User"),
            ),
          ]),
    );
  }

  _definePages() {
    pages = [
      Placeholder(
        color: Colors.red,
      ),

      // second page
      Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        mainAxisAlignment: MainAxisAlignment.start,
        children: <Widget>[
          // tabbar
          SafeArea(
            top: true,
            left: true,
            right: true,
            child: Container(
              alignment: Alignment.centerLeft,
              height: 40.0,
              child: TabBar(
                controller: _tabController,
                isScrollable: true,
                indicatorColor: Colors.amber,
                indicatorSize: TabBarIndicatorSize.label,
                unselectedLabelStyle: TextStyle(fontWeight: FontWeight.w400, fontSize: 16.0),
                labelStyle: TextStyle(fontWeight: FontWeight.bold, fontSize: 20.0),
                unselectedLabelColor: Colors.grey,
                labelColor: Colors.amber,
                tabs: <Widget>[
                  Tab(text: "Tab 1"),
                  Tab(text: "Tab 2"),
                  Tab(text: "Tab 3"),
                ],
              ),
            ),
          ),

          // tabbarview
          Container(
            height: 560.0,
            child: TabBarView(controller: _tabController, children: [
              // first page
              SingleChildScrollView(
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  mainAxisAlignment: MainAxisAlignment.start,
                  children: <Widget>[
                    // textfield
                    Container(
                      padding: EdgeInsets.all(4.0),
                      margin: EdgeInsets.all(16.0),
                      height: 28.0,
                      decoration: BoxDecoration(
                        borderRadius: BorderRadius.circular(24.0),
                        color: _color,
                      ),
                      child: TextField(
                        controller: controller,
                        textAlign: TextAlign.center,
                        decoration: InputDecoration(
                          contentPadding: EdgeInsets.all(0.0),
                          hintText: "search...",
                          hintStyle: TextStyle(color: Colors.grey, fontSize: 16.0, fontWeight: FontWeight.w400),
                          alignLabelWithHint: true,
                          suffixIcon: Icon(
                            FontAwesomeIcons.search,
                            size: 16.0,
                            color: Colors.grey,
                          ),
                        ),
                      ),
                    ),

                    // pageview
                    Container(
                      height: 150.0,
                      child: PageView.builder(
                          controller: _pageController,
                          itemCount: itemList.length,
                          scrollDirection: Axis.horizontal,
                          onPageChanged: (_selectedIndex) {
                            setState(() {
                              selectedIndex = _selectedIndex;
                            });
                          },
                          itemBuilder: (BuildContext context, int index) {
                            double _paddingY = (selectedIndex - index).abs().toDouble() * 12.0;
                            return Transform.translate(
                              offset: Offset(-24.0, 0.0),
                              child: Container(
                                margin: EdgeInsets.only(right: 24.0),
                                padding: EdgeInsets.symmetric(vertical: _paddingY),
                                height: 150.0 - _paddingY,
                                child: Container(
                                  decoration: BoxDecoration(
                                    borderRadius: BorderRadius.circular(8.0),
                                    image: DecorationImage(image: AssetImage(itemList[index].image), fit: BoxFit.cover),
                                  ),
                                  child: selectedIndex == index
                                      ? Stack(
                                          children: <Widget>[
                                            Center(
                                              child: Icon(
                                                Icons.play_circle_filled,
                                                color: Colors.white,
                                                size: 36.0,
                                              ),
                                            ),
                                            Positioned(
                                              top: 100.0,
                                              bottom: 8.0,
                                              left: 16.0,
                                              right: 16.0,
                                              child: Row(
                                                children: <Widget>[
                                                  Flexible(
                                                    flex: 8,
                                                    fit: FlexFit.tight,
                                                    child: Column(
                                                      crossAxisAlignment: CrossAxisAlignment.start,
                                                      mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                                                      children: <Widget>[
                                                        Text(
                                                          itemList[index].title,
                                                          style: TextStyle(color: Colors.white, fontSize: 16.0, fontWeight: FontWeight.w600),
                                                        ),
                                                        Row(
                                                          children: <Widget>[
                                                            Text(
                                                              itemList[index].year,
                                                              style: TextStyle(color: Colors.grey, fontSize: 10.0, fontWeight: FontWeight.w600),
                                                            ),
                                                            Container(
                                                              margin: EdgeInsets.symmetric(horizontal: 4.0),
                                                              height: 8.0,
                                                              width: 1.0,
                                                              color: Colors.grey,
                                                            ),
                                                            Text(
                                                              itemList[index].age,
                                                              style: TextStyle(color: Colors.grey, fontSize: 10.0, fontWeight: FontWeight.w600),
                                                            ),
                                                            Container(
                                                              margin: EdgeInsets.symmetric(horizontal: 4.0),
                                                              height: 8.0,
                                                              width: 1.0,
                                                              color: Colors.grey,
                                                            ),
                                                            Text(
                                                              itemList[index].time,
                                                              style: TextStyle(color: Colors.grey, fontSize: 10.0, fontWeight: FontWeight.w600),
                                                            ),
                                                          ],
                                                        )
                                                      ],
                                                    ),
                                                  ),
                                                  Container(
                                                    width: 1.0,
                                                    color: Colors.white,
                                                  ),
                                                  Flexible(
                                                    flex: 2,
                                                    child: Column(
                                                      crossAxisAlignment: CrossAxisAlignment.center,
                                                      mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                                                      children: <Widget>[
                                                        Text(
                                                          itemList[index].score,
                                                          style: TextStyle(color: Colors.white, fontSize: 16.0, fontWeight: FontWeight.w400),
                                                        ),
                                                        Row(
                                                          mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                                                          crossAxisAlignment: CrossAxisAlignment.center,
                                                          children: <Widget>[
                                                            Icon(
                                                              Icons.star,
                                                              size: 10.0,
                                                              color: Colors.amber,
                                                            ),
                                                            Icon(
                                                              Icons.star,
                                                              size: 10.0,
                                                              color: Colors.amber,
                                                            ),
                                                            Icon(
                                                              Icons.star,
                                                              size: 10.0,
                                                              color: Colors.amber,
                                                            ),
                                                            Icon(
                                                              Icons.star,
                                                              size: 10.0,
                                                              color: Colors.amber,
                                                            ),
                                                            Icon(
                                                              Icons.star_half,
                                                              size: 10.0,
                                                              color: Colors.amber,
                                                            ),
                                                          ],
                                                        )
                                                      ],
                                                    ),
                                                  ),
                                                ],
                                              ),
                                            )
                                          ],
                                        )
                                      : Container(),
                                ),
                              ),
                            );
                          }),
                    ),

                    // Tag containers
                    Container(
                      margin: EdgeInsets.only(left: 16.0, right: 16.0, top: 32.0, bottom: 0.0),
                      height: 52.0,
                      child: Row(
                        crossAxisAlignment: CrossAxisAlignment.start,
                        mainAxisAlignment: MainAxisAlignment.spaceBetween,
                        children: <Widget>[
                          Column(
                            mainAxisAlignment: MainAxisAlignment.start,
                            children: <Widget>[
                              Container(
                                margin: EdgeInsets.only(bottom: 4.0),
                                width: 64.0,
                                height: 28.0,
                                decoration: ShapeDecoration(shape: StadiumBorder(), color: Colors.amber),
                                child: Center(
                                    child: Text(
                                  "Tag 1",
                                  style: TextStyle(color: Colors.black, fontSize: 14.0, fontWeight: FontWeight.w600),
                                )),
                              ),
                              Container(
                                height: 2.0,
                                width: 24.0,
                                color: Colors.amber,
                              )
                            ],
                          ),
                          Container(
                            width: 64.0,
                            height: 28.0,
                            decoration: ShapeDecoration(shape: StadiumBorder(), color: _color),
                            child: Center(
                                child: Text(
                              "Tag 2",
                              style: TextStyle(color: Colors.white, fontSize: 14.0, fontWeight: FontWeight.w600),
                            )),
                          ),
                          Container(
                            width: 64.0,
                            height: 28.0,
                            decoration: ShapeDecoration(shape: StadiumBorder(), color: _color),
                            child: Center(
                                child: Text(
                              "Tag 3",
                              style: TextStyle(color: Colors.white, fontSize: 14.0, fontWeight: FontWeight.w600),
                            )),
                          ),
                          Container(
                            width: 64.0,
                            height: 28.0,
                            decoration: ShapeDecoration(shape: StadiumBorder(), color: _color),
                            child: Center(
                                child: Text(
                              "Tag 4",
                              style: TextStyle(color: Colors.white, fontSize: 14.0, fontWeight: FontWeight.w600),
                            )),
                          ),
                          Container(
                            alignment: Alignment.topCenter,
                            width: 32.0,
                            height: 40.0,
                            child: Icon(
                              Icons.menu,
                              size: 28.0,
                              color: Colors.white,
                            ),
                          ),
                        ],
                      ),
                    ),

                    // 상영중
                    Container(
                      margin: EdgeInsets.only(left: 16.0),
                      height: 218.0,
                      child: Column(
                        children: <Widget>[
                          // text
                          Padding(
                            padding: const EdgeInsets.only(right: 16.0),
                            child: Row(
                              children: <Widget>[
                                Text(
                                  "상영중",
                                  style: TextStyle(color: Colors.white, fontSize: 20.0, fontWeight: FontWeight.w600),
                                ),
                                Spacer(),
                                Row(
                                  children: <Widget>[
                                    Text(
                                      "view all",
                                      style: TextStyle(color: Colors.white, fontSize: 12.0, fontWeight: FontWeight.w400),
                                    ),
                                    Icon(
                                      Icons.arrow_forward_ios,
                                      size: 12.0,
                                      color: Colors.amber,
                                    ),
                                  ],
                                )
                              ],
                            ),
                          ),
                          // ListView
                          Container(
                              height: 172.0,
                              child: ListView.builder(
                                  itemCount: itemList.length,
                                  scrollDirection: Axis.horizontal,
                                  shrinkWrap: true,
                                  padding: EdgeInsets.only(top: 8.0),
                                  physics: BouncingScrollPhysics(),
                                  reverse: true,
                                  itemBuilder: (BuildContext context, int idx) {
                                    return Padding(
                                      padding: const EdgeInsets.only(right: 24.0),
                                      child: Column(
                                        children: <Widget>[
                                          Hero(
                                            tag: "tag $idx",
                                            child: InkWell(
                                              onTap: (){
                                                setState(() {
                                                  Navigator.push(context, MaterialPageRoute(builder: (context) => ShowPage(idx)));
                                                });
                                              },
                                              child: Container(
                                                padding: EdgeInsets.only(bottom: 8.0, right: 8.0),
                                                alignment: Alignment.bottomRight,
                                                height: 150.0,
                                                width: 120.0,
                                                decoration: BoxDecoration(
                                                    borderRadius: BorderRadius.circular(8.0),
                                                    image: DecorationImage(image: AssetImage(itemList[idx].image), fit: BoxFit.fill)),
                                                child: Text(
                                                  itemList[idx].score,
                                                  style: TextStyle(color: Colors.amber, fontSize: 16.0, fontWeight: FontWeight.w600),
                                                ),
                                              ),
                                            ),
                                          ),
                                          Text(
                                            itemList[idx].title,
                                            style: TextStyle(color: Colors.white, fontSize: 12.0, fontWeight: FontWeight.bold),
                                          ),
                                        ],
                                      ),
                                    );
                                  })),
                        ],
                      ),
                    ),

                    // clone 1,2
                    Container(
                      margin: EdgeInsets.only(left: 16.0),
                      height: 218.0,
                      child: Column(
                        children: <Widget>[
                          // text
                          Padding(
                            padding: const EdgeInsets.only(right: 16.0),
                            child: Row(
                              children: <Widget>[
                                Text(
                                  "상영중",
                                  style: TextStyle(color: Colors.white, fontSize: 20.0, fontWeight: FontWeight.w600),
                                ),
                                Spacer(),
                                Row(
                                  children: <Widget>[
                                    Text(
                                      "view all",
                                      style: TextStyle(color: Colors.white, fontSize: 12.0, fontWeight: FontWeight.w400),
                                    ),
                                    Icon(
                                      Icons.arrow_forward_ios,
                                      size: 12.0,
                                      color: Colors.amber,
                                    ),
                                  ],
                                )
                              ],
                            ),
                          ),
                          // ListView
                          Container(
                              height: 172.0,
                              child: ListView.builder(
                                  itemCount: itemList.length,
                                  scrollDirection: Axis.horizontal,
                                  shrinkWrap: true,
                                  padding: EdgeInsets.only(top: 8.0),
                                  physics: BouncingScrollPhysics(),
                                  reverse: true,
                                  itemBuilder: (BuildContext context, int idx) {
                                    return Padding(
                                      padding: const EdgeInsets.only(right: 24.0),
                                      child: Column(
                                        children: <Widget>[
                                          Container(
                                            padding: EdgeInsets.only(bottom: 8.0, right: 8.0),
                                            alignment: Alignment.bottomRight,
                                            height: 150.0,
                                            width: 120.0,
                                            decoration: BoxDecoration(
                                                borderRadius: BorderRadius.circular(8.0),
                                                image: DecorationImage(image: AssetImage(itemList[idx].image), fit: BoxFit.fill)),
                                            child: Text(
                                              itemList[idx].score,
                                              style: TextStyle(color: Colors.amber, fontSize: 16.0, fontWeight: FontWeight.w600),
                                            ),
                                          ),
                                          Text(
                                            itemList[idx].title,
                                            style: TextStyle(color: Colors.white, fontSize: 12.0, fontWeight: FontWeight.bold),
                                          ),
                                        ],
                                      ),
                                    );
                                  })),
                        ],
                      ),
                    ),
                    Container(
                      margin: EdgeInsets.only(left: 16.0),
                      height: 218.0,
                      child: Column(
                        children: <Widget>[
                          // text
                          Padding(
                            padding: const EdgeInsets.only(right: 16.0),
                            child: Row(
                              children: <Widget>[
                                Text(
                                  "상영중",
                                  style: TextStyle(color: Colors.white, fontSize: 20.0, fontWeight: FontWeight.w600),
                                ),
                                Spacer(),
                                Row(
                                  children: <Widget>[
                                    Text(
                                      "view all",
                                      style: TextStyle(color: Colors.white, fontSize: 12.0, fontWeight: FontWeight.w400),
                                    ),
                                    Icon(
                                      Icons.arrow_forward_ios,
                                      size: 12.0,
                                      color: Colors.amber,
                                    ),
                                  ],
                                )
                              ],
                            ),
                          ),
                          // ListView
                          Container(
                              height: 172.0,
                              child: ListView.builder(
                                  itemCount: itemList.length,
                                  scrollDirection: Axis.horizontal,
                                  shrinkWrap: true,
                                  padding: EdgeInsets.only(top: 8.0),
                                  physics: BouncingScrollPhysics(),
                                  reverse: true,
                                  itemBuilder: (BuildContext context, int idx) {
                                    return Padding(
                                      padding: const EdgeInsets.only(right: 24.0),
                                      child: Column(
                                        children: <Widget>[
                                          Container(
                                            padding: EdgeInsets.only(bottom: 8.0, right: 8.0),
                                            alignment: Alignment.bottomRight,
                                            height: 150.0,
                                            width: 120.0,
                                            decoration: BoxDecoration(
                                                borderRadius: BorderRadius.circular(8.0),
                                                image: DecorationImage(image: AssetImage(itemList[idx].image), fit: BoxFit.fill)),
                                            child: Text(
                                              itemList[idx].score,
                                              style: TextStyle(color: Colors.amber, fontSize: 16.0, fontWeight: FontWeight.w600),
                                            ),
                                          ),
                                          Text(
                                            itemList[idx].title,
                                            style: TextStyle(color: Colors.white, fontSize: 12.0, fontWeight: FontWeight.bold),
                                          ),
                                        ],
                                      ),
                                    );
                                  })),
                        ],
                      ),
                    ),
                  ],
                ),
              ),

              Placeholder(),
              Placeholder(),
            ]),
          )
        ],
      ),

      Placeholder(
        color: Colors.indigo,
      ),
      Placeholder(
        color: Colors.amber,
      ),
      Placeholder(
        color: Colors.pinkAccent,
      ),
    ];
  }
}