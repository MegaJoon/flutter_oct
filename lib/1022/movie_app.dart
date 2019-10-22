import 'package:flutter/material.dart';

// https://dribbble.com/shots/7734747-Movie-Explorer-Service-App-for-Watching-Movies-and-TV-Series/attachments/438184?mode=media

class MovieApp extends StatefulWidget {
  @override
  _MovieAppState createState() => _MovieAppState();
}

class _MovieAppState extends State<MovieApp> {
  // red color
  Color _color = Color.fromRGBO(215, 25, 32, 1);

  // asset.image
  String _jokerImage = "assets/joker.jpg";
  String _joker1Image = "assets/joker1.jpg";

  @override
  Widget build(BuildContext context) {
    final screenHeight = MediaQuery.of(context).size.height;

    return Scaffold(
      backgroundColor: Colors.black,
      body: Column(
        children: <Widget>[
          // appbar
          SafeArea(
            top: true,
            left: true,
            right: true,
            child: Container(
              margin: EdgeInsets.symmetric(horizontal: 24.0),
              height: 48.0,
              child: Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: <Widget>[
                  Icon(
                    Icons.menu,
                    size: 28.0,
                    color: Colors.white,
                  ),
                  Container(
                    alignment: Alignment.center,
                    height: 48.0,
                    width: 160.0,
                    child: Stack(
                      children: <Widget>[
                        Positioned(
                          top: 2.0,
                          left: 60.0,
                          bottom: 0,
                          child: Transform.rotate(
                            angle: 0.20,
                            child: ClipPath(
                              clipper: myClipper(),
                              child: Container(
                                height: 32.0,
                                width: 32.0,
                                color: _color,
                              ),
                            ),
                          ),
                        ),
                        Text(
                          "book my show",
                          style: TextStyle(color: Colors.white, fontSize: 24.0, fontWeight: FontWeight.w600),
                        ),
                      ],
                    ),
                  ),
                  Icon(
                    Icons.search,
                    size: 28.0,
                    color: Colors.white,
                  ),
                ],
              ),
            ),
          ),

          // main container
          Container(
            height: screenHeight - 72.0,
            child: Stack(
              children: <Widget>[
                // background image
                Positioned(
                  top: 16.0,
                  left: 0,
                  right: 0,
//                  bottom: screenHeight * 0.10,
                  bottom: 0,
                  child: Image.asset(
                    _jokerImage,
                    fit: BoxFit.fill,
                  ),
                ),

                Positioned(
                  bottom: 0,
                  left: 0,
                  right: 0,
                  child: Container(
                    margin: EdgeInsets.only(left: 16.0, right: 16.0),
                    height: screenHeight * 0.30,
                    child: Column(
                      children: <Widget>[
                        Row(
                          mainAxisAlignment: MainAxisAlignment.spaceBetween,
                          children: <Widget>[
                            // joker text
                            Column(
                              crossAxisAlignment: CrossAxisAlignment.start,
                              children: <Widget>[
                                Text(
                                  "Joker",
                                  style: TextStyle(color: Colors.white, fontSize: 40.0, fontWeight: FontWeight.bold),
                                ),
                                Text(
                                  "English | Crime, Fantasy & Thriller",
                                  style: TextStyle(color: Colors.grey, fontSize: 12.0, fontWeight: FontWeight.w400),
                                ),
                              ],
                            ),

                            // play button
                            Container(
                              margin: EdgeInsets.only(right: 16.0),
                              height: 48.0,
                              width: 48.0,
                              decoration: BoxDecoration(
                                shape: BoxShape.circle,
                                color: _color,
                              ),
                              child: Center(
                                  child: Icon(
                                Icons.play_arrow,
                                size: 24.0,
                                color: Colors.white,
                              )),
                            )
                          ],
                        ),
                        // listview
                        Container(
                          margin: EdgeInsets.only(top: 8.0),
                          height: 100.0,
                          child: ListView.builder(
                              shrinkWrap: true,
                              scrollDirection: Axis.horizontal,
                              padding: EdgeInsets.zero,
                              itemCount: itemlist.length,
                              physics: BouncingScrollPhysics(),
                              itemBuilder: (BuildContext context, int index) {
                                return Container(
                                  margin: EdgeInsets.only(right: 16.0),
                                  height: 100.0,
                                  width: 200.0,
                                  decoration: BoxDecoration(
                                      borderRadius: BorderRadius.circular(8.0),
                                      image: DecorationImage(image: AssetImage(itemlist[index].image), fit: BoxFit.fill)),
                                  child: Stack(
                                    children: <Widget>[
                                      Positioned(
                                        top: 8.0,
                                        right: 8.0,
                                        child: Container(
                                          height: 12.0,
                                          width: 40.0,
                                          decoration: ShapeDecoration(
                                            shape: StadiumBorder(),
                                            color: Colors.black,
                                          ),
                                          child: Center(
                                              child: Text(
                                            itemlist[index].time,
                                            style: TextStyle(color: Colors.white, fontSize: 8.0, fontWeight: FontWeight.w600),
                                          )),
                                        ),
                                      ),
                                      Positioned(
                                        left: 0,
                                        bottom: 4.0,
                                        child: Container(
                                          height: 20.0,
                                          width: 200.0,
                                          child: Row(
                                            crossAxisAlignment: CrossAxisAlignment.center,
                                            mainAxisAlignment: MainAxisAlignment.center,
                                            children: <Widget>[
                                              Flexible(
                                                flex: 8,
                                                child: Align(
                                                  alignment: Alignment.bottomCenter,
                                                  child: Text(
                                                    itemlist[index].title,
                                                    style:
                                                    TextStyle(color: Colors.white, fontSize: 14.0, fontWeight: FontWeight.bold),
                                                  ),
                                                ),
                                              ),
                                              Flexible(
                                                flex: 2,
                                                child: Container(
                                                  alignment: Alignment.topCenter,
                                                    child: Icon(
                                                  Icons.play_circle_filled,
                                                  size: 24.0,
                                                  color: Colors.grey,
                                                )),
                                              ),
                                            ],
                                          ),
                                        ),
                                      )
                                    ],
                                  ),
                                );
                              }),
                        ),

                        // dot indicator
                        Container(
                          margin: EdgeInsets.only(top: 8.0),
                          height: 16.0,
                          child: Placeholder(),
                        ),
                      ],
                    ),
                  ),
                ),
              ],
            ),
          ),
        ],
      ),
    );
  }
}

