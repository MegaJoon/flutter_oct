import 'package:flutter/material.dart';

// https://dribbble.com/shots/3146248-Sleep-dashboard

class SleepDashboard extends StatefulWidget {
  @override
  _SleepDashboardState createState() => _SleepDashboardState();
}

class _SleepDashboardState extends State<SleepDashboard> with TickerProviderStateMixin {
  List<Widget> _pages;

  Color _topColor = Color.fromRGBO(34, 122, 252, 1); // blue
  Color _bottomColor = Color.fromRGBO(122, 216, 253, 1); // light blue

  int _currentIndex = 0;

  TabController _tabController;

  @override
  void initState() {
    // TODO: implement initState
    super.initState();
    _tabController = TabController(length: 2, vsync: this);
  }

  @override
  Widget build(BuildContext context) {
    _definePages();
    return Scaffold(
        body: _pages[_currentIndex],
        bottomNavigationBar: BottomNavigationBar(
            backgroundColor: Colors.white,
            currentIndex: _currentIndex,
            showSelectedLabels: true,
            showUnselectedLabels: true,
            unselectedItemColor: Colors.grey[300],
            unselectedFontSize: 12.0,
            unselectedLabelStyle: TextStyle(fontWeight: FontWeight.w600),
            selectedLabelStyle: TextStyle(fontWeight: FontWeight.w600),
            selectedItemColor: _topColor,
            elevation: 0.0,
            onTap: (index) {
              setState(() {
                _currentIndex = index;
              });
            },
            items: [
              BottomNavigationBarItem(
                  icon: Icon(
                    Icons.show_chart,
                    size: 24.0,
                  ),
                  title: Text("Dashboard")),
              BottomNavigationBarItem(
                  icon: Icon(
                    Icons.swap_calls,
                    size: 24.0,
                  ),
                  title: Text("Fitness")),
              BottomNavigationBarItem(
                  icon: Icon(
                    Icons.swap_horiz,
                    size: 24.0,
                  ),
                  title: Text("Position")),
              BottomNavigationBarItem(
                  icon: Icon(
                    Icons.whatshot,
                    size: 24.0,
                  ),
                  title: Text("Massage")),
              BottomNavigationBarItem(
                  icon: Icon(
                    Icons.more_horiz,
                    size: 24.0,
                  ),
                  title: Text("More")),
            ]));
  }

  _definePages() {
    _pages = [
      Container(
        height: MediaQuery.of(context).size.height,
        width: MediaQuery.of(context).size.width,
        decoration: BoxDecoration(
            gradient: LinearGradient(
                colors: [_topColor, _bottomColor],
                begin: Alignment.topCenter,
                end: Alignment.bottomCenter)),
        child: Column(
          children: <Widget>[
            // tabbar
            Padding(
              padding: const EdgeInsets.only(left: 24.0, right: 24.0, top: 16.0),
              child: Row(
//              mainAxisAlignment: MainAxisAlignment.end,
                children: <Widget>[
                  Spacer(),
                  Container(
                    height: 40.0,
                    width: 300.0,
                    child: TabBar(
                        indicatorPadding: EdgeInsets.only(bottom: 6.0),
                        controller: _tabController,
                        unselectedLabelStyle:
                            TextStyle(fontWeight: FontWeight.bold, fontSize: 16.0),
                        unselectedLabelColor: Colors.white.withOpacity(0.3),
                        isScrollable: false,
                        labelColor: Colors.white,
                        labelStyle: TextStyle(fontWeight: FontWeight.bold, fontSize: 16.0),
                        indicatorSize: TabBarIndicatorSize.label,
                        indicatorWeight: 2.0,
                        indicatorColor: Colors.white,
                        tabs: [
                          Tab(
                            text: "DAILY",
                          ),
                          Tab(
                            text: "WEEKLY",
                          ),
                        ]),
                  ),
                  Icon(
                    Icons.blur_circular,
                    size: 28.0,
                    color: Colors.white,
                  ),
                ],
              ),
            ),

            // tabbar view
            Flexible(
              fit: FlexFit.tight,
              child: TabBarView(controller: _tabController, children: [
                Placeholder(
                  color: Colors.teal,
                ),
                Placeholder(),
              ]),
            ),

            // bottom sleep tip!
            Container(
              height: 100.0,
              color: Colors.white,
              child: Row(
                mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                children: <Widget>[
                  Container(
                      height: 64.0,
                      width: 64.0,
                      decoration: BoxDecoration(
                          color: Colors.grey.withOpacity(0.1), shape: BoxShape.circle),
                      child: Container(
                        margin: EdgeInsets.all(8.0),
                        decoration: BoxDecoration(
                            color: Colors.grey.withOpacity(0.2), shape: BoxShape.circle),
                        child: Center(
                          child: Icon(
                            Icons.wb_sunny,
                            size: 28.0,
                            color: _topColor,
                          ),
                        ),
                      )),
                  Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                    children: <Widget>[
                      Text(
                        "Sleep Tip",
                        style: TextStyle(
                            color: Colors.black, fontSize: 16.0, fontWeight: FontWeight.bold),
                      ),
                      Text(
                        "A calming routine activity right\nbefore bedtime can help",
                        style: TextStyle(
                            color: Colors.grey[300], fontSize: 14.0, fontWeight: FontWeight.bold),
                      ),
                    ],
                  )
                ],
              ),
            )
          ],
        ),
      ),
      //
      Placeholder(),
      Placeholder(
        color: Colors.redAccent,
      ),
      Placeholder(),
      Placeholder(
        color: Colors.redAccent,
      ),
    ];
  }
}
