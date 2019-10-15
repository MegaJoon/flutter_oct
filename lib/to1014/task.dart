import 'package:flutter/material.dart';
import 'package:badges/badges.dart';

// https://dribbble.com/shots/7457906-Task-system/attachments/305217?mode=media

class Task extends StatefulWidget {
  @override
  _TaskState createState() => _TaskState();
}

class _TaskState extends State<Task> with TickerProviderStateMixin {
  String _image = "https://cdn.pixabay.com/photo/2019/09/13/15/13/chicken-4474176__340.jpg";
  int _currentIndex = 0;
  List<Widget> _pages;
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
      backgroundColor: Colors.grey[200],
      body: _pages[_currentIndex],
      bottomNavigationBar: BottomNavigationBar(
          elevation: 0,
          unselectedItemColor: Colors.grey[300],
          showUnselectedLabels: false,
          showSelectedLabels: false,
          selectedItemColor: Colors.red,
          currentIndex: _currentIndex,
          onTap: (selectedIndex) {
            setState(() {
              _currentIndex = selectedIndex;
            });
          },
          items: [
            BottomNavigationBarItem(icon: Icon(Icons.repeat), title: Text("")),
            BottomNavigationBarItem(icon: Icon(Icons.person_outline), title: Text("")),
            BottomNavigationBarItem(icon: Icon(Icons.insert_chart), title: Text("")),
            BottomNavigationBarItem(icon: Icon(Icons.remove_circle_outline), title: Text("")),
          ]),
    );
  }

  _definePages() {
    _pages = [
      Padding(
        padding: const EdgeInsets.symmetric(horizontal: 24.0),
        child: Column(
          children: <Widget>[
            SafeArea(
              top: true,
              left: true,
              right: true,
              child: Container(
                height: 48.0,
                child: Row(
                  crossAxisAlignment: CrossAxisAlignment.end,
                  children: <Widget>[
                    Text(
                      "Tasks",
                      style: TextStyle(color: Colors.black, fontSize: 48.0, fontWeight: FontWeight.bold),
                    ),
                    Spacer(),
                    Badge(
                      borderRadius: 8.0,
                      badgeColor: Colors.redAccent,
                      showBadge: true,
                      position: BadgePosition.topRight(top: -2.5, right: -2.5),
                      child: Container(
                        height: 32.0,
                        width: 32.0,
                        decoration: BoxDecoration(
                            borderRadius: BorderRadius.circular(8.0),
                            image: DecorationImage(image: NetworkImage(_image), fit: BoxFit.fill)),
                      ),
                    )
                  ],
                ),
              ),
            ),
            Container(
              margin: EdgeInsets.only(top: 24.0),
              height: 40.0,
              child: Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: <Widget>[
                  Container(
                    height: 40.0,
                    width: 40.0,
                    decoration: BoxDecoration(
                      borderRadius: BorderRadius.circular(16.0),
                      color: Colors.redAccent,
                    ),
                    child: Center(
                        child: Icon(
                      Icons.card_travel,
                      size: 20.0,
                      color: Colors.white,
                    )),
                  ),
                  Container(
                    height: 40.0,
                    width: 40.0,
                    decoration: BoxDecoration(
                      borderRadius: BorderRadius.circular(16.0),
                      color: Colors.white,
                    ),
                    child: Center(
                        child: Icon(
                      Icons.insert_chart,
                      size: 20.0,
                      color: Colors.redAccent,
                    )),
                  ),
                  Container(
                    height: 40.0,
                    width: 40.0,
                    decoration: BoxDecoration(
                      borderRadius: BorderRadius.circular(16.0),
                      color: Colors.white,
                    ),
                    child: Center(
                        child: Icon(
                      Icons.local_movies,
                      size: 20.0,
                      color: Colors.redAccent,
                    )),
                  ),
                  Container(
                    height: 40.0,
                    width: 40.0,
                    decoration: BoxDecoration(
                      borderRadius: BorderRadius.circular(16.0),
                      color: Colors.white,
                    ),
                    child: Center(
                        child: Icon(
                      Icons.calendar_today,
                      size: 20.0,
                      color: Colors.redAccent,
                    )),
                  ),
                  Container(
                    height: 40.0,
                    width: 40.0,
                    decoration: BoxDecoration(
                      borderRadius: BorderRadius.circular(16.0),
                      color: Colors.white,
                    ),
                    child: Center(
                        child: Icon(
                      Icons.pie_chart_outlined,
                      size: 20.0,
                      color: Colors.redAccent,
                    )),
                  ),
                ],
              ),
            ),
            Container(
              margin: EdgeInsets.only(top: 24.0),
              height: 48.0,
              child: Row(
                children: <Widget>[
                  Container(
                    height: 40.0,
                    width: 250.0,
                    child: TabBar(
                        controller: _tabController,
                        labelStyle: TextStyle(fontWeight: FontWeight.bold, fontSize: 16.0),
                        labelColor: Colors.black,
                        unselectedLabelStyle: TextStyle(fontWeight: FontWeight.bold, fontSize: 16.0),
                        unselectedLabelColor: Colors.grey[400],
                        isScrollable: true,
                        indicator: BoxDecoration(shape: BoxShape.circle, color: Colors.redAccent,),
                        indicatorPadding: EdgeInsets.all(4.0),
                        indicatorSize: TabBarIndicatorSize.tab,
                        indicatorColor: Colors.redAccent,
                        tabs: [
                          Tab(
                            text: "In progress",
                          ),
                          Tab(
                            text: "Completed",
                          ),
                        ]),
                  ),
                  Spacer(),
                  Icon(
                    Icons.filter_list,
                    size: 20.0,
                    color: Colors.black,
                  ),
                ],
              ),
            ),
            Container(
              height: 435.0,
              child: TabBarView(controller: _tabController, children: [
                Placeholder(),
                Placeholder(),
              ]),
            )
          ],
        ),
      ),
      Placeholder(),
      Placeholder(),
      Placeholder(),
    ];
  }
}
