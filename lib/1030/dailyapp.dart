import 'package:flutter/material.dart';
import 'package:flutter_oct/1030/MyVerticalTab.dart';
import 'package:dots_indicator/dots_indicator.dart';

// https://dribbble.com/shots/7859350/attachments/481956?mode=media

class DailyApp extends StatefulWidget {
  @override
  _DailyAppState createState() => _DailyAppState();
}

class _DailyAppState extends State<DailyApp> {
  Color _color = Color.fromRGBO(212, 204, 180, 1);
  Color _color2 = Color.fromRGBO(241, 241, 241, 1);

  List<Widget> pages;

  // vertical tabbar index
  int _currentIndex = 0;

  // pageview index
  int _selectedIndex = 0;

  void _onClicked(int idx) {
    setState(() {
      _currentIndex = idx;
    });
  }

  PageController _pageController;

  @override
  void initState() {
    _pageController = PageController(viewportFraction: 0.80, initialPage: _selectedIndex);
    super.initState();
  }

  @override
  Widget build(BuildContext context) {
    _definePages();

    return Scaffold(
      backgroundColor: Colors.grey[200],
      body: Column(
        children: <Widget>[
          // top
          Flexible(
            flex: 8,
            child: Row(
              children: <Widget>[
                // vertical tabbar
                Flexible(
                  flex: 2,
                  child: Padding(
                    padding: const EdgeInsets.symmetric(vertical: 120.0),
                    child: Column(
                      crossAxisAlignment: CrossAxisAlignment.center,
                      mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                      children: <Widget>[
                        MyVerticalTab(
                          title: "Classical",
                          color: Colors.black,
                          isSelected: _currentIndex == 0,
                          onClicked: () {
                            _onClicked(0);
                          },
                        ),
                        MyVerticalTab(
                          title: "Popular",
                          color: Colors.black,
                          isSelected: _currentIndex == 1,
                          onClicked: () {
                            _onClicked(1);
                          },
                        ),
                        MyVerticalTab(
                          title: "Nationality",
                          color: Colors.black,
                          isSelected: _currentIndex == 2,
                          onClicked: () {
                            _onClicked(2);
                          },
                        ),
                      ],
                    ),
                  ),
                ),

                // main tabbarview
                Flexible(
                  flex: 8,
                  child: pages[_currentIndex],
                ),
              ],
            ),
          ),

          // bottom
          Flexible(
            flex: 1,
            child: Row(
              children: <Widget>[
                Flexible(
                  flex: 2,
                  child: Container(
                    margin: EdgeInsets.all(16.0),
                    height: 64.0,
                    width: 64.0,
                    decoration: BoxDecoration(shape: BoxShape.circle, color: Colors.black),
                    child: Center(child: Icon(Icons.arrow_back_ios, size: 28.0, color: Colors.white,)),
                  ),
                ),

                Flexible(
                  flex: 8,
                  child: ListView(
                    shrinkWrap: true,
                    scrollDirection: Axis.horizontal,
                    children: <Widget>[
                      Container(
                        margin: EdgeInsets.all(16.0),
                        height: 64.0,
                        width: 100.0,
                        child: Column(
                          children: <Widget>[
                            Container(
                              margin: EdgeInsets.symmetric(vertical: 8.0),
                              height: 4.0,
                              width: 4.0,
                              decoration: BoxDecoration(
                                shape: BoxShape.circle,
                                color: Colors.black
                              ),
                            ),
                            Text(itemList[0].title,
                              style: TextStyle(color: Colors.black, fontSize: 12.0, fontFamily: "Montserrat-Black"),),
                          ],
                        ),
                      ),

                      Container(
                        margin: EdgeInsets.all(16.0),
                        height: 64.0,
                        width: 100.0,
                        child: Column(
                          children: <Widget>[
                            Container(
                              margin: EdgeInsets.symmetric(vertical: 8.0),
                              height: 4.0,
                              width: 4.0,
                              decoration: BoxDecoration(
                                  shape: BoxShape.circle,
                                  color: Colors.transparent
                              ),
                            ),
                            Text(itemList[1].title,
                              style: TextStyle(color: Colors.grey, fontSize: 12.0, fontFamily: "Montserrat-Black"),),
                          ],
                        ),
                      ),

                      Container(
                        margin: EdgeInsets.all(16.0),
                        height: 64.0,
                        width: 100.0,
                        child: Column(
                          children: <Widget>[
                            Container(
                              margin: EdgeInsets.symmetric(vertical: 8.0),
                              height: 4.0,
                              width: 4.0,
                              decoration: BoxDecoration(
                                  shape: BoxShape.circle,
                                  color: Colors.transparent
                              ),
                            ),
                            Text(itemList[0].title,
                              style: TextStyle(color: Colors.grey, fontSize: 12.0, fontFamily: "Montserrat-Black"),),
                          ],
                        ),
                      ),
                    ],
                  ),
                ),
              ],
            ),
          ),
        ],
      ),
    );
  }

