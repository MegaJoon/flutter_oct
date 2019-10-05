import 'package:flutter/material.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';

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
  String _profileImage2 =
      "https://cdn.pixabay.com/photo/2019/10/01/14/28/nova-scotia-duck-tolling-retriever-4518442__340.jpg";
  String _profileImage3 =
      "https://cdn.pixabay.com/photo/2019/09/26/02/21/monarch-4504909__340.jpg";
  String _profileImage4 =
      "https://cdn.pixabay.com/photo/2019/10/03/17/56/dahlia-4524017__340.jpg";
  String _profileImage5 =
      "https://cdn.pixabay.com/photo/2019/09/28/03/54/sunflower-4509760__340.jpg";
  String _profileImage6 =
      "https://cdn.pixabay.com/photo/2019/10/02/13/16/blue-throated-bee-eater-4520945__340.jpg";

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
              left: true,
              right: true,
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
                                      image: NetworkImage(_profileImage2),
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
                                      image: NetworkImage(_profileImage3),
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
                                      image: NetworkImage(_profileImage4),
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
                                      image: NetworkImage(_profileImage),
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
                                      image: NetworkImage(_profileImage5),
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
                                      image: NetworkImage(_profileImage5),
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
              color: Colors.amber,
              child: ListView.builder(
                  itemBuilder: (BuildContext context, int index) {
                return Container(
                    height: 300, width: double.maxFinite, child: Placeholder());
              }),
            )
          ],
        ),
      ),
    );
  }
}
