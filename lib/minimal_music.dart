import 'package:flutter/material.dart';
import 'package:flutter_oct/play_page.dart';

import 'list_file.dart';

// https://dribbble.com/shots/7295518-Minimal-Music-App/attachments/233329?mode=media

// https://fluttersensei.com/posts/the-toobox-hero-animations/

class MinimalMusicApp extends StatefulWidget {
  @override
  _MinimalMusicAppState createState() => _MinimalMusicAppState();
}

class _MinimalMusicAppState extends State<MinimalMusicApp> {
  Color _color = Color.fromRGBO(197, 216, 217, 1);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Padding(
        padding: const EdgeInsets.only(left: 24.0),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: <Widget>[
            _buildSafeArea(),
            _buildTitleText("Genres & Moods"),
            _buildListView(),
            _buildTitleText("Popular"),
            _buildSecondListView(),
          ],
        ),
      ),
    );
  }

  _buildSafeArea() {
    return // safearea
        SafeArea(
      top: true,
      left: true,
      right: true,
      child: Container(
        margin: EdgeInsets.only(right: 24.0, bottom: 16.0),
        height: 40,
        child: Row(
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          children: <Widget>[
            Text("Music",
                style: TextStyle(
                    color: Colors.black,
                    fontSize: 32.0,
                    fontWeight: FontWeight.w900)),
            Container(
                height: 32,
                width: 160,
                decoration: BoxDecoration(
                    color: Colors.grey[300],
                    borderRadius: BorderRadius.circular(8.0)),
                child: TextField(
                  decoration: InputDecoration(
                    border: InputBorder.none,
                    contentPadding: EdgeInsets.all(8.0),
                    hintText: "Search",
                    hintStyle: TextStyle(color: Colors.grey, fontSize: 16.0),
                    suffixIcon: Container(
                        margin: EdgeInsets.only(left: 8.0),
                        decoration: BoxDecoration(
                            color: Colors.grey,
                            borderRadius: BorderRadius.only(
                                topRight: Radius.circular(8.0),
                                bottomRight: Radius.circular(8.0))),
                        child: Icon(Icons.search,
                            size: 24.0, color: Colors.white)),
                  ),
                ))
          ],
        ),
      ),
    );
  }

  _buildTitleText(String title) {
    return Text(title,
        style: TextStyle(
            color: Colors.grey, fontSize: 16.0, fontWeight: FontWeight.bold));
  }

  _buildListView() {
    return Container(
      margin: EdgeInsets.only(top: 16.0, bottom: 16.0),
      height: 150,
      decoration: BoxDecoration(
//                  color: Colors.amber,
          borderRadius: BorderRadius.circular(8.0)),
      child: ListView.builder(
          itemCount: genre.length,
          shrinkWrap: true,
          scrollDirection: Axis.horizontal,
          itemBuilder: (BuildContext context, int index) {
            return Container(
              margin: EdgeInsets.only(
                  top: 0.5, left: 2.0, right: 16.0, bottom: 8.0),
              height: 140,
              width: 140,
              decoration: BoxDecoration(
                  image: DecorationImage(
                      image: NetworkImage(genre[index].image),
                      fit: BoxFit.cover),
                  color: Colors.black,
                  borderRadius: BorderRadius.circular(8.0),
                  boxShadow: [
                    BoxShadow(
                        color: Colors.pink.withOpacity(0.5),
                        blurRadius: 2,
                        spreadRadius: 2)
                  ]),
              child: Padding(
                padding: const EdgeInsets.only(bottom: 16.0),
                child: Align(
                    alignment: Alignment.bottomCenter,
                    child: Text(genre[index].mood,
                        style: TextStyle(
                            color: Colors.white,
                            fontSize: 16.0,
                            fontWeight: FontWeight.bold))),
              ),
            );
          }),
    );
  }

  _buildSecondListView() {
    return Container(
        margin: EdgeInsets.only(right: 24.0, bottom: 16.0),
        height: 367,
//              color: Colors.amber,
        child: ListView.builder(
            itemCount: song.length,
            shrinkWrap: true,
            scrollDirection: Axis.vertical,
            itemBuilder: (BuildContext context, int idx) {
              return InkWell(
                onTap: () {
                  setState(() {
                    Navigator.of(context).push(
                      PageRouteBuilder<Null>(
                          pageBuilder: (BuildContext context,
                              Animation<double> animation,
                              Animation<double> secondaryAnimation) {
                            return AnimatedBuilder(
                                animation: animation,
                                builder: (BuildContext context, Widget child) {
                                  return Opacity(
                                    opacity: animation.value,
                                    child: PlayPage(idx),
                                  );
                                });
                          },
                          transitionDuration: Duration(milliseconds: 600)),
                    );
                  });
                },
                child: Container(
                  margin: EdgeInsets.only(bottom: 14.0),
                  height: 75,
//                      color: Colors.indigo,
                  child: Row(
                    children: <Widget>[
                      Hero(
                        tag: "music + $idx",
                        child: Container(
                          margin: EdgeInsets.only(right: 16.0),
                          height: 75,
                          width: 75,
                          decoration: BoxDecoration(
                              boxShadow: [
                                BoxShadow(
                                    color: Colors.black.withOpacity(0.2),
                                    spreadRadius: 1,
                                    blurRadius: 1)
                              ],
                              borderRadius: BorderRadius.circular(12.0),
                              image: DecorationImage(
                                  image: NetworkImage(song[idx].image),
                                  fit: BoxFit.cover)),
                        ),
                      ),
                      Column(
                        mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: <Widget>[
                          Text(song[idx].name,
                              style: TextStyle(
                                  color: Colors.black,
                                  fontSize: 14.0,
                                  fontWeight: FontWeight.bold)),
                          Text(song[idx].singer,
                              style: TextStyle(
                                  color: Colors.grey,
                                  fontSize: 12.0,
                                  fontWeight: FontWeight.bold)),
                          Text(song[idx].time,
                              style: TextStyle(
                                  height: 1.5,
                                  color: _color,
                                  fontSize: 18.0,
                                  fontWeight: FontWeight.bold)),
                        ],
                      ),
                      Spacer(),
                      Icon(Icons.more_vert, size: 28.0, color: Colors.grey)
                    ],
                  ),
                ),
              );
            }));
  }
}
