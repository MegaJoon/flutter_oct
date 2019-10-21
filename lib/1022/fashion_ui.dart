import 'package:flutter/material.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';

// https://dribbble.com/shots/7689134-Fashion-UI/attachments/426222?mode=media

class FashionUI extends StatefulWidget {
  @override
  _FashionUIState createState() => _FashionUIState();
}

class _FashionUIState extends State<FashionUI> {
  String _image = "assets/ansley_gulielmi.jpg";
  String _image2 = "assets/ansley_gulielmi2.jpg";

  ScrollController _scrollController;

  bool endScroll = false;

  @override
  void initState() {
    // TODO: implement initState
    super.initState();
    _scrollController = ScrollController();
    _scrollController.addListener(_scrollListener);
  }

  _scrollListener() {
    if (_scrollController.offset >= _scrollController.position.maxScrollExtent && !_scrollController.position.outOfRange) {
      setState(() {
        print("end scroll");
        endScroll = true;
        _buildBottomContainer();
      });
    } else {
      setState(() {
//        print("not end");
      endScroll = false;
      _buildBottomContainer();
      });
    }
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: <Widget>[
          SafeArea(
            top: true,
            left: true,
            right: true,
            child: Container(
              margin: EdgeInsets.only(left: 24.0, right: 24.0, bottom: 16.0),
              height: 32.0,
              child: Row(
                children: <Widget>[
                  Icon(
                    FontAwesomeIcons.thLarge,
                    size: 24.0,
                    color: Colors.black,
                  ),
                  Spacer(),
                  Icon(
                    FontAwesomeIcons.search,
                    size: 24.0,
                    color: Colors.black,
                  ),
                ],
              ),
            ),
          ),

          Padding(
            padding: const EdgeInsets.only(left: 24.0, right: 24.0, bottom: 16.0),
            child: Text(
              "Fashion",
              style: TextStyle(
                color: Colors.black,
                fontSize: 28.0,
                fontWeight: FontWeight.w600,
              ),
            ),
          ),

          // listview
          Container(
            margin: EdgeInsets.only(left: 24.0),
            height: 400.0,
            child: ListView(
              controller: _scrollController,
              padding: EdgeInsets.zero,
              shrinkWrap: true,
              scrollDirection: Axis.horizontal,
              children: <Widget>[
                // list 1
                Container(
                  margin: EdgeInsets.only(right: 24.0),
                  width: 280.0,
                  child: Column(
                    children: <Widget>[
                      Flexible(
                        flex: 7,
                        child: Stack(
                          children: <Widget>[
                            // image
                            Container(
                              decoration: BoxDecoration(image: DecorationImage(image: AssetImage(_image), fit: BoxFit.fill)),
                            ),
                            // top 50 orange circle container
                            Positioned(
                              right: 16.0,
                              bottom: 16.0,
                              child: Container(
                                height: 64.0,
                                width: 64.0,
                                decoration: BoxDecoration(shape: BoxShape.circle, color: Colors.deepOrange),
                                child: Center(
                                  child: Column(
                                    mainAxisAlignment: MainAxisAlignment.center,
                                    crossAxisAlignment: CrossAxisAlignment.center,
                                    children: <Widget>[
                                      Text(
                                        "Top",
                                        style: TextStyle(color: Colors.white, fontSize: 16.0, fontWeight: FontWeight.w300),
                                      ),
                                      Text(
                                        "50",
                                        style: TextStyle(color: Colors.white, fontSize: 16.0, fontWeight: FontWeight.w300),
                                      ),
                                    ],
                                  ),
                                ),
                              ),
                            )
                          ],
                        ),
                      ),
                      Flexible(
                        flex: 3,
                        child: Column(
                          crossAxisAlignment: CrossAxisAlignment.start,
                          mainAxisAlignment: MainAxisAlignment.center,
                          children: <Widget>[
                            Text(
                              "Ansley Gulielmi",
                              style: TextStyle(color: Colors.black, fontSize: 36.0, fontWeight: FontWeight.w400),
                            ),
                            SizedBox(
                              height: 8.0,
                            ),
                            Text(
                              "By: Edgar Berg",
                              style: TextStyle(color: Colors.black87, fontSize: 16.0, fontWeight: FontWeight.w400),
                            ),
                          ],
                        ),
                      ),
                    ],
                  ),
                ),

                // list 2
                Container(
                  margin: EdgeInsets.only(right: 24.0),
                  width: 230.0,
                  child: Image.asset(
                    _image2,
                    fit: BoxFit.fill,
                  ),
                ),

                // list 3
                Container(
                  margin: EdgeInsets.only(right: 16.0),
                  width: 80.0,
                  child: Stack(
                    children: <Widget>[
                      Container(
                        height: 64.0,
                        width: 64.0,
                        decoration: BoxDecoration(
                            shape: BoxShape.circle, color: Colors.white, border: Border.all(color: Colors.black45, width: 1.0)),
                        child: Center(
                          child: Column(
                            mainAxisAlignment: MainAxisAlignment.center,
                            crossAxisAlignment: CrossAxisAlignment.center,
                            children: <Widget>[
                              Text(
                                "Top",
                                style: TextStyle(color: Colors.black, fontSize: 16.0, fontWeight: FontWeight.w300),
                              ),
                              Text(
                                "50",
                                style: TextStyle(color: Colors.black, fontSize: 16.0, fontWeight: FontWeight.w300),
                              ),
                            ],
                          ),
                        ),
                      ),

                      // rotate text
                      Positioned(
                        right: -100,
                        bottom: 120,
                        child: Transform.rotate(
                          angle: -1.56,
                          child: Container(
                            height: 64.0,
                            width: 300.0,
//                            color: Colors.teal,
                            child: Center(
                                child: Text(
                              "Ansley Gulielmi",
                              style: TextStyle(color: Colors.black, fontSize: 40.0, fontWeight: FontWeight.w400),
                            )),
                          ),
                        ),
                      )
                    ],
                  ),
                )
              ],
            ),
          ),


        _buildBottomContainer(),

        // bottom container 2;

        ],
      ),
    );
  }

  _buildBottomContainer(){
    if(endScroll){
      // ok end scroll
      return Column(
        children: <Widget>[
          // ford models paris ->
          Container(
            padding: EdgeInsets.symmetric(horizontal: 24.0),
            height: 81.0,
            color: Colors.white,
            alignment: Alignment.centerLeft,
            child: Text(
              "By: Edgar Berg",
              style: TextStyle(color: Colors.black, fontSize: 16.0, fontWeight: FontWeight.w300),
            ),
          ),

          // height, bust
          Container(
            padding: EdgeInsets.symmetric(horizontal: 24.0),
            height: 81.0,
            color: Colors.grey[300],
            child: Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: <Widget>[
                Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: <Widget>[
                    Text(
                      "Height",
                      style: TextStyle(color: Colors.black, fontSize: 14.0, fontWeight: FontWeight.w400),
                    ),
                    Text(
                      "175 cm",
                      style: TextStyle(color: Colors.black, fontSize: 18.0, fontWeight: FontWeight.w400),
                    ),
                  ],
                ),
                Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: <Widget>[
                    Text(
                      "Bust",
                      style: TextStyle(color: Colors.black, fontSize: 14.0, fontWeight: FontWeight.w400),
                    ),
                    Text(
                      "81 cm",
                      style: TextStyle(color: Colors.black, fontSize: 18.0, fontWeight: FontWeight.w400),
                    ),
                  ],
                ),
                Container(
                  width: 150.0,
                  child: Row(
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: <Widget>[
                      Icon(
                        FontAwesomeIcons.instagram,
                        size: 22.0,
                        color: Colors.black,
                      ),
                      SizedBox(
                        width: 8.0,
                      ),
                      Text(
                        "6,473",
                        style: TextStyle(color: Colors.black, fontSize: 18.0, fontWeight: FontWeight.w400),
                      ),
                    ],
                  ),
                ),
              ],
            ),
          ),
        ],
      );
    } else {
      // not end
      return Column(
        children: <Widget>[
          // height, bust
          Container(
            padding: EdgeInsets.symmetric(horizontal: 24.0),
            height: 81.0,
            child: Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: <Widget>[
                Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: <Widget>[
                    Text(
                      "Height",
                      style: TextStyle(color: Colors.black, fontSize: 14.0, fontWeight: FontWeight.w400),
                    ),
                    Text(
                      "175 cm",
                      style: TextStyle(color: Colors.black, fontSize: 18.0, fontWeight: FontWeight.w400),
                    ),
                  ],
                ),
                Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: <Widget>[
                    Text(
                      "Bust",
                      style: TextStyle(color: Colors.black, fontSize: 14.0, fontWeight: FontWeight.w400),
                    ),
                    Text(
                      "81 cm",
                      style: TextStyle(color: Colors.black, fontSize: 18.0, fontWeight: FontWeight.w400),
                    ),
                  ],
                ),
                Container(
                  width: 150.0,
                  child: Row(
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: <Widget>[
                      Icon(
                        FontAwesomeIcons.instagram,
                        size: 22.0,
                        color: Colors.black,
                      ),
                      SizedBox(
                        width: 8.0,
                      ),
                      Text(
                        "6,473",
                        style: TextStyle(color: Colors.black, fontSize: 18.0, fontWeight: FontWeight.w400),
                      ),
                    ],
                  ),
                ),
              ],
            ),
          ),

          // ford models paris ->
          Container(
            padding: EdgeInsets.symmetric(horizontal: 24.0),
            height: 81.0,
            color: Colors.black,
            child: Row(
              children: <Widget>[
                Text(
                  "Ford Models Paris",
                  style: TextStyle(color: Colors.white, fontSize: 20.0, fontWeight: FontWeight.w300),
                ),
                Spacer(),
                Icon(
                  Icons.arrow_forward,
                  size: 20.0,
                  color: Colors.white,
                ),
              ],
            ),
          ),
        ],
      );
    }
  }
}