  _definePages(){
    pages = [
      // first page
      SafeArea(
        top: true,
        left: true,
        right: true,
        child: Column(
          children: <Widget>[
            // appbar
            Flexible(
              flex: 2,
              child: Padding(
                padding: const EdgeInsets.only(right: 16.0),
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  crossAxisAlignment: CrossAxisAlignment.center,
                  children: <Widget>[
                    // title
                    Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      mainAxisAlignment: MainAxisAlignment.center,
                      children: <Widget>[
                        Text("Daily", style: TextStyle(color: Colors.black, fontSize: 36.0, fontFamily: "Montserrat-Black"),),
                        Text("Recommended", style: TextStyle(color: Colors.grey, fontSize: 16.0, fontFamily: "Montserrat-Black"),),
                      ],
                    ),

                    // dots indicator
                    DotsIndicator(
                      dotsCount: 3,
                      position: 1,
                      decorator: DotsDecorator(
                        color: Colors.grey,
                        activeColor: Colors.black,
                        size: Size(6.0, 6.0),
                        activeSize: Size(6.0, 6.0),
                      ),
                    ),
                  ],
                ),
              ),
            ),

            // pageview
            Flexible(
              flex: 8,
              // pageview builder
              child: Container(
                height: 450.0,
                width: 500.0,
                child: PageView.builder(
                  controller: _pageController,
                  scrollDirection: Axis.horizontal,
                    physics: BouncingScrollPhysics(),
                    itemCount: itemList.length,
                    onPageChanged: (int newSelectedIndex){
                    setState(() {
                      _selectedIndex = newSelectedIndex;
                    });
                    },
                    itemBuilder: (BuildContext context, int index){
                  return Transform.translate(
                    offset: Offset(-24.0, 0.0),
                    child: Container(
                      margin: _selectedIndex == index? EdgeInsets.only(right: 24.0,): EdgeInsets.only(right: 24.0, bottom: 84.0),
                      width: 200.0,
                      decoration: BoxDecoration(
                          color: Colors.white,
                          borderRadius: BorderRadius.circular(8.0),
                      ),
                      child: Column(
                        children: <Widget>[
                          // profileImage
                          Container(
                            margin: EdgeInsets.all(8.0),
                            height: 150.0,
                            decoration: BoxDecoration(
                                color: Colors.grey,
                                borderRadius: BorderRadius.circular(8.0),
                            image: DecorationImage(image: AssetImage(itemList[index].image), fit: BoxFit.fill),
                            ),
                          ),

                          // text
                          Container(
                            margin: EdgeInsets.symmetric(horizontal: 16.0),
                            height: 200.0,
                              width: 200.0,
                              child: Column(
                                crossAxisAlignment: CrossAxisAlignment.start,
                                mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                                children: <Widget>[
                                  Text(itemList[index].title,
                                    style: TextStyle(color: Colors.grey, fontSize: 14.0, fontFamily: "Montserrat-Black"),),

                                  Text(itemList[index].title2,
                                    style: TextStyle(color: Colors.black, fontSize: 16.0, fontFamily: "Montserrat-Black"),),
                                  
                                  Row(
                                    children: <Widget>[
                                      Container(
                                        margin: EdgeInsets.only(right: 16.0),
                                        height: 36.0,
                                        width: 36.0,
                                        decoration: BoxDecoration(shape: BoxShape.circle, color: _color),
                                        child: Center(
                                          child: Text("VIP".toUpperCase(),
                                            style: TextStyle(color: Colors.white, fontSize: 10.0, fontFamily: "Montserrat-Black"),),
                                        ),
                                      ),

                                      Container(
                                        margin: EdgeInsets.only(right: 16.0),
                                        height: 36.0,
                                        width: 36.0,
                                        decoration: BoxDecoration(shape: BoxShape.circle, color: _color2),
                                        child: Center(
                                          child: Text("SQ".toUpperCase(),
                                            style: TextStyle(color: Colors.white, fontSize: 10.0, fontFamily: "Montserrat-Black"),),
                                        ),
                                      ),
                                    ],
                                  ),

                                  Row(
                                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                                    children: <Widget>[
                                      Text("Mark",
                                        style: TextStyle(color: Colors.grey, fontSize: 10.0, fontFamily: "Montserrat-Black",),
                                      ),

                                      Text(" / ",
                                        style: TextStyle(color: Colors.grey, fontSize: 12.0, fontFamily: "Montserrat-Black",),
                                      ),

                                      Text(itemList[index].score,
                                        style: TextStyle(color: Colors.black, fontSize: 12.0, fontFamily: "Montserrat-Black",),
                                      ),

                                      Spacer(),

                                      Container(
                                        margin: EdgeInsets.only(right: 4.0),
                                        height: 4.0,
                                        width: 4.0,
                                        decoration: BoxDecoration(shape: BoxShape.circle, color: _color),
                                      ),

                                      Container(
                                        margin: EdgeInsets.only(right: 4.0),
                                        height: 4.0,
                                        width: 4.0,
                                        decoration: BoxDecoration(shape: BoxShape.circle, color: _color),
                                      ),

                                      Container(
                                        margin: EdgeInsets.only(right: 4.0),
                                        height: 4.0,
                                        width: 4.0,
                                        decoration: BoxDecoration(shape: BoxShape.circle, color: _color),
                                      ),

                                      Container(
                                        margin: EdgeInsets.only(right: 4.0),
                                        height: 4.0,
                                        width: 4.0,
                                        decoration: BoxDecoration(shape: BoxShape.circle, color: _color),
                                      ),

                                      Container(
                                        margin: EdgeInsets.only(right: 4.0),
                                        height: 4.0,
                                        width: 4.0,
                                        decoration: BoxDecoration(shape: BoxShape.circle, color: _color),
                                      ),
                                    ],
                                  ),
                                ],
                              ),
                          ),

                          // start listening to songs
                          _selectedIndex == index? Container(
                            alignment: Alignment.center,
                              height: 84.0,
                              child: Column(
                                crossAxisAlignment: CrossAxisAlignment.center,
                                mainAxisAlignment: MainAxisAlignment.center,
                                children: <Widget>[
                                  Text(
                                    "Start Listening To Songs",
                                    style: TextStyle(color: Colors.black, fontSize: 10.0, fontFamily: "Montserrat-Black",),
                                  ),

                                  SizedBox(height: 4.0,),

                                  Container(
                                    margin: EdgeInsets.symmetric(horizontal: 48.0),
                                    height: 2.0,
                                    color: Colors.black,
                                  ),
                                ],
                              )):
                              Container(),
                        ],
                      ),
                    ),
                  );
                }),
              ),
            ),
          ],
        ),
      ),

      Placeholder(),
      Placeholder(),
    ];
  }
}

class ItemList{
  String image;
  String title;
  String title2;
  String score;

  ItemList({this.image, this.title, this.title2, this.score});
}

List<ItemList> itemList = [
  ItemList(image: "assets/ansley_gulielmi.jpg", title: "Tim Bendzko", title2: "Nur Noeh Kurz\nDie Welt Retten", score: "5.0"),
  ItemList(image: "assets/ansley_gulielmi2.jpg", title: "Sophie Reed", title2: "Du Warst Noeh Nie\nHier", score: "4.0"),
  //
  ItemList(image: "assets/ansley_gulielmi.jpg", title: "Tim Bendzko", title2: "Nur Noeh Kurz\nDie Welt Retten", score: "5.0"),
  ItemList(image: "assets/ansley_gulielmi2.jpg", title: "Sophie Reed", title2: "Du Warst Noeh Nie\nHier", score: "4.0"),
];