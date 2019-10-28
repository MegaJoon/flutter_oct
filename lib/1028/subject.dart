import 'package:flutter/material.dart';

// https://dribbble.com/shots/7849915-Youth-course-and-personal-center-page/attachments/479259?mode=media

class SubjectApp extends StatefulWidget {
  @override
  _SubjectAppState createState() => _SubjectAppState();
}

class _SubjectAppState extends State<SubjectApp> with TickerProviderStateMixin {
  List<Widget> pages;

  // bottom index;
  int _currentIndex = 1;

  TabController _tabController;

  String _image = "https://cdn.pixabay.com/photo/2015/06/02/12/59/narrative-794978__340.jpg";
  String _image2 = "https://cdn.pixabay.com/photo/2018/03/19/18/20/tea-time-3240766__340.jpg";

  Color _reviewColor = Color.fromRGBO(232, 195, 142, 1);

  @override
  void initState() {
    _tabController = TabController(length: 6, vsync: this);
    super.initState();
  }

  @override
  Widget build(BuildContext context) {
    _definePages();

    return Scaffold(
      body: pages[_currentIndex],

      // bottom
      bottomNavigationBar: BottomNavigationBar(
          currentIndex: _currentIndex,
          onTap: (idx) {
            setState(() {
              _currentIndex = idx;
            });
          },
          showSelectedLabels: true,
          showUnselectedLabels: true,
          selectedLabelStyle: TextStyle(fontWeight: FontWeight.w600),
          selectedItemColor: Colors.teal,
          selectedFontSize: 14.0,
          selectedIconTheme: IconThemeData(color: Colors.teal, size: 32.0),
          unselectedLabelStyle: TextStyle(fontWeight: FontWeight.w600),
          unselectedItemColor: Colors.grey[300],
          unselectedFontSize: 12.0,
          unselectedIconTheme: IconThemeData(color: Colors.grey[300], size: 28.0),
          items: [
            BottomNavigationBarItem(icon: Icon(Icons.home), title: Text("Home")),
            BottomNavigationBarItem(icon: Icon(Icons.book), title: Text("Subject")),
            BottomNavigationBarItem(icon: Icon(Icons.whatshot), title: Text("Growing")),
            BottomNavigationBarItem(icon: Icon(Icons.person_outline), title: Text("Profile")),
          ]),
    );
  }

