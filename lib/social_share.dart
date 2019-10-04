import 'package:flutter/material.dart';

// https://dribbble.com/shots/7309710-Daily-UI-010-Social-Share

class SocialShare extends StatefulWidget {
  @override
  _SocialShareState createState() => _SocialShareState();
}

class _SocialShareState extends State<SocialShare> {
  String _image =
      "https://cdn.pixabay.com/photo/2014/03/14/20/13/dog-287420_960_720.jpg";

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
                    child: Row(
                      children: <Widget>[
                        Icon(Icons.arrow_back_ios,
                            size: 20.0, color: Colors.white)
                      ],
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
                  onPressed: () {},
                  backgroundColor: Color.fromRGBO(75, 163, 17, 1),
                  mini: true,
                  child: Icon(Icons.save_alt, size: 24.0, color: Colors.white)),
            )
          ],
        ),
      ),
    );
  }
}