// class customclipper
class myClipper extends CustomClipper<Path> {
  @override
  Path getClip(Size size) {
    var path = Path();
    path.lineTo(0.0, 4.0);
    path.lineTo(size.width * 0.125, 0.0);
    path.lineTo(size.width * 0.250, 4.0);
    path.lineTo(size.width * 0.375, 0.0);
    path.lineTo(size.width * 0.500, 4.0);
    path.lineTo(size.width * 0.625, 0.0);
    path.lineTo(size.width * 0.750, 4.0);
    path.lineTo(size.width * 0.875, 0.0);
    path.lineTo(size.width, 4.0);
    path.lineTo(size.width, size.height);
    path.lineTo(0.0, size.height);
    path.close();
    return path;
  }

  @override
  bool shouldReclip(CustomClipper<Path> oldClipper) => false;
}

// class list
class Itemlist {
  String image;
  String time;
  String title;

  Itemlist({this.image, this.time, this.title});
}

List<Itemlist> itemlist = [
  Itemlist(
    image: "assets/jumanji.jpg",
    title: "Jumanji: The Next Level",
    time: "02:25",
  ),
  Itemlist(
    image: "assets/terminator.jpg",
    title: "Terminator: Dark Fate",
    time: "03:00",
  ),
  //
  Itemlist(
    image: "assets/jumanji.jpg",
    title: "Jumanji: The Next Level",
    time: "02:25",
  ),
  Itemlist(
    image: "assets/terminator.jpg",
    title: "Terminator: Dark Fate",
    time: "03:00",
  ),
];