  _definePages() {
    pages = [
      Placeholder(
        color: Colors.red,
      ),

      // main
      SafeArea(
        top: true,
        left: true,
        right: true,
        child: Column(
          children: <Widget>[
            // appbar
            Container(
              margin: EdgeInsets.symmetric(horizontal: 16.0),
              height: 80.0,
              child: Row(
                children: <Widget>[
                  Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                    children: <Widget>[
                      Text(
                        "Subject",
                        style: TextStyle(color: Colors.black, fontSize: 32.0, fontWeight: FontWeight.bold),
                      ),
                      RichText(
                        text: TextSpan(children: [
                          TextSpan(
                            text: "Today's Endlish progress ",
                            style: TextStyle(color: Colors.grey, fontSize: 12.0, fontWeight: FontWeight.w600),
                          ),
                          TextSpan(
                            text: "15 min",
                            style: TextStyle(color: Colors.teal, fontSize: 14.0, fontWeight: FontWeight.w600),
                          ),
                        ]),
                      ),
                    ],
                  ),
                  Spacer(),
                  Icon(
                    Icons.border_color,
                    size: 20.0,
                    color: Colors.black,
                  ),
                ],
              ),
            ),

            // tabbar
            Container(
                height: 40.0,
                child: TabBar(
                  controller: _tabController,
                  isScrollable: true,
                  unselectedLabelStyle: TextStyle(fontWeight: FontWeight.w600, fontSize: 16.0),
                  unselectedLabelColor: Colors.grey,
                  labelStyle: TextStyle(fontWeight: FontWeight.w600, fontSize: 20.0),
                  labelColor: Colors.black,
                  indicatorWeight: 3.0,
                  indicatorColor: Colors.teal,
                  indicatorSize: TabBarIndicatorSize.label,
                  tabs: <Widget>[
                    Tab(text: "Mathematics"),
                    Tab(text: "English"),
                    Tab(text: "Physical"),
                    Tab(text: "Chemistry"),
                    Tab(text: "History"),
                    Tab(text: "Engineering"),
                  ],
                )),

            // tabbarview
            Container(
              height: 477.0,
              child: TabBarView(controller: _tabController, physics: BouncingScrollPhysics(), children: [
                Placeholder(),
                // main
                Column(
                  children: <Widget>[
                    // top container;
                    Flexible(
                      flex: 4,
                      child: Padding(
                        padding: const EdgeInsets.symmetric(horizontal: 16.0),
                        child: Column(
                          mainAxisAlignment: MainAxisAlignment.start,
                          children: <Widget>[
                            Container(
                              height: 56.0,
                              child: Row(
                                children: <Widget>[
                                  Column(
                                    crossAxisAlignment: CrossAxisAlignment.start,
                                    mainAxisAlignment: MainAxisAlignment.center,
                                    children: <Widget>[
                                      Text("Oxford textbook", style: TextStyle(color: Colors.black, fontSize: 20.0, fontWeight: FontWeight.w600),),
                                      Text("Course I attended", style: TextStyle(color: Colors.grey, fontSize: 12.0, fontWeight: FontWeight.w600),),
                                    ],
                                  ),
                                  Spacer(),
                                  Container(
                                    height: 28.0,
                                    width: 130.0,
                                    decoration: ShapeDecoration(shape: StadiumBorder(), color: Colors.teal),
                                    child: Center(
                                        child: Text(
                                      "Discovery course",
                                      style: TextStyle(color: Colors.white, fontSize: 12.0, fontWeight: FontWeight.w400),
                                    )),
                                  ),
                                ],
                              ),
                            ),
                            Container(
                              height: 56.0,
                              child: Row(
                                children: <Widget>[
                                  Container(
                                    margin: EdgeInsets.only(right: 16.0),
                                    height: 48.0,
                                    width: 48.0,
                                    decoration: BoxDecoration(borderRadius: BorderRadius.circular(8.0),
                                    image: DecorationImage(image: NetworkImage(_image), fit: BoxFit.fill)),
                                  ),

                                  Column(
                                    crossAxisAlignment: CrossAxisAlignment.start,
                                    mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                                    children: <Widget>[
                                      Text("Morning textbook", style: TextStyle(color: Colors.black, fontSize: 18.0, fontWeight: FontWeight.w600),),
                                      Row(
                                        children: <Widget>[
                                          Text("Last read page 27", style: TextStyle(color: Colors.grey, fontSize: 12.0, fontWeight: FontWeight.w600),),
                                          SizedBox(width: 8.0,),
                                          Icon(Icons.bookmark, size: 12.0, color: Colors.amber,),
                                        ],
                                      ),
                                    ],
                                  ),

                                  Spacer(),

                                  Icon(Icons.arrow_forward_ios, size: 16.0, color: Colors.grey,),
                                ],
                              ),
                            ),
                            Divider(),
                            Container(
                              height: 56.0,
                              child: Row(
                                children: <Widget>[
                                  Container(
                                    margin: EdgeInsets.only(right: 16.0),
                                    height: 48.0,
                                    width: 48.0,
                                    decoration: BoxDecoration(borderRadius: BorderRadius.circular(8.0),
                                        image: DecorationImage(image: NetworkImage(_image2), fit: BoxFit.fill)),
                                  ),
                                  Column(
                                    crossAxisAlignment: CrossAxisAlignment.start,
                                    mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                                    children: <Widget>[
                                      Text("English reading", style: TextStyle(color: Colors.black, fontSize: 18.0, fontWeight: FontWeight.w600),),
                                      Text("Has not started", style: TextStyle(color: Colors.grey, fontSize: 12.0, fontWeight: FontWeight.w600),),
                                    ],
                                  ),

                                  Spacer(),

                                  Icon(Icons.arrow_forward_ios, size: 16.0, color: Colors.grey,),
                                ],
                              ),
                            ),
                          ],
                        ),
                      ),
                    ),

                    // divider;
                    Container(
                      margin: EdgeInsets.only(top: 9.0),
                      height: 8.0,
                      color: Colors.grey[300],
                    ),

                    // bottom container;
                    Flexible(
                      flex: 6,
                      child: Padding(
                        padding: const EdgeInsets.symmetric(horizontal: 16.0),
                        child: Column(
                          mainAxisAlignment: MainAxisAlignment.end,
                          children: <Widget>[
                            Container(
                              alignment: Alignment.centerLeft,
                              height: 56.0,
                              child: Column(
                                crossAxisAlignment: CrossAxisAlignment.start,
                                children: <Widget>[
                                  Text("Recommended course", style: TextStyle(color: Colors.black, fontSize: 20.0, fontWeight: FontWeight.w600),),
                                  RichText(
                                    text: TextSpan(
                                        children: [
                                          TextSpan(text: "I learned ", style: TextStyle(color: Colors.grey, fontSize: 12.0, fontWeight: FontWeight.w600),),
                                          TextSpan(text: "Noun possessive ", style: TextStyle(color: Colors.teal, fontSize: 12.0, fontWeight: FontWeight.w600),),
                                          TextSpan(text: "Oct 6, 2019.", style: TextStyle(color: Colors.grey, fontSize: 12.0, fontWeight: FontWeight.w600),),
                                    ]),
                                  ),
                                ],
                              ),
                            ),
                            //
                            Container(
                              height: 56.0,
                              child: Row(
                                children: <Widget>[
                                  Container(
                                    margin: EdgeInsets.only(right: 16.0),
                                    height: 40.0,
                                    width: 40.0,
                                    decoration: BoxDecoration(shape: BoxShape.circle, color: Colors.amber),
                                    child: Icon(Icons.add, size: 28.0, color: Colors.white,),
                                  ),

                                  Column(
                                    crossAxisAlignment: CrossAxisAlignment.start,
                                    mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                                    children: <Widget>[
                                      Text("Positive rotation", style: TextStyle(color: Colors.black, fontSize: 18.0, fontWeight: FontWeight.w600),),
                                      Row(
                                        children: <Widget>[
                                          Icon(Icons.bookmark, size: 12.0, color: Colors.grey,),
                                          SizedBox(width: 8.0,),
                                          Text("3 goals today", style: TextStyle(color: Colors.grey, fontSize: 12.0, fontWeight: FontWeight.w600),),
                                        ],
                                      ),
                                    ],
                                  ),

                                  Spacer(),

                                  Container(
                                    height: 28.0,
                                    width: 80.0,
                                    decoration: ShapeDecoration(shape: StadiumBorder(), color: Colors.teal),
                                    child: Center(child: Text("Start", style: TextStyle(color: Colors.white, fontSize: 12.0, fontWeight: FontWeight.w400),)),
                                  ),
                                ],
                              ),
                            ),
                            Divider(),
                            Container(
                              height: 56.0,
                              child: Row(
                                children: <Widget>[
                                  Container(
                                    margin: EdgeInsets.only(right: 16.0),
                                    height: 40.0,
                                    width: 40.0,
                                    decoration: BoxDecoration(shape: BoxShape.circle, color: Colors.blue),
                                    child: Icon(Icons.whatshot, size: 24.0, color: Colors.white,),
                                  ),

                                  Column(
                                    crossAxisAlignment: CrossAxisAlignment.start,
                                    mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                                    children: <Widget>[
                                      Text("Fun practice", style: TextStyle(color: Colors.black, fontSize: 18.0, fontWeight: FontWeight.w600),),
                                      Row(
                                        children: <Widget>[
                                          Icon(Icons.star, size: 12.0, color: Colors.amber,),
                                          Icon(Icons.star, size: 12.0, color: Colors.amber,),
                                          Icon(Icons.star, size: 12.0, color: Colors.amber,),
                                          Icon(Icons.star, size: 12.0, color: Colors.grey,),
                                          Icon(Icons.star, size: 12.0, color: Colors.grey,),
                                          Text("3 / 5", style: TextStyle(color: Colors.grey, fontSize: 12.0, fontWeight: FontWeight.w600),),
                                        ],
                                      ),
                                    ],
                                  ),

                                  Spacer(),

                                  Container(
                                    height: 28.0,
                                    width: 80.0,
                                    decoration: ShapeDecoration(shape: StadiumBorder(), color: _reviewColor),
                                    child: Center(child: Text("Review", style: TextStyle(color: Colors.white, fontSize: 12.0, fontWeight: FontWeight.w400),)),
                                  ),
                                ],
                              ),
                            ),
                            Divider(),
                            Container(
                              height: 56.0,
                              child: Row(
                                children: <Widget>[
                                  Container(
                                    margin: EdgeInsets.only(right: 16.0),
                                    height: 40.0,
                                    width: 40.0,
                                    decoration: BoxDecoration(shape: BoxShape.circle, color: Colors.deepPurpleAccent),
                                    child: Icon(Icons.label, size: 24.0, color: Colors.white,),
                                  ),

                                  Column(
                                    crossAxisAlignment: CrossAxisAlignment.start,
                                    mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                                    children: <Widget>[
                                      Text("Wrong title set", style: TextStyle(color: Colors.black, fontSize: 18.0, fontWeight: FontWeight.w600),),
                                      Text("2019-10-3", style: TextStyle(color: Colors.grey, fontSize: 12.0, fontWeight: FontWeight.w600),),
                                    ],
                                  ),

                                  Spacer(),

                                  Container(
                                    height: 28.0,
                                    width: 80.0,
                                    decoration: ShapeDecoration(shape: StadiumBorder(), color: _reviewColor),
                                    child: Center(child: Text("Review", style: TextStyle(color: Colors.white, fontSize: 12.0, fontWeight: FontWeight.w400),)),
                                  ),
                                ],
                              ),
                            ),
                          ],
                        ),
                      ),
                    )
                  ],
                ),

                Placeholder(),
                Placeholder(),
                Placeholder(),
                Placeholder(),
              ]),
            )
          ],
        ),
      ),

      Placeholder(
        color: Colors.indigo,
      ),

      // part2
      Placeholder(
        color: Colors.black,
      ),
    ];
  }
}
