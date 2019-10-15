import 'dart:ui';
import 'package:flutter/material.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';

// https://dribbble.com/shots/7309710-Daily-UI-010-Social-Share

class SocialShare extends StatefulWidget {
  @override
  _SocialShareState createState() => _SocialShareState();
}

class _SocialShareState extends State<SocialShare> {
  String _image =
      "https://cdn.pixabay.com/photo/2014/03/14/20/13/dog-287420_960_720.jpg";
  Color _color = Color.fromRGBO(75, 163, 17, 1);
  double secondpageHeight = 0.0;

  @override
  Widget build(BuildContext context) {
    final screenHeight = MediaQuery.of(context).size.height;
    return Scaffold(
      body: Container(
        child: Stack(
          children: <Widget>[
            Positioned(
                top: 0,
                left: 0,
                right: 0,
                child: Container(
                  height: screenHeight * 0.65,
                  decoration: BoxDecoration(
                      image: DecorationImage(
                          image: NetworkImage(_image), fit: BoxFit.fill)),
                )),
            Positioned(
              top: 0,
              left: 0,
              right: 0,
              child: SafeArea(
                  top: true,
                  left: true,
                  right: true,
                  child: Container(
                    height: 40,
                    color: Colors.grey[500],
                    child: Padding(
                      padding: const EdgeInsets.only(left: 14.0),
                      child: Row(
                        children: <Widget>[
                          Icon(Icons.arrow_back_ios,
                              size: 20.0, color: Colors.white)
                        ],
                      ),
                    ),
                  )),
            ),
            Positioned(
              bottom: 0,
              left: 0,
              right: 0,
              child: Container(
                margin: EdgeInsets.only(top: 24.0, left: 24.0, right: 24.0),
                height: screenHeight * 0.32,
                color: Colors.white,
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  mainAxisAlignment: MainAxisAlignment.start,
                  children: <Widget>[
                    Text("TOAD".toUpperCase(),
                        style: TextStyle(
                            color: Colors.black,
                            fontSize: 24.0,
                            fontWeight: FontWeight.bold)),
                    Text("Boston Terrier, 2 years",
                        style: TextStyle(
                            color: Colors.black,
                            fontSize: 20.0,
                            fontWeight: FontWeight.bold)),
                    SizedBox(height: 16),
                    Text(
                        "The Boston Terrier is a breed of dog originating in the United States of America. This American Gentleman was accepted in 1893 by the American Kennel Club as a non-sporting breed. Color and markings are important when distinguishing this breed to the AKC standard.",
                        style: TextStyle(color: Colors.black, fontSize: 16.0),
                        maxLines: 7,
                        overflow: TextOverflow.ellipsis),
                  ],
                ),
              ),
            ),
            Positioned(
                top: screenHeight * 0.60 + 10,
                right: 32,
                child: FloatingActionButton(
                    onPressed: () {
                      setState(() {
                        secondpageHeight = screenHeight;
                      });
                    },
                    backgroundColor: _color,
                    mini: true,
                    child:
                        Icon(Icons.save_alt, size: 24.0, color: Colors.white))),
            Positioned(
                top: 0,
                left: 0,
                right: 0,
                // TODO
                child: AnimatedContainer(
                  duration: new Duration(milliseconds: 500),
                  height: secondpageHeight,
                  curve: Curves.fastOutSlowIn,
                  color: _color.withOpacity(0.5),
                  child: Column(
                    children: <Widget>[
                      SafeArea(
                        top: true,
                        left: true,
                        right: true,
                        child: Container(
                          height: 40,
                          child: Row(
                            children: <Widget>[
                              IconButton(
                                  icon: Icon(Icons.arrow_back_ios),
                                  iconSize: 20.0,
                                  onPressed: () {
                                    setState(() {
                                      secondpageHeight = 0.0;
                                    });
                                  })
                            ],
                          ),
                        ),
                      ),
                      Container(
                        margin:
                            EdgeInsets.only(left: 48.0, right: 48.0, top: 24.0),
                        height: 52,
                        decoration: BoxDecoration(
                            borderRadius: BorderRadius.circular(24.0),
                            color: Colors.white),
                        child: Row(
                          mainAxisAlignment: MainAxisAlignment.start,
                          children: <Widget>[
                            Expanded(
                                flex: 3,
                                child: Icon(
                                  FontAwesomeIcons.facebookF,
                                  color: _color,
                                  size: 32.0,
                                )),
                            Expanded(
                                flex: 8,
                                child: Text("Share on Facebook",
                                    style: TextStyle(
                                        color: _color,
                                        fontSize: 20.0,
                                        fontWeight: FontWeight.bold))),
                          ],
                        ),
                      ),
                      Container(
                        margin:
                            EdgeInsets.only(left: 48.0, right: 48.0, top: 16.0),
                        height: 52,
                        decoration: BoxDecoration(
                            borderRadius: BorderRadius.circular(24.0),
                            color: Colors.white),
                        child: Row(
                          mainAxisAlignment: MainAxisAlignment.start,
                          children: <Widget>[
                            Expanded(
                                flex: 3,
                                child: Icon(
                                  FontAwesomeIcons.twitter,
                                  color: _color,
                                  size: 32.0,
                                )),
                            Expanded(
                                flex: 8,
                                child: Text("Share on Twitter",
                                    style: TextStyle(
                                        color: _color,
                                        fontSize: 20.0,
                                        fontWeight: FontWeight.bold))),
                          ],
                        ),
                      ),
                      Container(
                        margin:
                            EdgeInsets.only(left: 48.0, right: 48.0, top: 16.0),
                        height: 52,
                        decoration: BoxDecoration(
                            borderRadius: BorderRadius.circular(24.0),
                            color: Colors.white),
                        child: Row(
                          mainAxisAlignment: MainAxisAlignment.start,
                          children: <Widget>[
                            Expanded(
                                flex: 3,
                                child: Icon(
                                  FontAwesomeIcons.mailBulk,
                                  color: _color,
                                  size: 32.0,
                                )),
                            Expanded(
                                flex: 8,
                                child: Text("Send on Email",
                                    style: TextStyle(
                                        color: _color,
                                        fontSize: 20.0,
                                        fontWeight: FontWeight.bold))),
                          ],
                        ),
                      ),
                      Container(
                        margin:
                            EdgeInsets.only(left: 48.0, right: 48.0, top: 16.0),
                        height: 52,
                        decoration: BoxDecoration(
                            borderRadius: BorderRadius.circular(24.0),
                            color: Colors.white),
                        child: Row(
                          mainAxisAlignment: MainAxisAlignment.start,
                          children: <Widget>[
                            Expanded(
                                flex: 3,
                                child: Icon(
                                  FontAwesomeIcons.link,
                                  color: _color,
                                  size: 32.0,
                                )),
                            Expanded(
                                flex: 8,
                                child: Text("Copy Link",
                                    style: TextStyle(
                                        color: _color,
                                        fontSize: 20.0,
                                        fontWeight: FontWeight.bold))),
                          ],
                        ),
                      ),
                    ],
                  ),
                ))
          ],
        ),
      ),
    );
  }
}
