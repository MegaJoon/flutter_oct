import 'dart:ui';

import 'package:flutter/material.dart';

// https://dribbble.com/shots/7369902-Icecream-app/attachments/259617?mode=media

class IceCream extends StatefulWidget {
  @override
  _IceCreamState createState() => _IceCreamState();
}

class _IceCreamState extends State<IceCream> {
  String _image = "https://cdn.pixabay.com/photo/2017/04/12/08/37/trdlo-2223968_960_720.jpg";
  Color _color = Color.fromRGBO(237, 132, 108, 1);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Container(
        height: double.infinity,
        width: double.infinity,
        decoration:
            BoxDecoration(image: DecorationImage(image: NetworkImage(_image), fit: BoxFit.fill)),
        child: Padding(
          padding: const EdgeInsets.only(left: 24.0, right: 24.0, bottom: 16.0),
          child: Column(
            children: <Widget>[
              // safearea
              SafeArea(
                top: true,
                left: true,
                right: true,
                child: Container(
                  height: 40,
                  child: Row(
                    children: <Widget>[
                      Icon(
                        Icons.arrow_back,
                        size: 28.0,
                        color: Colors.white,
                      ),
                      Spacer(),
                      Icon(
                        Icons.menu,
                        size: 28.0,
                        color: Colors.white,
                      )
                    ],
                  ),
                ),
              ),

              Spacer(),

              Container(
                margin: EdgeInsets.only(bottom: 16.0),
                height: 180,
                width: double.maxFinite,
//                color: Colors.white,
                child: ClipRect(
                    child: BackdropFilter(
                  filter: ImageFilter.blur(sigmaX: 5, sigmaY: 5),
                  child: Container(
                    decoration: BoxDecoration(
                        color: Colors.white.withOpacity(0.2),
                        borderRadius: BorderRadius.circular(8.0)),
                    child: Padding(
                      padding: const EdgeInsets.all(16.0),
                      child: Column(
                        mainAxisAlignment: MainAxisAlignment.spaceBetween,
                        children: <Widget>[
                          Row(
                            crossAxisAlignment: CrossAxisAlignment.end,
                            children: <Widget>[
                              Text(
                                "Joygelato\ngrandraspberry",
                                style: TextStyle(
                                    color: Colors.white,
                                    fontSize: 24.0,
                                    fontWeight: FontWeight.w600),
                              ),
                              Spacer(),
                              Text(
                                "8.50",
                                style: TextStyle(
                                    color: Colors.white,
                                    fontSize: 24.0,
                                    fontWeight: FontWeight.w600),
                              ),
                            ],
                          ),
                          Row(
                            children: <Widget>[
                              Text(
                                "Florance, Italy",
                                style: TextStyle(
                                    color: Colors.white,
                                    fontSize: 14.0,
                                    fontWeight: FontWeight.w300),
                              ),
                              Icon(
                                Icons.location_on,
                                size: 16.0,
                                color: _color,
                              ),
                              Text(
                                "3km",
                                style: TextStyle(
                                    color: Colors.white,
                                    fontSize: 14.0,
                                    fontWeight: FontWeight.w300),
                              ),
                              Spacer(),
                              Text(
                                "3 boals",
                                style: TextStyle(
                                    color: Colors.white,
                                    fontSize: 14.0,
                                    fontWeight: FontWeight.w300),
                              ),
                            ],
                          ),
                          Row(
                            children: <Widget>[
                              Icon(
                                Icons.star,
                                size: 14.0,
                                color: _color,
                              ),
                              Icon(
                                Icons.star,
                                size: 14.0,
                                color: _color,
                              ),
                              Icon(
                                Icons.star,
                                size: 14.0,
                                color: _color,
                              ),
                              Icon(
                                Icons.star,
                                size: 14.0,
                                color: _color,
                              ),
                              Icon(
                                Icons.star_border,
                                size: 14.0,
                                color: _color,
                              ),
                            ],
                          ),
                          Container(
                            height: 32,
                            decoration: BoxDecoration(
                                borderRadius: BorderRadius.circular(16.0), color: _color),
                            child: Center(
                                child: Text(
                              "buy now",
                              style: TextStyle(
                                  color: Colors.white, fontSize: 18.0, fontWeight: FontWeight.w600),
                            )),
                          )
                        ],
                      ),
                    ),
                  ),
                )),
              ),
              Text(
                "More details",
                style: TextStyle(color: Colors.white, fontSize: 14.0, fontWeight: FontWeight.w300),
              )
            ],
          ),
        ),
      ),
    );
  }
}
