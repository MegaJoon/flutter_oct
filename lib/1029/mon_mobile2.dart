import 'package:flutter/material.dart';

class MonMobile2 extends StatefulWidget {
  @override
  _MonMobile2State createState() => _MonMobile2State();
}

class _MonMobile2State extends State<MonMobile2> {
  // background image; (serum)
  String _image = "assets/serum.jpg";

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
                                  child: Icon(Icons.menu, size: 32.0, color: Colors.black,)),

                              Container(
                                margin: EdgeInsets.only(right: 16.0),
                                height: 80.0,
                                width: 80.0,
                                color: Colors.grey[800],
                                child: Column(
                                  crossAxisAlignment: CrossAxisAlignment.center,
                                  mainAxisAlignment: MainAxisAlignment.center,
                                  children: <Widget>[
                                    Text("MoN", style: TextStyle(color: Colors.white, fontSize: 24.0, fontWeight: FontWeight.bold, fontFamily: "ITCAvantGardeStd",),),
                                    Text("makeup", style: TextStyle(color: Colors.white70, fontSize: 14.0, fontWeight: FontWeight.w400),)
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
                                    Icon(Icons.search, size: 32.0, color: Colors.black,),
                                    Container(
                                      height: 56.0,
                                      width: 56.0,
                                      color: Colors.yellow,
                                      child: Icon(Icons.shopping_cart, size: 32.0, color: Colors.black,),
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
                                decoration: BoxDecoration(
                                    border: Border.all(color: Colors.grey, width: 1.0)),
                                child: Center(
                                    child: Icon(
                                      Icons.arrow_back, size: 28.0, color: Colors.black,)),
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
                                decoration: BoxDecoration(
                                    border: Border.all(color: Colors.grey, width: 1.0)),
                                child: Center(
                                    child: Icon(
                                      Icons.arrow_forward, size: 28.0, color: Colors.black,)),
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
            child: Placeholder(),
          ),
        ],
      ),
    );
  }
}
