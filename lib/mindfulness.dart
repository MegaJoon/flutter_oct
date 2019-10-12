import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:flutter_oct/play_music_page.dart';

// https://dribbble.com/shots/7424303-Mobile-App-Mindfulness

class Mindfulness extends StatefulWidget {
  @override
  _MindfulnessState createState() => _MindfulnessState();
}

class _MindfulnessState extends State<Mindfulness> with TickerProviderStateMixin {
  String _profileImage = "https://cdn.pixabay.com/photo/2019/09/30/14/51/squirrel-4515962__340.jpg";

  String _image = "https://cdn.pixabay.com/photo/2019/06/07/13/11/landscape-4258253__340.jpg";
  String _image2 =
      "https://cdn.pixabay.com/photo/2019/08/06/22/48/artificial-intelligence-4389372__340.jpg";
  String _image3 = "https://cdn.pixabay.com/photo/2019/02/14/07/28/painting-3995999__340.jpg";
  String _image4 = "https://cdn.pixabay.com/photo/2019/05/04/15/24/art-4178302__340.jpg";
  String _image5 = "https://cdn.pixabay.com/photo/2019/08/03/04/43/inkscape-4381041__340.png";

  Color _color = Color.fromRGBO(79, 60, 117, 1);

  String content = "Calm Highlights";
  String content2 = "Peaceful Thoughts";
  String content3 = "Self Confidence";
  String content4 = "Life Gratitue";
  String content5 = "Love Yourself";

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
                    style: TextStyle(color: _color, fontSize: 16.0, fontWeight: FontWeight.w600),
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
          // tabbar
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
                    Flexible(
                      flex: 1,
                      child: _buildCard(_image, content, Colors.white),
                    ),
                    SizedBox(
                      height: 16.0,
                    ),
                    Flexible(
                      flex: 3,
                      child: Row(
                        children: <Widget>[
                          Flexible(
                            flex: 1,
                            child: Column(
                              children: <Widget>[
                                Flexible(
                                  flex: 2,
                                  child: _buildCard(_image2, content2, Colors.white),
                                ),
                                SizedBox(
                                  height: 16.0,
                                ),
                                Flexible(
                                  flex: 1,
                                  child: _buildCard(_image3, content3, Colors.white),
                                ),
                                SizedBox(
                                  height: 16.0,
                                ),
                              ],
                            ),
                          ),
                          SizedBox(
                            width: 16.0,
                          ),
                          Flexible(
                            flex: 1,
                            child: Column(
                              children: <Widget>[
                                SizedBox(
                                  height: 16.0,
                                ),
                                Flexible(
                                  flex: 1,
                                  child: _buildCard(_image4, content4, Colors.black),
                                ),
                                SizedBox(
                                  height: 16.0,
                                ),
                                Flexible(
                                  flex: 2,
                                  child: _buildCard(_image5, content5, Colors.white),
                                ),
                              ],
                            ),
                          ),
                        ],
                      ),
                    ),
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

  // Custom_Card
  _buildCard(String _image, String content, Color color) {
    return InkWell(
      onTap: (){
        setState(() {
          Navigator.push(context, MaterialPageRoute(builder: (context) => PlayMusicPage(_image, content)));
        });
      },
      child: Hero(
        tag: _image,
        child: Container(
          padding: EdgeInsets.all(8.0),
          alignment: Alignment.topLeft,
          decoration: BoxDecoration(
              borderRadius: BorderRadius.circular(8.0),
              image: DecorationImage(image: NetworkImage(_image), fit: BoxFit.fill)),
          child: Text(
            content,
            style: TextStyle(color: color, fontSize: 20.0, fontWeight: FontWeight.bold), maxLines: 2,
          ),
        ),
      ),
    );
  }
}
