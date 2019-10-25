import 'package:flutter/material.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';

// https://dribbble.com/shots/7798848-Inspiration-App-Product-design

class ProductDesign extends StatefulWidget {
  @override
  _ProductDesignState createState() => _ProductDesignState();
}

class _ProductDesignState extends State<ProductDesign> {
  // like indigo
  Color _color = Color.fromRGBO(86, 92, 138, 1);

  // like pink
  Color _color2 = Color.fromRGBO(254, 182, 195, 1);

  // like orange
  Color _color3 = Color.fromRGBO(255, 217, 171, 1);

  String _image =
      "https://cdn.pixabay.com/photo/2014/08/26/20/08/baby-428395_960_720.jpg";

  String _themeImage =
      "https://cdn.pixabay.com/photo/2019/10/23/19/50/acorns-4572674__340.jpg";
  String _themeImage2 =
      "https://cdn.pixabay.com/photo/2019/10/08/18/13/matterhorn-4535693__340.jpg";

  @override
  Widget build(BuildContext context) {
    final screenHeight = MediaQuery.of(context).size.height;

    return Scaffold(
        backgroundColor: Colors.white,
        body: Stack(
          children: <Widget>[
            // indigo color container
            Positioned(
              top: screenHeight * 0.20,
              left: 0,
              right: 0,
              bottom: screenHeight * 0.45,
              child: ClipPath(
                clipper: myClipper(),
                child: Container(
                  padding:
                      EdgeInsets.only(left: 24.0, right: 80.0, bottom: 48.0),
                  color: _color,
                  child: Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    crossAxisAlignment: CrossAxisAlignment.end,
                    children: <Widget>[
                      Row(
                        children: <Widget>[
                          Text(
                            "Description",
                            style: TextStyle(
                                color: Colors.white,
                                fontSize: 14.0,
                                fontWeight: FontWeight.w400),
                          ),
                          Container(
                            margin: EdgeInsets.only(left: 4.0, top: 2.0),
                            height: 4.0,
                            width: 4.0,
                            decoration: BoxDecoration(
                                shape: BoxShape.circle, color: Colors.white),
                          ),
                        ],
                      ),
                      Text(
                        "Testimonials",
                        style: TextStyle(
                            color: Colors.grey,
                            fontSize: 14.0,
                            fontWeight: FontWeight.w400),
                      ),
                      Text(
                        "Privacy",
                        style: TextStyle(
                            color: Colors.grey,
                            fontSize: 14.0,
                            fontWeight: FontWeight.w400),
                      ),
                    ],
                  ),
                ),
              ),
            ),

            // image
            Positioned(
              top: 0,
              left: 0,
              right: 56.0,
              bottom: screenHeight * 0.55,
              child: ClipPath(
                clipper: myClipper(),
                child: Container(
                  decoration: BoxDecoration(
                    borderRadius:
                        BorderRadius.only(topRight: Radius.circular(24.0)),
                    image: DecorationImage(
                        image: NetworkImage(_image), fit: BoxFit.fill),
                  ),
//                color: Colors.black,
                ),
              ),
            ),

            // pink icon
            Positioned(
              top: 100.0,
              right: 0,
              child: Container(
                height: 64.0,
                width: 56.0,
                decoration: BoxDecoration(
                  borderRadius: BorderRadius.only(
                    topRight: Radius.circular(24.0),
                    bottomLeft: Radius.circular(24.0),
                  ),
                  color: _color2,
                ),
                child: Center(
                  child: Icon(
                    Icons.favorite_border,
                    size: 24.0,
                    color: Colors.white,
                  ),
                ),
              ),
            ),

            // appbar
            Positioned(
              top: 0,
              left: 0,
              right: 0,
              child: SafeArea(
                top: true,
                left: true,
                right: true,
                child: Container(
                  margin: EdgeInsets.symmetric(horizontal: 16.0),
                  height: 32.0,
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
                        color: Colors.black,
                      ),
                    ],
                  ),
                ),
              ),
            ),

            // right icon
            Positioned(
              top: 170.0,
              right: 0,
              child: Container(
                height: 120.0,
                width: 56.0,
                child: Column(
                  children: <Widget>[
                    Spacer(),
                    Icon(
                      FontAwesomeIcons.eye,
                      size: 16.0,
                      color: Colors.white,
                    ),
                    SizedBox(
                      height: 4.0,
                    ),
                    Text(
                      "141k",
                      style: TextStyle(
                          color: Colors.white,
                          fontSize: 10.0,
                          fontWeight: FontWeight.w400),
                    ),
                    Spacer(),
                    Icon(
                      FontAwesomeIcons.download,
                      size: 16.0,
                      color: Colors.white,
                    ),
                    SizedBox(
                      height: 4.0,
                    ),
                    Text(
                      "65k",
                      style: TextStyle(
                          color: Colors.white,
                          fontSize: 10.0,
                          fontWeight: FontWeight.w400),
                    ),
                    Spacer(),
                  ],
                ),
              ),
            ),

