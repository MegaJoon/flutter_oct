import 'package:flutter/material.dart';
import 'dart:math';

class CheckOut2 extends StatefulWidget {
  @override
  _CheckOut2State createState() => _CheckOut2State();
}

class _CheckOut2State extends State<CheckOut2> {
  PageController _pageController;
  int _currentIndex = 2;

  @override
  void initState() {
    super.initState();
    _pageController = PageController(initialPage: _currentIndex, viewportFraction: 0.25);
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Container(
        child: Row(
          children: <Widget>[
            // Text: selected
            Flexible(
              flex: 2,
              child: Text(
                "Selected ->",
                style: TextStyle(color: Colors.black, fontSize: 16.0, fontWeight: FontWeight.bold),
              ),
            ),

            // card pageview
            Flexible(
              flex: 8,
              child: Container(
                height: MediaQuery.of(context).size.height,
                width: MediaQuery.of(context).size.width,
                child: PageView.builder(
                    itemCount: cardList.length,
                    controller: _pageController,
                    scrollDirection: Axis.vertical,
                    physics: BouncingScrollPhysics(),
                    onPageChanged: (index) {
                      setState(() {
                        _currentIndex = index;
                      });
                    },
                    itemBuilder: (BuildContext context, int index) {
                      double _offsetX = (pow((_currentIndex - index).abs(), 2)).toDouble() * 40;
                      double _angle = (_currentIndex - index).toDouble() * 0.3;
                      return Transform.translate(
                        offset: Offset(_offsetX, 0),
                        child: Transform.rotate(
                          angle: _angle,
                          child: Container(
                            padding: EdgeInsets.all(16.0),
                            margin: EdgeInsets.only(top: 16.0, bottom: 16.0, left: 24.0, right: 80.0),
                            height: 200.0,
                            width: 100.0,
                            decoration: BoxDecoration(
                              borderRadius: BorderRadius.circular(8.0),
                              color: cardList[index].backgroundColor,
                            ),
                            child: Column(
                              mainAxisAlignment: MainAxisAlignment.spaceBetween,
                              crossAxisAlignment: CrossAxisAlignment.start,
                              children: <Widget>[
                                Row(
                                  children: <Widget>[
                                    Text(
                                      cardList[index].name,
                                      style: TextStyle(color: Colors.white, fontWeight: FontWeight.bold, fontSize: 14.0),
                                    ),
                                    Text(
                                      " | BANK".toUpperCase(),
                                      style: TextStyle(color: Colors.grey[500], fontWeight: FontWeight.bold, fontSize: 14.0),
                                    ),
                                    Spacer(),
                                    Text(
                                      cardList[index].account,
                                      style: TextStyle(color: Colors.grey[500], fontWeight: FontWeight.bold, fontSize: 16.0),
                                    ),
                                  ],
                                ),
                                Container(
                                  height: 32.0,
                                  width: 32.0,
                                  decoration: BoxDecoration(
                                      borderRadius: BorderRadius.circular(4.0),
                                      image: DecorationImage(image: AssetImage("assets/sim_image.png"), fit: BoxFit.fill)),
                                ),
                                Row(
                                  crossAxisAlignment: CrossAxisAlignment.end,
                                  children: <Widget>[
                                    RichText(
                                      text: TextSpan(children: [
                                        TextSpan(
                                            text: "**** ",
                                            style: TextStyle(color: Colors.white, fontSize: 12.0, fontWeight: FontWeight.w600)),
                                        TextSpan(
                                            text: cardList[index].number,
                                            style: TextStyle(color: Colors.white, fontSize: 14.0, fontWeight: FontWeight.w300)),
                                      ]),
                                    ),
                                    Spacer(),
                                    Container(
                                      height: 36.0,
                                      width: 65.0,
//                                      color: Colors.white,
                                      child: Stack(
                                        children: <Widget>[
                                          Positioned(
                                            top: 0,
                                            right: 0,
                                            bottom: 0,
                                            child: Container(
                                              width: 36.0,
                                              decoration:
                                                  BoxDecoration(shape: BoxShape.circle, color: Color.fromRGBO(254, 154, 0, 1)),
                                            ),
                                          ),
                                          Positioned(
                                            top: 0,
                                            left: 0,
                                            bottom: 0,
                                            child: Container(
                                              width: 36.0,
                                              decoration: BoxDecoration(
                                                  shape: BoxShape.circle, color: Color.fromRGBO(254, 0, 0, 1).withOpacity(0.7)),
                                            ),
                                          ),
                                        ],
                                      ),
                                    )
                                  ],
                                )
                              ],
                            ),
                          ),
                        ),
                      );
                    }),
              ),
            ),
          ],
        ),
      ),
    );
  }
}

class CardList {
  Color backgroundColor;
  String name;
  String account;
  String number;

  CardList({this.backgroundColor, this.name, this.account, this.number});
}

List<CardList> cardList = [
  CardList(
    backgroundColor: Colors.amber,
    name: "United",
    account: "\$",
    number: "3456",
  ),
  CardList(
    backgroundColor: Color.fromRGBO(85, 82, 255, 1),
    name: "United",
    account: "\$",
    number: "3456",
  ),
  CardList(
    backgroundColor: Colors.black,
    name: "United",
    account: "\$",
    number: "3456",
  ),
  CardList(
    backgroundColor: Color.fromRGBO(99, 167, 156, 1),
    name: "United",
    account: "\$",
    number: "3456",
  ),
  CardList(
    backgroundColor: Color.fromRGBO(211, 107, 101, 1),
    name: "United",
    account: "\$",
    number: "3456",
  ),
];
