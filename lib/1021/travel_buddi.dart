import 'package:flutter/material.dart';
import 'package:flutter_oct/1021/travel_second.dart';

// https://dribbble.com/shots/7705730-Mobile-App-Travel-Buddi/attachments/430356?mode=media

class TravelBuddi extends StatefulWidget {
  @override
  _TravelBuddiState createState() => _TravelBuddiState();
}

class _TravelBuddiState extends State<TravelBuddi> {
  String _image =
      "https://cdn.pixabay.com/photo/2016/11/08/05/26/woman-1807533__340.jpg";
  String _image2 =
      "https://cdn.pixabay.com/photo/2016/10/17/07/53/busan-night-scene-1747130__340.jpg";

  // tag signal
  int _tag = 1;

  @override
  Widget build(BuildContext context) {
    final screenHeight = MediaQuery.of(context).size.height;
    return Scaffold(
      body: Stack(
        children: <Widget>[
          Positioned(
            top: 0,
            right: 16.0,
            left: 16.0,
            bottom: 0,
            child: Column(
              children: <Widget>[
                SafeArea(
                  top: true,
                  left: true,
                  right: true,
                  child: Container(
                    height: 64.0,
                    child: Row(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      mainAxisAlignment: MainAxisAlignment.center,
                      children: <Widget>[
                        Flexible(
                          flex: 1,
                          child: Container(),
                        ),
                        Flexible(
                          flex: 5,
                          child: Column(
                            crossAxisAlignment: CrossAxisAlignment.center,
                            mainAxisAlignment: MainAxisAlignment.center,
                            children: <Widget>[
                              Text(
                                "TravelBuddi",
                                style: TextStyle(
                                    color: Colors.black,
                                    fontSize: 24.0,
                                    fontWeight: FontWeight.bold),
                              ),
                              Text(
                                "Your Guide & Knowledge",
                                style: TextStyle(
                                    color: Colors.black,
                                    fontSize: 16.0,
                                    fontWeight: FontWeight.w600),
                              ),
                            ],
                          ),
                        ),
                        Flexible(
                          flex: 1,
                          child: Text(
                            "😁",
                            style:
                                TextStyle(color: Colors.black, fontSize: 28.0),
                          ),
                        ),
                      ],
                    ),
                  ),
                ),
                Container(
                  height: screenHeight - 88.0,
                  child: ListView(
                    shrinkWrap: true,
                    scrollDirection: Axis.vertical,
                    padding: EdgeInsets.only(top: 32.0),
                    children: <Widget>[
                      InkWell(
                        onTap: () {
                          setState(() {
                            _tag = 1;
                            Navigator.push(
                                context,
                                MaterialPageRoute(
                                    builder: (context) => TravelSecond(_tag)));
                          });
                        },
                        child: Hero(
                          tag: 1,
                          child: Container(
                            margin: EdgeInsets.only(bottom: 24.0),
                            padding: EdgeInsets.only(
                                left: 24.0, right: 24.0, bottom: 32.0),
                            height: 350.0,
                            decoration: BoxDecoration(
                                boxShadow: [
                                  BoxShadow(
                                      color: Colors.black12,
                                      spreadRadius: 2,
                                      blurRadius: 4)
                                ],
                                borderRadius: BorderRadius.circular(16.0),
                                image: DecorationImage(
                                    image: NetworkImage(_image),
                                    fit: BoxFit.fill)),
                            child: Column(
                              crossAxisAlignment: CrossAxisAlignment.start,
                              mainAxisAlignment: MainAxisAlignment.end,
                              children: <Widget>[
                                Text(
                                  "1802 price for",
                                  style: TextStyle(
                                      color: Colors.white,
                                      fontSize: 20.0,
                                      fontWeight: FontWeight.w300),
                                ),
                                Text(
                                  "Thailand",
                                  style: TextStyle(
                                      color: Colors.white,
                                      fontSize: 42.0,
                                      fontWeight: FontWeight.bold),
                                ),
                              ],
                            ),
                          ),
                        ),
                      ),
                      InkWell(
                        onTap: () {
                          setState(() {
                            _tag = 2;
                            Navigator.push(
                                context,
                                MaterialPageRoute(
                                    builder: (context) => TravelSecond(_tag)));
                          });
                        },
                        child: Hero(
                          tag: 2,
                          child: Container(
                            margin: EdgeInsets.only(bottom: 24.0),
                            padding: EdgeInsets.only(
                                left: 24.0, right: 24.0, bottom: 32.0),
                            height: 350.0,
                            decoration: BoxDecoration(
                                boxShadow: [
                                  BoxShadow(
                                      color: Colors.black12,
                                      spreadRadius: 2,
                                      blurRadius: 4)
                                ],
                                borderRadius: BorderRadius.circular(16.0),
                                image: DecorationImage(
                                    image: NetworkImage(_image2),
                                    fit: BoxFit.fill)),
                            child: Column(
                              crossAxisAlignment: CrossAxisAlignment.start,
                              mainAxisAlignment: MainAxisAlignment.end,
                              children: <Widget>[
                                Text(
                                  "1802 price for",
                                  style: TextStyle(
                                      color: Colors.white,
                                      fontSize: 20.0,
                                      fontWeight: FontWeight.w300),
                                ),
                                Text(
                                  "Korea",
                                  style: TextStyle(
                                      color: Colors.white,
                                      fontSize: 42.0,
                                      fontWeight: FontWeight.bold),
                                ),
                              ],
                            ),
                          ),
                        ),
                      ),
                    ],
                  ),
                )
              ],
            ),
          ),
          Positioned(
            bottom: 12.0,
            right: 12.0,
            left: 12.0,
            child: Container(
              height: 48.0,
              decoration: ShapeDecoration(
                  color: Colors.white,
                  shape: StadiumBorder(),
                  shadows: [BoxShadow(color: Colors.black12, blurRadius: 4)]),
              child: TextField(
                decoration: InputDecoration(
                    contentPadding: EdgeInsets.all(12.0),
                    border: InputBorder.none,
                    prefixIcon: Icon(
                      Icons.search,
                      size: 28.0,
                      color: Colors.black,
                    ),
                    hintText: "Search places, things, etc...",
                    hintStyle: TextStyle(
                        color: Colors.black,
                        fontSize: 14.0,
                        fontWeight: FontWeight.w600)),
              ),
            ),
          )
        ],
      ),
    );
  }
}
