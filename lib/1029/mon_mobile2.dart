import 'package:flutter/material.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';

class MonMobile2 extends StatefulWidget {
  @override
  _MonMobile2State createState() => _MonMobile2State();
}

class _MonMobile2State extends State<MonMobile2> {
  // background image; (serum)
  String _image = "assets/serum.jpg";

  // star icon color
  Color _color = Color.fromRGBO(161, 154, 228, 1);

  // dropdown button
  String _value = "1 Bottle";

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Column(
        children: <Widget>[
          // top container
          Flexible(
            flex: 6,
            child: Container(
              decoration: BoxDecoration(image: DecorationImage(image: AssetImage(_image), fit: BoxFit.fill)),
              child: Stack(
                children: <Widget>[
                  // appbar
                  Positioned(
                    top: 0,
                    left: 16.0,
                    right: 0,
                    child: SafeArea(
                        top: true,
                        left: true,
                        right: true,
                        child: Container(
                          height: 80.0,
                          child: Row(
                            mainAxisAlignment: MainAxisAlignment.spaceBetween,
                            children: <Widget>[
                              //
                              Container(
                                  alignment: Alignment.centerLeft,
                                  height: 40.0,
                                  width: 100.0,
                                  child: Icon(
                                    Icons.menu,
                                    size: 32.0,
                                    color: Colors.black,
                                  )),

                              Container(
                                margin: EdgeInsets.only(right: 16.0),
                                height: 80.0,
                                width: 80.0,
                                color: Colors.grey[800],
                                child: Column(
                                  crossAxisAlignment: CrossAxisAlignment.center,
                                  mainAxisAlignment: MainAxisAlignment.center,
                                  children: <Widget>[
                                    Text(
                                      "MoN",
                                      style: TextStyle(
                                        color: Colors.white,
                                        fontSize: 24.0,
                                        fontWeight: FontWeight.bold,
                                        fontFamily: "ITCAvantGardeStd",
                                      ),
                                    ),
                                    Text(
                                      "makeup",
                                      style: TextStyle(color: Colors.white70, fontSize: 14.0, fontWeight: FontWeight.w400),
                                    )
                                  ],
                                ),
                              ),

                              Container(
                                height: 56.0,
                                width: 100.0,
                                child: Row(
                                  crossAxisAlignment: CrossAxisAlignment.center,
                                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                                  children: <Widget>[
                                    Icon(
                                      Icons.search,
                                      size: 32.0,
                                      color: Colors.black,
                                    ),
                                    Container(
                                      height: 56.0,
                                      width: 56.0,
                                      color: Colors.yellow,
                                      child: Icon(
                                        Icons.shopping_cart,
                                        size: 32.0,
                                        color: Colors.black,
                                      ),
                                    ),
                                  ],
                                ),
                              ),
                            ],
                          ),
                        )),
                  ),

                  // center 2 arrows
                  Positioned(
                    bottom: 0,
                    left: 16.0,
                    child: Container(
                      height: 120.0,
                      width: 120.0,
                      child: Stack(
                        children: <Widget>[
                          // left
                          Positioned(
                            top: 30.0,
                            left: 0,
                            child: Container(
                              height: 60.0,
                              width: 60.0,
                              child: Container(
                                decoration: BoxDecoration(border: Border.all(color: Colors.grey, width: 1.0)),
                                child: Center(
                                    child: Icon(
                                  Icons.arrow_back,
                                  size: 28.0,
                                  color: Colors.black,
                                )),
                              ),
                            ),
                          ),

                          // right
                          Positioned(
                            top: 30.0,
                            right: 0,
                            child: Container(
                              height: 60.0,
                              width: 60.0,
                              child: Container(
                                decoration: BoxDecoration(border: Border.all(color: Colors.grey, width: 1.0)),
                                child: Center(
                                    child: Icon(
                                  Icons.arrow_forward,
                                  size: 28.0,
                                  color: Colors.black,
                                )),
                              ),
                            ),
                          ),

                          // center icon
                          Positioned(
                            top: 0,
                            right: 60.0 - 1.0,
                            child: Container(
                              height: 120.0,
                              width: 2.0,
                              color: Colors.black,
                            ),
                          ),
                        ],
                      ),
                    ),
                  ),
                ],
              ),
            ),
          ),

          // bottom container
          Flexible(
            flex: 4,
            child: Padding(
              padding: const EdgeInsets.all(16.0),
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: <Widget>[
                  // title
                  Row(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: <Widget>[
                      Text(
                        "Watermelon\nBrightening Serum",
                        style: TextStyle(color: Colors.black, fontSize: 32.0, fontWeight: FontWeight.bold),
                      ),
                      // start & review score
                      Container(
                        height: 48.0,
                        width: 48.0,
                        child: Column(
                          crossAxisAlignment: CrossAxisAlignment.end,
                          mainAxisAlignment: MainAxisAlignment.center,
                          children: <Widget>[
                            Row(
                              crossAxisAlignment: CrossAxisAlignment.center,
                              mainAxisAlignment: MainAxisAlignment.spaceBetween,
                              children: <Widget>[
                                Icon(
                                  Icons.star,
                                  color: _color,
                                  size: 20.0,
                                ),
                                Text(
                                  "4.8",
                                  style: TextStyle(color: Colors.black, fontSize: 16.0, fontWeight: FontWeight.bold),
                                ),
                              ],
                            ),
                            Text(
                              "(2931)",
                              style: TextStyle(color: Colors.black, fontSize: 14.0, fontWeight: FontWeight.w400),
                            ),
                          ],
                        ),
                      ),
                    ],
                  ),
                  Text(
                    "Brightening, Hydrating Solid Serum.",
                    style: TextStyle(color: Colors.black, fontSize: 14.0, fontWeight: FontWeight.w600),
                  ),

                  // divider;
                  Divider(),

                  Row(
                    children: <Widget>[
                      // price
                      Column(
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: <Widget>[
                          Text(
                            "\$69.99",
                            style: TextStyle(color: Colors.black, fontSize: 24.0, fontWeight: FontWeight.bold),
                          ),
                          Text(
                            "\$149.99",
                            style: TextStyle(color: Colors.grey, fontSize: 16.0, fontWeight: FontWeight.bold, decoration: TextDecoration.lineThrough),
                          ),
                        ],
                      ),
                      Spacer(),

                      // 1 bottle box
                      Container(
                        padding: EdgeInsets.all(8.0),
                        height: 40.0,
                        width: 180.0,
                        decoration: BoxDecoration(border: Border.all(color: Colors.black, width: 1.0)),
                        child: DropdownButton(
                            icon: Icon(
                              Icons.keyboard_arrow_down,
                              color: Colors.black,
                            ),
                            iconSize: 16.0,
                            isExpanded: true,
                            style: TextStyle(color: Colors.black, fontSize: 16.0),
                            underline: Container(),
                            value: _value,
                            items: <String>["1 Bottle", "2 Bottles", "3 Bottles", "4 Bottles"].map<DropdownMenuItem<String>>((String value){
                              return DropdownMenuItem<String>(
                                value: value,
                                child: Text(value),
                              );
                        },).toList(),
                            onChanged: (String selectedValue) {
                              setState(() {
                                _value = selectedValue;
                              });
                            }),
                      ),
                      Spacer(),

                      // shopping cart,
                      Container(
                        height: 40.0,
                        width: 40.0,
                        color: Colors.yellow,
                        child: Icon(
                          Icons.shopping_cart,
                          size: 20.0,
                          color: Colors.black,
                        ),
                      ),

                      // favorite icons
                      Container(
                        height: 40.0,
                        width: 40.0,
                        color: Colors.black,
                        child: Icon(
                          Icons.favorite_border,
                          size: 20.0,
                          color: Colors.white,
                        ),
                      ),
                    ],
                  ),

                  Row(
                    crossAxisAlignment: CrossAxisAlignment.center,
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: <Widget>[
                      Flexible(
                        child: Container(
                          height: 80.0,
                          margin: EdgeInsets.only(right: 16.0),
                          decoration: BoxDecoration(border: Border.all(color: Colors.grey, width: 1.0)),
                          child: Center(
                            child: Column(
                              crossAxisAlignment: CrossAxisAlignment.center,
                              mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                              children: <Widget>[
                                Icon(FontAwesomeIcons.handshake, size: 40.0, color: Colors.black,),
                                Text("Guarantee".toUpperCase(), style: TextStyle(color: Colors.black, fontSize: 10.0, fontWeight: FontWeight.w600),),
                              ],
                            ),
                          ),
                        ),
                      ),

                      Flexible(
                        child: Container(
                          height: 80.0,
                          margin: EdgeInsets.only(right: 16.0),
                          decoration: BoxDecoration(border: Border.all(color: Colors.grey, width: 1.0)),
                          child: Column(
                            crossAxisAlignment: CrossAxisAlignment.center,
                            mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                            children: <Widget>[
                              Icon(FontAwesomeIcons.carrot, size: 40.0, color: Colors.black,),
                              Text("Cruelt free".toUpperCase(), style: TextStyle(color: Colors.black, fontSize: 10.0, fontWeight: FontWeight.w600),),
                            ],
                          ),
                        ),
                      ),

                      Flexible(
                        child: Container(
                          height: 80.0,
                          margin: EdgeInsets.only(right: 16.0),
                          decoration: BoxDecoration(border: Border.all(color: Colors.grey, width: 1.0)),
                          child: Column(
                            crossAxisAlignment: CrossAxisAlignment.center,
                            mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                            children: <Widget>[
                              Icon(FontAwesomeIcons.ambulance, size: 40.0, color: Colors.black,),
                              Text("Easy return".toUpperCase(), style: TextStyle(color: Colors.black, fontSize: 10.0, fontWeight: FontWeight.w600),),
                            ],
                          ),
                        ),
                      ),

                      Flexible(
                        child: Container(
                          height: 80.0,
                          decoration: BoxDecoration(border: Border.all(color: Colors.grey, width: 1.0)),
                          child: Column(
                            crossAxisAlignment: CrossAxisAlignment.center,
                            mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                            children: <Widget>[
                              Icon(FontAwesomeIcons.lockOpen, size: 40.0, color: Colors.black,),
                              Text("100% secure".toUpperCase(), style: TextStyle(color: Colors.black, fontSize: 10.0, fontWeight: FontWeight.w600),),
                            ],
                          ),
                        ),
                      ),
                    ],
                  ),
                ],
              ),
            ),
          ),
        ],
      ),
    );
  }
}