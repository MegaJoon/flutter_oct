import 'package:flutter/material.dart';
import 'package:flutter/services.dart';

// https://dribbble.com/shots/7424303-Mobile-App-Mindfulness

class Mindfulness extends StatefulWidget {
  @override
  _MindfulnessState createState() => _MindfulnessState();
}

class _MindfulnessState extends State<Mindfulness> with TickerProviderStateMixin {
  String _profileImage = "https://cdn.pixabay.com/photo/2019/09/30/14/51/squirrel-4515962__340.jpg";
  Color _color = Color.fromRGBO(79, 60, 117, 1);
  TabController _tabController;

  @override
  void initState() {
    // TODO: implement initState
    super.initState();
    _tabController = TabController(length: 5, vsync: this);
  }

  @override
  Widget build(BuildContext context) {
    // hide status bar
    SystemChrome.setSystemUIOverlayStyle(SystemUiOverlayStyle(statusBarColor: Colors.transparent));
    return Scaffold(
      body: Column(
        children: <Widget>[
          // appbar
          SafeArea(
            top: true,
            left: true,
            right: true,
            child: Container(
              margin: EdgeInsets.symmetric(horizontal: 24.0),
              height: 40.0,
              child: Row(
                children: <Widget>[
                  Container(
                    height: 40.0,
                    width: 40.0,
                    decoration: BoxDecoration(
                        shape: BoxShape.circle,
                        image:
                            DecorationImage(image: NetworkImage(_profileImage), fit: BoxFit.fill)),
                  ),
                  SizedBox(
                    width: 8.0,
                  ),
                  Text(
                    "Hi, Karen",
                    style: TextStyle(color: _color, fontSize: 20.0, fontWeight: FontWeight.bold),
                  ),
                  Spacer(),
                  Icon(
                    Icons.menu,
                    color: _color,
                    size: 28.0,
                  ),
                ],
              ),
            ),
          ),
          Container(
            margin: EdgeInsets.only(left: 24.0, top: 16.0, bottom: 16.0),
            height: 32.0,
            child: TabBar(
                controller: _tabController,
                isScrollable: true,
                labelColor: Colors.white,
                labelStyle: TextStyle(fontWeight: FontWeight.w600, fontSize: 14.0),
                unselectedLabelColor: _color,
                unselectedLabelStyle: TextStyle(fontWeight: FontWeight.w600, fontSize: 14.0),
                indicator: ShapeDecoration(shape: StadiumBorder(), color: _color),
                indicatorColor: _color,
                indicatorPadding: EdgeInsets.only(top: 24.0, bottom: 24.0),
//                labelPadding: EdgeInsets.all(8.0),
                tabs: [
                  Tab(text: "Sleep"),
                  Tab(text: "Inner Peace"),
                  Tab(text: "Stress"),
                  Tab(text: "Anxiety"),
                  Tab(text: "Peace"),
                ]),
          ),

          Container(
            height: 555.0,
            child: TabBarView(controller: _tabController, children: [
              Placeholder(),
              // second page
              Container(
                margin: EdgeInsets.only(top: 16.0, left: 16.0, right: 16.0),
                height: 555.0,
                child: Column(
                  children: <Widget>[
                    Flexible(flex: 1, child: Placeholder(color: Colors.teal,),),
                    SizedBox(height: 16.0,),
                    Flexible(flex: 3, child: Row(
                      children: <Widget>[
                        Flexible(flex: 1, child: Column(
                          children: <Widget>[
                            Flexible(flex: 2, child: Placeholder(color: Colors.teal,),),
                            SizedBox(height: 16.0,),
                            Flexible(flex: 1, child: Placeholder(color: Colors.teal,),),
                            SizedBox(height: 16.0,),
                          ],
                        ),),
                        SizedBox(width: 16.0,),
                        Flexible(flex: 1, child: Column(
                          children: <Widget>[
                            SizedBox(height: 16.0,),
                            Flexible(flex: 1, child: Placeholder(color: Colors.teal,),),
                            SizedBox(height: 16.0,),
                            Flexible(flex: 2, child: Placeholder(color: Colors.teal,),),
                          ],
                        ),),
                      ],
                    ),),
                  ],
                ),
              ),
              Placeholder(),
              Placeholder(),
              Placeholder(),
            ]),
          )
        ],
      ),
    );
  }
}
