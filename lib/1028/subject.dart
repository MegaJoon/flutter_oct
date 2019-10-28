import 'package:flutter/material.dart';

// https://dribbble.com/shots/7849915/attachments/479260?mode=media

class SubjectApp extends StatefulWidget {
  @override
  _SubjectAppState createState() => _SubjectAppState();
}

class _SubjectAppState extends State<SubjectApp> with TickerProviderStateMixin {
  List<Widget> pages;

  // bottom index
  int _currentIndex = 1;

  TabController _tabController;

  Color _color = Color.fromRGBO(232, 195, 142, 1);

  String _image = "https://cdn.pixabay.com/photo/2015/12/15/06/42/kids-1093758__340.jpg";
  String _image2 = "https://cdn.pixabay.com/photo/2014/05/03/00/46/notebook-336634__340.jpg";

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
          showUnselectedLabels: true,
          showSelectedLabels: true,
          selectedIconTheme: IconThemeData(color: Colors.teal, size: 28.0),
          selectedLabelStyle: TextStyle(fontWeight: FontWeight.w600),
          selectedFontSize: 16.0,
          selectedItemColor: Colors.teal,
          unselectedIconTheme: IconThemeData(color: Colors.grey, size: 26.0),
          unselectedLabelStyle: TextStyle(fontWeight: FontWeight.w400),
          unselectedFontSize: 14.0,
          unselectedItemColor: Colors.grey,
          items: [
            BottomNavigationBarItem(
              icon: Icon(Icons.home),
              title: Text("Home"),
            ),
            BottomNavigationBarItem(
              icon: Icon(Icons.subject),
              title: Text("Subject"),
            ),
            BottomNavigationBarItem(
              icon: Icon(Icons.whatshot),
              title: Text("Growing"),
            ),
            BottomNavigationBarItem(
              icon: Icon(Icons.person_outline),
              title: Text("Profile"),
            ),
          ]),
    );
  }

  _definePages() {
    pages = [
      Placeholder(),

      // initial page
      Column(
        children: <Widget>[
          // appbar
          SafeArea(
            top: true,
            left: true,
            right: true,
            child: Container(
              margin: EdgeInsets.symmetric(horizontal: 16.0),
              height: 64.0,
              child: Row(
                crossAxisAlignment: CrossAxisAlignment.center,
                children: <Widget>[
                  Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: <Widget>[
                      Text(
                        "Subject",
                        style: TextStyle(color: Colors.black, fontSize: 32.0, fontWeight: FontWeight.w600),
                      ),
                      RichText(
                        text: TextSpan(children: [
                          TextSpan(
                              text: "Today's English porgress", style: TextStyle(color: Colors.grey, fontSize: 12.0, fontWeight: FontWeight.w600)),
                          TextSpan(text: "15 min", style: TextStyle(color: Colors.teal, fontSize: 14.0, fontWeight: FontWeight.w600))
                        ]),
                      )
                    ],
                  ),
                  Spacer(),
                  Icon(
                    Icons.border_color,
                    color: Colors.black,
                    size: 20.0,
                  ),
                ],
              ),
            ),
          ),

          // tabbar
          Container(
            height: 36.0,
            child: TabBar(
              controller: _tabController,
              isScrollable: true,
              unselectedLabelStyle: TextStyle(fontWeight: FontWeight.w400, fontSize: 16.0),
              unselectedLabelColor: Colors.grey,
              labelStyle: TextStyle(fontWeight: FontWeight.w600, fontSize: 24.0),
              labelColor: Colors.black,
              indicatorSize: TabBarIndicatorSize.label,
              indicatorColor: Colors.teal,
              indicatorWeight: 3.0,
              tabs: <Widget>[
                Tab(text: "Mathematics"),
                Tab(text: "English"),
                Tab(text: "Physical"),
                Tab(text: "Chemistry"),
                Tab(text: "Science"),
                Tab(text: "Engineering"),
              ],
            ),
          ),

          // TabBarView
          Container(
            margin: EdgeInsets.only(top: 8.0),
            height: 488.0,
            child: TabBarView(controller: _tabController, physics: BouncingScrollPhysics(), children: [
              Placeholder(),

              // main page
              Column(
                children: <Widget>[
                  Flexible(
                    flex: 5,
                    child: Padding(
                      padding: const EdgeInsets.symmetric(horizontal: 16.0),
                      child: Column(
                        children: <Widget>[
                          // text
                          Container(
                            height: 64.0,
                            child: Row(
                              children: <Widget>[
                                Column(
                                  crossAxisAlignment: CrossAxisAlignment.start,
                                  mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                                  children: <Widget>[
                                    Text(
                                      "Oxford textbook",
                                      style: TextStyle(color: Colors.black, fontSize: 20.0, fontWeight: FontWeight.w600),
                                    ),
                                    Text(
                                      "Course | attended",
                                      style: TextStyle(color: Colors.grey, fontSize: 12.0, fontWeight: FontWeight.w400),
                                    ),
                                  ],
                                ),
                                Spacer(),
                                Container(
                                  height: 28.0,
                                  width: 150.0,
                                  decoration: ShapeDecoration(shape: StadiumBorder(), color: Colors.teal),
                                  child: Center(
                                      child: Text(
                                    "Discovery course",
                                    style: TextStyle(color: Colors.white, fontSize: 12.0, fontWeight: FontWeight.w400),
                                  )),
                                )
                              ],
                            ),
                          ),
                          // 1.
                          Container(
                            height: 64.0,
                            child: Row(
                              children: <Widget>[
                                Container(
                                  margin: EdgeInsets.only(right: 16.0),
                                  height: 54.0,
                                  width: 54.0,
                                  decoration: BoxDecoration(
                                      borderRadius: BorderRadius.circular(8.0),
                                      image: DecorationImage(image: NetworkImage(_image), fit: BoxFit.cover)),
                                ),
                                Column(
                                  crossAxisAlignment: CrossAxisAlignment.start,
                                  mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                                  children: <Widget>[
                                    Text(
                                      "Morning textbook",
                                      style: TextStyle(color: Colors.black, fontSize: 16.0, fontWeight: FontWeight.w600),
                                    ),
                                    Row(
                                      children: <Widget>[
                                        Text(
                                          "Last read page 27",
                                          style: TextStyle(color: Colors.grey, fontSize: 14.0, fontWeight: FontWeight.w400),
                                        ),
                                        SizedBox(
                                          width: 8.0,
                                        ),
                                        Icon(
                                          Icons.bookmark,
                                          color: Colors.amber,
                                          size: 16.0,
                                        ),
                                      ],
                                    ),
                                  ],
                                ),
                                Spacer(),
                                Icon(
                                  Icons.arrow_forward_ios,
                                  size: 16.0,
                                  color: Colors.grey,
                                )
                              ],
                            ),
                          ),
                          Divider(),
                          // 2.
                          Container(
                            height: 64.0,
                            child: Row(
                              children: <Widget>[
                                Container(
                                  margin: EdgeInsets.only(right: 16.0),
                                  height: 54.0,
                                  width: 54.0,
                                  decoration: BoxDecoration(
                                      borderRadius: BorderRadius.circular(8.0),
                                      image: DecorationImage(image: NetworkImage(_image2), fit: BoxFit.cover)),
                                ),
                                Column(
                                  crossAxisAlignment: CrossAxisAlignment.start,
                                  mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                                  children: <Widget>[
                                    Text(
                                      "English reading",
                                      style: TextStyle(color: Colors.black, fontSize: 16.0, fontWeight: FontWeight.w600),
                                    ),
                                    Text(
                                      "Has not started",
                                      style: TextStyle(color: Colors.grey, fontSize: 14.0, fontWeight: FontWeight.w400),
                                    ),
                                  ],
                                ),
                                Spacer(),
                                Icon(
                                  Icons.arrow_forward_ios,
                                  size: 16.0,
                                  color: Colors.grey,
                                )
                              ],
                            ),
                          ),
                        ],
                      ),
                    ),
                  ),
                  Container(
                    margin: EdgeInsets.symmetric(vertical: 8.0),
                    height: 8.0,
                    width: MediaQuery.of(context).size.width,
                    color: Colors.grey[300],
                  ),
                  Flexible(
                    flex: 6,
                    child: Padding(
                      padding: const EdgeInsets.symmetric(horizontal: 16.0),
                      child: Column(
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: <Widget>[
                          // text
                          Container(
                            alignment: Alignment.topLeft,
                            height: 56.0,
                            child: Column(
                              crossAxisAlignment: CrossAxisAlignment.start,
                              mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                              children: <Widget>[
                                Text(
                                  "Recommended course",
                                  style: TextStyle(color: Colors.black, fontSize: 20.0, fontWeight: FontWeight.w600),
                                ),
                                RichText(
                                  text: TextSpan(children: [
                                    TextSpan(text: "I learned ", style: TextStyle(color: Colors.grey, fontSize: 12.0, fontWeight: FontWeight.w600)),
                                    TextSpan(
                                        text: "Noun possessive ", style: TextStyle(color: Colors.teal, fontSize: 12.0, fontWeight: FontWeight.w600)),
                                    TextSpan(text: "Oct 6, 2019.", style: TextStyle(color: Colors.grey, fontSize: 12.0, fontWeight: FontWeight.w600)),
                                  ]),
                                ),
                              ],
                            ),
                          ),
                          // 1.
                          Container(
                            height: 54.0,
                            child: Row(
                              children: <Widget>[
                                Container(
                                  margin: EdgeInsets.only(right: 16.0),
                                  height: 32.0,
                                  width: 32.0,
                                  decoration: BoxDecoration(shape: BoxShape.circle, color: Colors.amber),
                                  child: Icon(
                                    Icons.add,
                                    size: 28.0,
                                    color: Colors.white,
                                  ),
                                ),
                                Column(
                                  crossAxisAlignment: CrossAxisAlignment.start,
                                  mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                                  children: <Widget>[
                                    Text(
                                      "Positive rotation",
                                      style: TextStyle(color: Colors.black, fontSize: 16.0, fontWeight: FontWeight.w600),
                                    ),
                                    Row(
                                      children: <Widget>[
                                        Icon(
                                          Icons.bookmark,
                                          color: Colors.grey,
                                          size: 16.0,
                                        ),
                                        SizedBox(
                                          width: 8.0,
                                        ),
                                        Text(
                                          "3 goals today",
                                          style: TextStyle(color: Colors.grey, fontSize: 14.0, fontWeight: FontWeight.w400),
                                        ),
                                      ],
                                    ),
                                  ],
                                ),
                                Spacer(),
                                Container(
                                  height: 28.0,
                                  width: 100.0,
                                  decoration: ShapeDecoration(shape: StadiumBorder(), color: Colors.teal),
                                  child: Center(
                                      child: Text(
                                    "Start",
                                    style: TextStyle(color: Colors.white, fontSize: 12.0, fontWeight: FontWeight.w400),
                                  )),
                                )
                              ],
                            ),
                          ),
                          Divider(),
                          // 2.
                          Container(
                            height: 54.0,
                            child: Row(
                              children: <Widget>[
                                Container(
                                  margin: EdgeInsets.only(right: 16.0),
                                  height: 32.0,
                                  width: 32.0,
                                  decoration: BoxDecoration(shape: BoxShape.circle, color: Colors.blue),
                                  child: Icon(
                                    Icons.whatshot,
                                    size: 20.0,
                                    color: Colors.white,
                                  ),
                                ),
                                Column(
                                  crossAxisAlignment: CrossAxisAlignment.start,
                                  mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                                  children: <Widget>[
                                    Text(
                                      "Fun practice",
                                      style: TextStyle(color: Colors.black, fontSize: 16.0, fontWeight: FontWeight.w600),
                                    ),
                                    Row(
                                      children: <Widget>[
                                        Icon(
                                          Icons.star,
                                          color: Colors.amber,
                                          size: 16.0,
                                        ),
                                        Icon(
                                          Icons.star,
                                          color: Colors.amber,
                                          size: 16.0,
                                        ),
                                        Icon(
                                          Icons.star,
                                          color: Colors.amber,
                                          size: 16.0,
                                        ),
                                        Icon(
                                          Icons.star,
                                          color: Colors.grey,
                                          size: 16.0,
                                        ),
                                        Icon(
                                          Icons.star,
                                          color: Colors.grey,
                                          size: 16.0,
                                        ),
                                        SizedBox(
                                          width: 8.0,
                                        ),
                                        Text(
                                          "3/5",
                                          style: TextStyle(color: Colors.grey, fontSize: 14.0, fontWeight: FontWeight.w400),
                                        ),
                                      ],
                                    ),
                                  ],
                                ),
                                Spacer(),
                                Container(
                                  height: 28.0,
                                  width: 100.0,
                                  decoration: ShapeDecoration(shape: StadiumBorder(), color: _color),
                                  child: Center(
                                      child: Text(
                                    "Review",
                                    style: TextStyle(color: Colors.white, fontSize: 12.0, fontWeight: FontWeight.w400),
                                  )),
                                )
                              ],
                            ),
                          ),
                          Divider(),
                          // 3.
                          Container(
                            height: 54.0,
                            child: Row(
                              children: <Widget>[
                                Container(
                                  margin: EdgeInsets.only(right: 16.0),
                                  height: 32.0,
                                  width: 32.0,
                                  decoration: BoxDecoration(shape: BoxShape.circle, color: Colors.deepPurpleAccent),
                                  child: Icon(
                                    Icons.label,
                                    size: 20.0,
                                    color: Colors.white,
                                  ),
                                ),
                                Column(
                                  crossAxisAlignment: CrossAxisAlignment.start,
                                  mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                                  children: <Widget>[
                                    Text(
                                      "Wrong title set",
                                      style: TextStyle(color: Colors.black, fontSize: 16.0, fontWeight: FontWeight.w600),
                                    ),
                                    Text(
                                      "2019-10-3",
                                      style: TextStyle(color: Colors.grey, fontSize: 14.0, fontWeight: FontWeight.w400),
                                    ),
                                  ],
                                ),
                                Spacer(),
                                Container(
                                  height: 28.0,
                                  width: 100.0,
                                  decoration: ShapeDecoration(shape: StadiumBorder(), color: _color),
                                  child: Center(
                                      child: Text(
                                    "Review",
                                    style: TextStyle(color: Colors.white, fontSize: 12.0, fontWeight: FontWeight.w400),
                                  )),
                                )
                              ],
                            ),
                          ),
                        ],
                      ),
                    ),
                  ),
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

      Placeholder(),
      Column(
        children: <Widget>[
          // appbar
          SafeArea(
            top: true,
            left: true,
            right: true,
            child: Container(
                margin: EdgeInsets.symmetric(horizontal: 16.0),
                height: 64.0,
                child: Row(
                  children: <Widget>[
                    Text(
                      "Profile",
                    )
                  ],
                )),
          ),
        ],
      ),
    ];
  }
}
