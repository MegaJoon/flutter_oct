import 'package:flutter/material.dart';
import 'package:flutter_circular_slider/flutter_circular_slider.dart';
import 'package:bezier_chart/bezier_chart.dart';

// https://dribbble.com/shots/3146248-Sleep-dashboard
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
                Column(
                  children: <Widget>[
                    Container(
                      padding: EdgeInsets.only(top: 16.0),
                      margin: EdgeInsets.only(bottom: 32.0),
                      height: 40.0,
                      child: ListView(
                        scrollDirection: Axis.horizontal,
                        itemExtent: 200,
                        children: <Widget>[
                          Text(
                            "Tuesday 7th Nov",
                            style: TextStyle(color: Colors.white, fontSize: 16.0),
                          ),
                          Text(
                            "Tuesday 7th Nov",
                            style: TextStyle(color: Colors.white, fontSize: 16.0),
                          ),
                          Text(
                            "Tuesday 7th Nov",
                            style: TextStyle(color: Colors.white, fontSize: 16.0),
                          ),
                          Text(
                            "Tuesday 7th Nov",
                            style: TextStyle(color: Colors.white, fontSize: 16.0),
                          ),
                          Text(
                            "Tuesday 7th Nov",
                            style: TextStyle(color: Colors.white, fontSize: 16.0),
                          ),
                          Text(
                            "Tuesday 7th Nov",
                            style: TextStyle(color: Colors.white, fontSize: 16.0),
                          ),
                        ],
                      ),
                    ),
                    Container(
                      height: 250,
//                      color: Colors.black,
                      child: SingleCircularSlider(
                        100,
                        75,
                        height: 250.0,
                        width: 250.0,
                        baseColor: Colors.white.withOpacity(0.3),
                        sliderStrokeWidth: 4.0,
                        selectionColor: Colors.white,
                        showHandlerOutter: false,
                        handlerOutterRadius: 4.0,
                        showRoundedCapInSelection: false,
                        handlerColor: Colors.white,
                        child: Center(
                          child: Column(
                            crossAxisAlignment: CrossAxisAlignment.center,
                            mainAxisAlignment: MainAxisAlignment.center,
                            children: <Widget>[
                              Text(
                                "75",
                                style: TextStyle(
                                    color: Colors.white,
                                    fontSize: 80.0,
                                    fontWeight: FontWeight.w300),
                              ),
                              Text(
                                "Sleep Score",
                                style: TextStyle(
                                    color: Colors.white.withOpacity(0.3),
                                    fontSize: 16.0,
                                    fontWeight: FontWeight.w300),
                              ),
                            ],
                          ),
                        ),
                      ),
                    ),

                    // graph
                    Container(
                      height: 149.0,
//                      color: Colors.black,
                    width: MediaQuery.of(context).size.width,
                      child:
                          BezierChart(
                              bezierChartScale: BezierChartScale.CUSTOM,
                              xAxisCustomValues: const[11, 12, 13, 14, 15, 16, 17, 18, 19],
                              config: BezierChartConfig(
//                                verticalIndicatorColor: Colors.black,
                                showDataPoints: false,
                                showVerticalIndicator: false
                              ),
                              series: const [
                                BezierLine(
                                  data: const[
                                    DataPoint<double>(value: 10, xAxis: 11),
                                    DataPoint<double>(value: 20, xAxis: 12),
                                    DataPoint<double>(value: 30, xAxis: 13),
                                    DataPoint<double>(value: 50, xAxis: 14),
                                    DataPoint<double>(value: 70, xAxis: 15),
                                    DataPoint<double>(value: 90, xAxis: 16),
                                    DataPoint<double>(value: 80, xAxis: 17),
                                    DataPoint<double>(value: 20, xAxis: 18),
                                    DataPoint<double>(value: 10, xAxis: 19),
                                  ]
                                )
                              ]),
                    )
                  ],
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
