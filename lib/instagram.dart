import 'package:flutter/material.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';

import 'content.dart';

// https://dribbble.com/shots/7332739-Instagram-Redesign/attachments/247998?mode=media

class Instagram extends StatefulWidget {
  @override
  _InstagramState createState() => _InstagramState();
}

class _InstagramState extends State<Instagram> {
  Color _color = Color.fromRGBO(219, 162, 103, 1);
  Color _color2 = Color.fromRGBO(151, 30, 125, 1);
  Color _color3 = Color.fromRGBO(146, 219, 113, 1);
  Color _color4 = Color.fromRGBO(57, 176, 103, 1);
  String _profileImage =
      "https://cdn.pixabay.com/photo/2019/10/02/18/00/selfie-4521579__340.jpg";

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.black,
      body: SingleChildScrollView(
        scrollDirection: Axis.vertical,
        child: Column(
          children: <Widget>[
            // appbar
            SafeArea(
              top: true,
//              left: true,
//              right: true,
              child: Container(
                margin: EdgeInsets.symmetric(horizontal: 24.0),
                height: 40,
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: <Widget>[
                    Icon(FontAwesomeIcons.camera,
                        size: 20.0, color: Colors.white),
                    SizedBox(width: 24),
                    Text("Instagram",
                        style: TextStyle(
                            color: Colors.white,
                            fontSize: 14.0,
                            fontWeight: FontWeight.w600,
                            fontFamily: "Amarillo")),
                    Spacer(),
                    Icon(FontAwesomeIcons.tv, size: 20.0, color: Colors.white),
                    SizedBox(width: 24),
                    Icon(FontAwesomeIcons.facebookMessenger,
                        size: 20.0, color: Colors.white),
                  ],
                ),
              ),
            ),

            // video
            Container(
              margin: EdgeInsets.only(top: 16.0, left: 24.0),
              height: 56,
              width: double.maxFinite,
//              color: Colors.amber,
              child: ListView(
                scrollDirection: Axis.horizontal,
                shrinkWrap: true,
                children: <Widget>[
                  Container(
                      margin: EdgeInsets.only(right: 24.0),
                      height: 56,
                      width: 56,
                      child: Stack(
                        children: <Widget>[
                          Container(
                            height: 56,
                            width: 56,
                            decoration: BoxDecoration(
                                shape: BoxShape.circle,
                                gradient: LinearGradient(
                                    colors: [_color, _color2],
                                    begin: Alignment.bottomLeft,
                                    end: Alignment.topRight)),
                            child: Container(
                              margin: EdgeInsets.all(1.5),
                              decoration: BoxDecoration(
                                  shape: BoxShape.circle,
                                  border: Border.all(
                                      color: Colors.black, width: 3.0),
                                  image: DecorationImage(
                                      image: NetworkImage(_profileImage),
                                      fit: BoxFit.fill)),
                            ),
                          ),
                          Positioned(
                            bottom: 0,
                            right: 0,
                            child: Container(
                              height: 20,
                              width: 20,
                              decoration: BoxDecoration(
                                  shape: BoxShape.circle,
                                  color: Colors.lightBlue,
                                  border: Border.all(
                                      color: Colors.white, width: 1.5)),
                              child: Icon(Icons.add,
                                  color: Colors.white, size: 14.0),
                            ),
                          )
                        ],
                      )),
                  Container(
                      margin: EdgeInsets.only(right: 8.0),
                      height: 56,
                      width: 56,
                      child: Stack(
                        children: <Widget>[
                          Container(
                            height: 56,
                            width: 56,
                            decoration: BoxDecoration(
                                shape: BoxShape.circle,
                                gradient: LinearGradient(
                                    colors: [_color, _color2],
                                    begin: Alignment.bottomLeft,
                                    end: Alignment.topRight)),
                            child: Container(
                              margin: EdgeInsets.all(1.5),
                              decoration: BoxDecoration(
                                  shape: BoxShape.circle,
                                  border: Border.all(
                                      color: Colors.black, width: 3.0),
                                  image: DecorationImage(
                                      image:
                                          NetworkImage(content[0].profileImage),
                                      fit: BoxFit.fill)),
                            ),
                          ),
                        ],
                      )),
                  Container(
                      margin: EdgeInsets.only(right: 8.0),
                      height: 56,
                      width: 56,
                      child: Stack(
                        children: <Widget>[
                          Container(
                            height: 56,
                            width: 56,
                            decoration: BoxDecoration(
                                shape: BoxShape.circle,
                                gradient: LinearGradient(
                                    colors: [_color, _color2],
                                    begin: Alignment.bottomLeft,
                                    end: Alignment.topRight)),
                            child: Container(
                              margin: EdgeInsets.all(1.5),
                              decoration: BoxDecoration(
                                  shape: BoxShape.circle,
                                  border: Border.all(
                                      color: Colors.black, width: 3.0),
                                  image: DecorationImage(
                                      image:
                                          NetworkImage(content[1].profileImage),
                                      fit: BoxFit.fill)),
                            ),
                          ),
                        ],
                      )),
                  Container(
                      margin: EdgeInsets.only(right: 8.0),
                      height: 56,
                      width: 56,
                      child: Stack(
                        children: <Widget>[
                          Container(
                            height: 56,
                            width: 56,
                            decoration: BoxDecoration(
                                shape: BoxShape.circle,
                                gradient: LinearGradient(
                                    colors: [_color, _color2],
                                    begin: Alignment.bottomLeft,
                                    end: Alignment.topRight)),
                            child: Container(
                              margin: EdgeInsets.all(1.5),
                              decoration: BoxDecoration(
                                  shape: BoxShape.circle,
                                  border: Border.all(
                                      color: Colors.black, width: 3.0),
                                  image: DecorationImage(
                                      image:
                                          NetworkImage(content[2].profileImage),
                                      fit: BoxFit.fill)),
                            ),
                          ),
                        ],
                      )),
                  Container(
                      margin: EdgeInsets.only(right: 8.0),
                      height: 56,
                      width: 56,
                      child: Stack(
                        children: <Widget>[
                          Container(
                            height: 56,
                            width: 56,
                            decoration: BoxDecoration(
                                shape: BoxShape.circle,
                                gradient: LinearGradient(
                                    colors: [_color, _color2],
                                    begin: Alignment.bottomLeft,
                                    end: Alignment.topRight)),
                            child: Container(
                              margin: EdgeInsets.all(1.5),
                              decoration: BoxDecoration(
                                  shape: BoxShape.circle,
                                  border: Border.all(
                                      color: Colors.black, width: 3.0),
                                  image: DecorationImage(
                                      image:
                                          NetworkImage(content[3].profileImage),
                                      fit: BoxFit.fill)),
                            ),
                          ),
                        ],
                      )),
                  Container(
                      margin: EdgeInsets.only(right: 8.0),
                      height: 56,
                      width: 56,
                      child: Stack(
                        children: <Widget>[
                          Container(
                            height: 56,
                            width: 56,
                            decoration: BoxDecoration(
                                shape: BoxShape.circle,
                                gradient: LinearGradient(
                                    colors: [_color3, _color4],
                                    begin: Alignment.bottomLeft,
                                    end: Alignment.topRight)),
                            child: Container(
                              margin: EdgeInsets.all(1.5),
                              decoration: BoxDecoration(
                                  shape: BoxShape.circle,
                                  border: Border.all(
                                      color: Colors.black, width: 3.0),
                                  image: DecorationImage(
                                      image:
                                          NetworkImage(content[4].profileImage),
                                      fit: BoxFit.fill)),
                            ),
                          ),
                        ],
                      )),
                  Container(
                      margin: EdgeInsets.only(right: 8.0),
                      height: 56,
                      width: 56,
                      child: Stack(
                        children: <Widget>[
                          Container(
                            height: 56,
                            width: 56,
                            decoration: BoxDecoration(
                                shape: BoxShape.circle,
                                gradient: LinearGradient(
                                    colors: [_color3, _color4],
                                    begin: Alignment.bottomLeft,
                                    end: Alignment.topRight)),
                            child: Container(
                              margin: EdgeInsets.all(1.5),
                              decoration: BoxDecoration(
                                  shape: BoxShape.circle,
                                  border: Border.all(
                                      color: Colors.black, width: 3.0),
                                  image: DecorationImage(
                                      image:
                                          NetworkImage(content[5].profileImage),
                                      fit: BoxFit.fill)),
                            ),
                          ),
                        ],
                      )),
                ],
              ),
            ),
            Container(
              height: MediaQuery.of(context).size.height,
              width: double.maxFinite,
//              color: Colors.amber,
              child: ListView.builder(
                  padding: EdgeInsets.zero,
                  shrinkWrap: true,
                  itemBuilder: (BuildContext context, int index) {
                    return Container(
                        margin: EdgeInsets.only(top: 8.0),
                        height: 400,
                        width: double.maxFinite,
                        child: Column(
                          children: <Widget>[
                            // user information
                            Flexible(
                                flex: 1,
                                child: Padding(
                                  padding: const EdgeInsets.only(
                                      left: 24.0,
                                      right: 24.0,
                                      top: 4.0,
                                      bottom: 4.0),
                                  child: Row(
                                    children: <Widget>[
                                      // image
                                      Container(
                                          margin: EdgeInsets.only(right: 8.0),
                                          height: 36,
                                          width: 36,
                                          child: ClipRRect(
                                              borderRadius:
                                                  BorderRadius.circular(32.0),
                                              child: Image(
                                                  image: NetworkImage(
                                                      content[index]
                                                          .profileImage),
                                                  fit: BoxFit.cover))),
                                      // name
                                      Column(
                                        mainAxisAlignment:
                                            MainAxisAlignment.spaceEvenly,
                                        crossAxisAlignment:
                                            CrossAxisAlignment.start,
                                        children: <Widget>[
                                          Text(
                                            content[index].name,
                                            style: TextStyle(
                                                color: Colors.grey,
                                                fontSize: 14.0,
                                                fontWeight: FontWeight.w600),
                                          ),
                                          Text(
                                            content[index].country,
                                            style: TextStyle(
                                                color: Colors.grey,
                                                fontSize: 12.0,
                                                fontWeight: FontWeight.w300),
                                          ),
                                        ],
                                      ),
                                      Spacer(),
                                      Icon(Icons.more_horiz,
                                          size: 28.0, color: Colors.white)
                                    ],
                                  ),
                                )),
                            // image
                            Flexible(
                                flex: 5,
                                child: Container(
                                  decoration: BoxDecoration(
                                      image: DecorationImage(
                                          image: NetworkImage(
                                              content[index].postImage),
                                          fit: BoxFit.fill)),
                                )),
                            //
                            Flexible(
                                flex: 4,
                                child: Padding(
                                  padding: const EdgeInsets.all(12.0),
                                  child: Column(
                                    crossAxisAlignment:
                                        CrossAxisAlignment.start,
                                    mainAxisAlignment:
                                        MainAxisAlignment.spaceBetween,
                                    children: <Widget>[
                                      // emoji
                                      Row(
                                        children: <Widget>[
                                          Container(
                                            width: 100,
                                            child: Row(
                                              mainAxisAlignment:
                                                  MainAxisAlignment
                                                      .spaceBetween,
                                              children: <Widget>[
                                                Icon(
                                                  Icons.favorite,
                                                  size: 20.0,
                                                  color: Color.fromRGBO(
                                                      255, 12, 12, 1),
                                                ),
                                                Icon(Icons.message,
                                                    size: 20.0,
                                                    color: Colors.grey),
                                                Icon(
                                                    FontAwesomeIcons
                                                        .facebookMessenger,
                                                    size: 20.0,
                                                    color: Colors.grey),
                                              ],
                                            ),
                                          ),
                                          Spacer(),
                                          Icon(Icons.bookmark_border,
                                              size: 20.0, color: Colors.grey),
                                        ],
                                      ),

                                      // liked by
                                      Container(
                                        child: Row(
                                          children: <Widget>[
                                            Container(
                                                height: 40,
                                                width: 60,
                                                child: Stack(
                                                  children: <Widget>[
                                                    Positioned(
                                                      top: 10,
                                                      left: 0,
                                                      child: Container(
                                                        height: 24,
                                                        width: 24,
                                                        decoration: BoxDecoration(
                                                            shape:
                                                                BoxShape.circle,
                                                            border: Border.all(
                                                                color:
                                                                    Colors.grey,
                                                                width: 1.0),
                                                            image: DecorationImage(
                                                                image: NetworkImage(
                                                                    content[0]
                                                                        .profileImage),
                                                                fit: BoxFit
                                                                    .fill)),
                                                      ),
                                                    ),
                                                    Positioned(
                                                      top: 10,
                                                      left: 10,
                                                      child: Container(
                                                        height: 24,
                                                        width: 24,
                                                        decoration: BoxDecoration(
                                                            shape:
                                                                BoxShape.circle,
                                                            border: Border.all(
                                                                color:
                                                                    Colors.grey,
                                                                width: 1.0),
                                                            image: DecorationImage(
                                                                image: NetworkImage(
                                                                    content[1]
                                                                        .profileImage),
                                                                fit: BoxFit
                                                                    .fill)),
                                                      ),
                                                    ),
                                                    Positioned(
                                                      top: 10,
                                                      left: 20,
                                                      child: Container(
                                                        height: 24,
                                                        width: 24,
                                                        decoration: BoxDecoration(
                                                            shape:
                                                                BoxShape.circle,
                                                            border: Border.all(
                                                                color:
                                                                    Colors.grey,
                                                                width: 1.0),
                                                            image: DecorationImage(
                                                                image: NetworkImage(
                                                                    content[2]
                                                                        .profileImage),
                                                                fit: BoxFit
                                                                    .fill)),
                                                      ),
                                                    )
                                                  ],
                                                )),
                                            Text(
                                              "liked by Jessy, Danny, Hana AND 474 Other",
                                              style: TextStyle(
                                                  color: Colors.grey,
                                                  fontSize: 12.0),
                                            )
                                          ],
                                        ),
                                      ),

                                      // text
                                      Row(
                                        children: <Widget>[
                                          Flexible(
                                              flex: 6,
                                              child: Text(content[index].title,
                                                  style: TextStyle(
                                                      color: Colors.grey,
                                                      fontSize: 12.0),
                                                  maxLines: 1,
                                                  overflow:
                                                      TextOverflow.ellipsis)),
                                          Flexible(
                                              flex: 2,
                                              child: Text("more",
                                                  style: TextStyle(
                                                      color: Colors.grey[700],
                                                      fontSize: 12.0))),
                                        ],
                                      ),
                                      Text(
                                        "View All 169 comment...",
                                        style: TextStyle(
                                            color: Colors.grey[700],
                                            fontSize: 12.0),
                                      ),
                                      Container(
                                        height: 32,
                                        child: Row(children: <Widget>[
                                          Container(
                                            margin: EdgeInsets.only(right: 8.0),
                                            height: 24,
                                            width: 24,
                                            decoration: BoxDecoration(
                                                shape: BoxShape.circle,
                                                image: DecorationImage(
                                                    image: NetworkImage(
                                                        _profileImage),
                                                    fit: BoxFit.cover)),
                                          ),
                                          Text(
                                            "Add to a comment",
                                            style: TextStyle(
                                                color: Colors.grey[700]),
                                          ),
                                          Spacer(),
                                          Container(
                                            margin: EdgeInsets.only(right: 8.0),
                                            height: 24,
                                            width: 24,
                                            decoration: BoxDecoration(
                                                shape: BoxShape.circle,
                                                color: Colors.grey[700]),
                                            child: Center(
                                                child: Text(
                                              "💗",
                                              style: TextStyle(fontSize: 12.0),
                                            )),
                                          ),
                                          Container(
                                            margin: EdgeInsets.only(right: 8.0),
                                            height: 24,
                                            width: 24,
                                            decoration: BoxDecoration(
                                                shape: BoxShape.circle,
                                                color: Colors.grey[700]),
                                            child: Center(
                                                child: Text(
                                              "😄",
                                              style: TextStyle(fontSize: 12.0),
                                            )),
                                          ),
                                          Container(
                                            height: 24,
                                            width: 24,
                                            decoration: BoxDecoration(
                                                shape: BoxShape.circle,
                                                color: Colors.grey[700]),
                                            child: Center(
                                                child: Icon(
                                              Icons.add,
                                              size: 12.0,
                                              color: Colors.white,
                                            )),
                                          )
                                        ]),
                                      ),

                                      Text(
                                        "7 minutes age",
                                        style: TextStyle(
                                            color: Colors.grey[700],
                                            fontSize: 12.0),
                                      )
                                    ],
                                  ),
                                )),
                          ],
                        ));
                  }),
            )
          ],
        ),
      ),
      floatingActionButton: Stack(
        children: <Widget>[
          Positioned(
            bottom: 30,
            right: -30,
            child: Container(height: 40, width: 150, child: Placeholder()),
          )
        ],
      ),
    );
  }
}
