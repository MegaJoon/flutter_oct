import 'dart:ui';

import 'package:flutter/material.dart';

import 'food_list.dart';

class CookDetail extends StatefulWidget {
  final int index;

  CookDetail(this.index);

  @override
  _CookDetailState createState() => _CookDetailState();
}

class _CookDetailState extends State<CookDetail> {
  Color _color = Color.fromRGBO(22, 44, 64, 1);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Stack(
        children: <Widget>[
          // background image
          Positioned(
            top: 0,
            left: 0,
            right: 0,
            bottom: 0,
            child: Hero(
              tag: "food ${widget.index}",
              child: Container(
                decoration:
                    BoxDecoration(image: DecorationImage(image: NetworkImage(foodList[widget.index].image), fit: BoxFit.fill)),
              ),
            ),
          ),

          // appbar
          Positioned(
            top: 0,
            left: 24.0,
            right: 24.0,
            child: SafeArea(
                top: true,
                left: true,
                right: true,
                child: Container(
                  height: 30.0,
                  child: Row(
                    children: <Widget>[
                      IconButton(
                        icon: Icon(
                          Icons.arrow_back,
                          color: Colors.white,
                        ),
                        iconSize: 28.0,
                        onPressed: () {
                          setState(() {
                            // navigator pop
                            Navigator.pop(context);
                          });
                        },
                      ),
                      Spacer(),
                      IconButton(
                        icon: Icon(
                          Icons.more_vert,
                          color: Colors.white,
                        ),
                        iconSize: 28.0,
                        onPressed: () {},
                      ),
                    ],
                  ),
                )),
          ),

          // white container
          Positioned(
            left: 24.0,
            right: 24.0,
            bottom: 16.0,
            child: Container(
              height: MediaQuery.of(context).size.height * 0.60,
              child: ClipRect(
                child: BackdropFilter(
                  filter: ImageFilter.blur(sigmaX: 20, sigmaY: 20),
                  child: Container(
                    padding: EdgeInsets.all(16.0),
                    height: MediaQuery.of(context).size.height * 0.60,
                    decoration: BoxDecoration(borderRadius: BorderRadius.circular(16.0), color: Colors.white.withOpacity(0.2)),
                    child: Column(
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: <Widget>[
                        Row(
                          children: <Widget>[
                            Text(
                              foodList[widget.index].title,
                              style: TextStyle(color: Colors.white, fontSize: 28.0, fontWeight: FontWeight.bold),
                            ),
                            Spacer(),
                            Icon(
                              Icons.favorite_border,
                              size: 24.0,
                              color: Colors.white,
                            ),
                          ],
                        ),
                        Row(
                          children: <Widget>[
                            Icon(
                              Icons.star_border,
                              size: 14.0,
                              color: Colors.white,
                            ),
                            Icon(
                              Icons.star_border,
                              size: 14.0,
                              color: Colors.white,
                            ),
                            Icon(
                              Icons.star_border,
                              size: 14.0,
                              color: Colors.white,
                            ),
                            Icon(
                              Icons.star_border,
                              size: 14.0,
                              color: Colors.white,
                            ),
                            Icon(
                              Icons.star_border,
                              size: 14.0,
                              color: Colors.white,
                            ),
                          ],
                        ),
                        Padding(
                          padding: const EdgeInsets.only(top: 8.0, bottom: 8.0),
                          child: Row(
                            children: <Widget>[
                              Container(
                                margin: EdgeInsets.only(right: 16.0),
                                height: 24.0,
                                width: 80.0,
                                decoration: BoxDecoration(
                                  borderRadius: BorderRadius.circular(4.0),
                                  color: _color,
                                ),
                                child: Center(
                                    child: Text(
                                  "Pancakes",
                                  style: TextStyle(
                                    color: Colors.white,
                                    fontSize: 12.0,
                                    fontWeight: FontWeight.w600,
                                  ),
                                )),
                              ),
                              Container(
                                margin: EdgeInsets.only(right: 16.0),
                                height: 24.0,
                                width: 80.0,
                                decoration: BoxDecoration(
                                  borderRadius: BorderRadius.circular(4.0),
                                  color: _color,
                                ),
                                child: Center(
                                    child: Text(
                                  "Books",
                                  style: TextStyle(
                                    color: Colors.white,
                                    fontSize: 12.0,
                                    fontWeight: FontWeight.w600,
                                  ),
                                )),
                              ),
                              Container(
                                margin: EdgeInsets.only(right: 16.0),
                                height: 24.0,
                                width: 80.0,
                                decoration: BoxDecoration(
                                  borderRadius: BorderRadius.circular(4.0),
                                  color: _color,
                                ),
                                child: Center(
                                    child: Text(
                                  "Reciptes",
                                  style: TextStyle(
                                    color: Colors.white,
                                    fontSize: 12.0,
                                    fontWeight: FontWeight.w600,
                                  ),
                                )),
                              ),
                            ],
                          ),
                        ),
                        Text(
                          foodList[widget.index].subTitle,
                          style: TextStyle(color: Colors.white, fontSize: 12.0, fontWeight: FontWeight.w600),
                        ),
                        Text(
                          foodList[widget.index].subTitle,
                          style: TextStyle(color: Colors.white, fontSize: 12.0, fontWeight: FontWeight.w600),
                        ),
                        SizedBox(
                          height: 8.0,
                        ),
                        //
                        Text(
                          "- Enim nisi deserunt sit Lorem ipsum ullamco et. Nisi",
                          style: TextStyle(color: Colors.white, fontSize: 12.0, fontWeight: FontWeight.w600),
                        ),
                        Text(
                          "- Enim nisi deserunt sit Lorem ipsum ullamco et. Nisi",
                          style: TextStyle(color: Colors.white, fontSize: 12.0, fontWeight: FontWeight.w600),
                        ),
                        Text(
                          "- Enim nisi deserunt sit Lorem ipsum ullamco et. Nisi",
                          style: TextStyle(color: Colors.white, fontSize: 12.0, fontWeight: FontWeight.w600),
                        ),
                        Text(
                          "- Enim nisi deserunt sit Lorem ipsum ullamco et. Nisi",
                          style: TextStyle(color: Colors.white, fontSize: 12.0, fontWeight: FontWeight.w600),
                        ),
                        //
                        SizedBox(
                          height: 8.0,
                        ),

                        Container(
                          height: 52.0,
                          decoration: BoxDecoration(borderRadius: BorderRadius.circular(8.0), color: _color),
                          child: Center(
                            child: Row(
                              mainAxisAlignment: MainAxisAlignment.center,
                              children: <Widget>[
                                Icon(
                                  Icons.add,
                                  size: 14.0,
                                  color: Colors.white,
                                ),
                                SizedBox(
                                  width: 8.0,
                                ),
                                Text(
                                  "Add to my cookbook",
                                  style: TextStyle(color: Colors.white, fontSize: 14.0, fontWeight: FontWeight.w600),
                                ),
                              ],
                            ),
                          ),
                        ),
                        Row(
                          children: <Widget>[
                            Icon(
                              Icons.share,
                              size: 16.0,
                              color: Colors.white,
                            ),
                            SizedBox(
                              width: 8.0,
                            ),
                            Text(
                              "265",
                              style: TextStyle(color: Colors.white, fontSize: 16.0, fontWeight: FontWeight.bold),
                            ),
                            Spacer(),
                            Icon(
                              Icons.favorite_border,
                              size: 16.0,
                              color: Colors.white,
                            ),
                            SizedBox(
                              width: 8.0,
                            ),
                            Text(
                              "265",
                              style: TextStyle(color: Colors.white, fontSize: 16.0, fontWeight: FontWeight.bold),
                            ),
                            Spacer(),
                            Icon(
                              Icons.chat_bubble_outline,
                              size: 16.0,
                              color: Colors.white,
                            ),
                            SizedBox(
                              width: 8.0,
                            ),
                            Text(
                              "265",
                              style: TextStyle(color: Colors.white, fontSize: 16.0, fontWeight: FontWeight.bold),
                            ),
                          ],
                        )
                      ],
                    ),
                  ),
                ),
              ),
            ),
          ),
        ],
      ),
    );
  }
}