            // bottom white container
            Positioned(
              top: screenHeight * 0.55,
              bottom: 0,
              left: 16.0,
              right: 0,
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: <Widget>[
                  // title
                  Text(
                    "Suzanne Saroff",
                    style: TextStyle(
                        color: Colors.black,
                        fontSize: 28.0,
                        fontWeight: FontWeight.bold),
                  ),
                  Text(
                    "I was born and raised in Missoula, Motana.\nI seek to find new ways of interpreting our reality.",
                    style: TextStyle(
                        height: 1.5,
                        color: Colors.black,
                        fontSize: 16.0,
                        fontWeight: FontWeight.w400),
                  ),
                  SizedBox(
                    height: 24.0,
                  ),
                  // similar
                  Text(
                    "Similar Theme",
                    style: TextStyle(
                        color: Colors.black,
                        fontSize: 24.0,
                        fontWeight: FontWeight.bold),
                  ),
                  Container(
                    margin: EdgeInsets.only(top: 16.0),
                    height: 56.0,
                    child: ListView(
                      shrinkWrap: true,
                      scrollDirection: Axis.horizontal,
                      children: <Widget>[
                        Container(
                          margin: EdgeInsets.only(
                              right: 24.0, top: 2.0, bottom: 2.0),
                          padding: EdgeInsets.only(right: 24.0),
                          width: 250.0,
                          decoration: BoxDecoration(
                              color: Colors.white,
                              borderRadius: BorderRadius.circular(16.0),
                              boxShadow: [
                                BoxShadow(
                                    color: Colors.black12.withOpacity(0.1),
                                    spreadRadius: 1,
                                    blurRadius: 1)
                              ]),
                          child: Row(
                            mainAxisAlignment: MainAxisAlignment.spaceBetween,
                            children: <Widget>[
                              Container(
                                width: 60.0,
                                decoration: BoxDecoration(
                                  borderRadius: BorderRadius.circular(16.0),
                                  image: DecorationImage(
                                      image: NetworkImage(_themeImage),
                                      fit: BoxFit.fill),
                                ),
                              ),
                              Text(
                                "The Nue Corel",
                                style: TextStyle(
                                    color: Colors.black,
                                    fontSize: 16.0,
                                    fontWeight: FontWeight.w400),
                              ),
                              Text(
                                ":",
                                style: TextStyle(
                                    color: Colors.black,
                                    fontSize: 28.0,
                                    fontWeight: FontWeight.w400),
                              ),
                            ],
                          ),
                        ),
                        Container(
                          margin: EdgeInsets.only(
                              right: 24.0, top: 2.0, bottom: 2.0),
                          padding: EdgeInsets.only(right: 24.0),
                          width: 250.0,
                          decoration: BoxDecoration(
                              color: Colors.white,
                              borderRadius: BorderRadius.circular(16.0),
                              boxShadow: [
                                BoxShadow(
                                    color: Colors.black12.withOpacity(0.1),
                                    spreadRadius: 1,
                                    blurRadius: 1)
                              ]),
                          child: Row(
                            mainAxisAlignment: MainAxisAlignment.spaceBetween,
                            children: <Widget>[
                              Container(
                                width: 60.0,
                                decoration: BoxDecoration(
                                  borderRadius: BorderRadius.circular(16.0),
                                  image: DecorationImage(
                                      image: NetworkImage(_themeImage2),
                                      fit: BoxFit.fill),
                                ),
                              ),
                              Text(
                                "The Nue Corel",
                                style: TextStyle(
                                    color: Colors.black,
                                    fontSize: 16.0,
                                    fontWeight: FontWeight.w400),
                              ),
                              Text(
                                ":",
                                style: TextStyle(
                                    color: Colors.black,
                                    fontSize: 28.0,
                                    fontWeight: FontWeight.w400),
                              ),
                            ],
                          ),
                        ),
                      ],
                    ),
                  ),

                  // download catalog
                  Container(
                    margin: EdgeInsets.only(top: 16.0, right: 16.0),
                    height: 56.0,
                    decoration: BoxDecoration(
                        borderRadius: BorderRadius.circular(16.0),
                        color: _color3),
                    child: Center(
                        child: Text(
                      "Download Catalog",
                      style: TextStyle(
                          color: Colors.black,
                          fontSize: 16.0,
                          fontWeight: FontWeight.w600),
                    )),
                  ),
                ],
              ),
            )
          ],
        ));
  }
}

class myClipper extends CustomClipper<Path> {
  @override
  Path getClip(Size size) {
    var path = new Path();
    path.lineTo(0.0, 0.0);
    path.lineTo(0.0, size.height);
    path.quadraticBezierTo(6.0, size.height - 18.0, 24.0, size.height - 24.0);
    path.lineTo(size.width - 24.0, size.height - 24.0);
    path.quadraticBezierTo(
        size.width - 6.0, size.height - 30.0, size.width, size.height - 48.0);
    path.lineTo(size.width, 0.0);
    path.close();
    return path;
  }

  @override
  bool shouldReclip(CustomClipper<Path> oldClipper) => false;
}
