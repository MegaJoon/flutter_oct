import 'dart:ui';

import 'package:flutter/material.dart';
import 'package:flutter_oct/1027/itemlist.dart';

class ShowPage extends StatefulWidget {
  int index;

  ShowPage(this.index);

  @override
  _ShowPageState createState() => _ShowPageState();
}

class _ShowPageState extends State<ShowPage> {
  PageController _pageController;

  @override
  void initState() {
    _pageController = PageController(initialPage: widget.index, viewportFraction: 0.90);
    super.initState();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        body: Stack(
      children: <Widget>[
        // background
        Positioned(
          top: 0,
          left: 0,
          right: 0,
          bottom: 0,
          child: ClipRect(
            child: Container(
              decoration: BoxDecoration(
                image: DecorationImage(image: AssetImage(itemList[widget.index].image), fit: BoxFit.fill),
              ),
              child: BackdropFilter(
                filter: ImageFilter.blur(sigmaX: 20.0, sigmaY: 20.0),
                child: Container(
                  color: Colors.black12,
                ),
              ),
            ),
          ),
        ),

        Positioned(
          top: 0,
          left: 16.0,
          right: 0.0,
          bottom: 0,
          child: SafeArea(
              top: true,
              left: true,
              right: true,
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                mainAxisAlignment: MainAxisAlignment.start,
                children: <Widget>[
                  // appbar
                  Container(
                    margin: EdgeInsets.only(right: 16.0),
                    height: 32.0,
                    child: Row(
                      children: <Widget>[
                        Container(
                          height: 32.0,
                          width: 32.0,
                          decoration: BoxDecoration(
                            shape: BoxShape.circle,
                            color: Colors.white12,
                          ),
                          child: IconButton(
                            icon: Icon(
                              Icons.arrow_back_ios,
                              size: 16.0,
                              color: Colors.white,
                            ),
                            onPressed: () {
                              setState(() {
                                Navigator.pop(context);
                              });
                            },
                          ),
                        ),
                        Spacer(),
                        Container(
                          height: 32.0,
                          width: 32.0,
                          decoration: BoxDecoration(
                            shape: BoxShape.circle,
                            color: Colors.white12,
                          ),
                          child: IconButton(
                            icon: Icon(
                              Icons.subdirectory_arrow_right,
                              size: 16.0,
                              color: Colors.white,
                            ),
                            onPressed: () {
                              setState(() {
                                Navigator.pop(context);
                              });
                            },
                          ),
                        ),
                      ],
                    ),
                  ),
                  SizedBox(
                    height: 16.0,
                  ),

                  //text
                  Text(
                    "상영중",
                    style: TextStyle(color: Colors.white, fontSize: 28.0, fontWeight: FontWeight.bold),
                  ),
                  Container(
                    margin: EdgeInsets.only(left: 40.0, bottom: 16.0),
                    height: 3.0,
                    width: 36.0,
                    decoration: ShapeDecoration(
                      shape: StadiumBorder(),
                      color: Colors.amber,
                    ),
                  ),

                  // pageview
                  Container(
                    height: 500.0,
                    child: PageView.builder(
                        controller: _pageController,
                        itemCount: itemList.length,
                        onPageChanged: (currentIndex) {
                          setState(() {
                            widget.index = currentIndex;
                          });
                        },
                        itemBuilder: (BuildContext context, int index) {
                          return Transform.translate(
                            offset: Offset(-16.0, 0.0),
                            child: Column(
                              children: <Widget>[
                                ClipPath(
                                  clipper: widget.index == index? null: myClipper(),
                                  child: Container(
                                    margin: EdgeInsets.only(right: 40.0),
                                    padding: EdgeInsets.only(right: 8.0, bottom: 8.0),
                                    alignment: Alignment.bottomRight,
                                    height: 380.0,
                                    decoration: BoxDecoration(
                                        borderRadius: BorderRadius.circular(24.0),
                                        image: DecorationImage(image: AssetImage(itemList[index].image), fit: BoxFit.fill)),
                                    child: Text(
                                      itemList[index].score,
                                      style: TextStyle(color: Colors.amber, fontSize: 24.0, fontWeight: FontWeight.w600),
                                    ),
                                  ),
                                ),

                                // description
                                widget.index == index?
                                Container(
                                  height: 120.0,
                                  child: Column(
                                    crossAxisAlignment: CrossAxisAlignment.start,
                                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                                    children: <Widget>[
                                      Text(
                                        itemList[index].title,
                                        style: TextStyle(color: Colors.white, fontSize: 28.0, fontWeight: FontWeight.bold),
                                      ),
                                      Row(
                                        children: <Widget>[
                                          Container(
                                            margin: EdgeInsets.only(right: 12.0),
                                            height: 16.0,
                                            width: 48.0,
                                            decoration: ShapeDecoration(
                                              shape: StadiumBorder(),
                                              color: Colors.white12,
                                            ),
                                            child: Center(
                                                child: Text(
                                              "genre1",
                                              style: TextStyle(color: Colors.white, fontSize: 12.0, fontWeight: FontWeight.w400),
                                            )),
                                          ),
                                          Container(
                                            height: 16.0,
                                            width: 48.0,
                                            decoration: ShapeDecoration(
                                              shape: StadiumBorder(),
                                              color: Colors.white12,
                                            ),
                                            child: Center(
                                                child: Text(
                                              "genre2",
                                              style: TextStyle(color: Colors.white, fontSize: 12.0, fontWeight: FontWeight.w400),
                                            )),
                                          ),
                                        ],
                                      ),
                                      Row(
                                        children: <Widget>[
                                          Icon(
                                            Icons.star,
                                            color: Colors.amber,
                                            size: 20.0,
                                          ),
                                          Icon(
                                            Icons.star,
                                            color: Colors.amber,
                                            size: 20.0,
                                          ),
                                          Icon(
                                            Icons.star,
                                            color: Colors.amber,
                                            size: 20.0,
                                          ),
                                          Icon(
                                            Icons.star,
                                            color: Colors.amber,
                                            size: 20.0,
                                          ),
                                          Icon(
                                            Icons.star,
                                            color: Colors.grey,
                                            size: 20.0,
                                          ),
                                        ],
                                      ),
                                      Text(
                                        itemList[index].description,
                                        style: TextStyle(color: Colors.white, fontSize: 10.0, fontWeight: FontWeight.bold),
                                        maxLines: 3,
                                        overflow: TextOverflow.ellipsis,
                                      ),
                                    ],
                                  ),
                                ):
                                    Container(),
                              ],
                            ),
                          );
                        }),
                  ),
                ],
              )),
        )
      ],
    ));
  }
}

class myClipper extends CustomClipper<Path>{
  @override
  Path getClip(Size size) {
    var path = new Path();
    path.lineTo(size.width, 0.0);
    path.lineTo(6.0, size.height * 0.20 - 6.0);
    // border
    path.quadraticBezierTo(2.0, size.height * 0.20 - 4.0, 0.0, size.height * 0.20);
    path.lineTo(0.0, size.height * 0.80);
    //
    path.quadraticBezierTo(2.0, size.height * 0.80 + 4.0, 6.0, size.height * 0.80 + 8.0);
    path.lineTo(size.width, size.height);
    path.lineTo(size.width, 0.0);
    path.close();
    return path;
  }

  @override
  bool shouldReclip(CustomClipper<Path> oldClipper) => false;
}
