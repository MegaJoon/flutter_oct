import 'package:flutter/material.dart';
import 'package:flutter_oct/1018/page_list.dart';

class SecondMoviePage extends StatefulWidget {
  final int index;

  SecondMoviePage(this.index);

  @override
  _SecondMoviePageState createState() => _SecondMoviePageState();
}

//tag: "item $index",

class _SecondMoviePageState extends State<SecondMoviePage> {
  Color _color = Color.fromRGBO(48, 79, 253, 1);

  String _image = "https://cdn.pixabay.com/photo/2015/06/22/08/40/child-817373__340.jpg";
  String _image1 = "https://cdn.pixabay.com/photo/2015/06/22/08/38/siblings-817369__340.jpg";
  String _image2 = "https://cdn.pixabay.com/photo/2012/03/04/01/01/baby-22194__340.jpg";

  @override
  Widget build(BuildContext context) {
    final screenHeight = MediaQuery.of(context).size.height;

    return Scaffold(
      body: Stack(
        children: <Widget>[
          // top image;
          Positioned(
            top: 0,
            left: 0,
            right: 0,
            bottom: screenHeight * 0.55,
            child: Hero(
              tag: "item ${widget.index}",
              child: Container(
                decoration:
                    BoxDecoration(image: DecorationImage(image: NetworkImage(pageList[widget.index].image), fit: BoxFit.fill)),
              ),
            ),
          ),
          // appbar
          Positioned(
            top: 0,
            left: 24.0,
            right: 24.0,
            child: SafeArea(
              top: true,
              left: true,
              right: true,
              child: Container(
                height: 40.0,
                child: Row(
                  children: <Widget>[
                    IconButton(
                      icon: Icon(
                        Icons.arrow_back,
                        size: 28.0,
                        color: Colors.black,
                      ),
                      onPressed: () {
                        setState(() {
                          Navigator.pop(context);
                        });
                      },
                    ),
                    Spacer(),
                    IconButton(
                      icon: Icon(
                        Icons.more_horiz,
                        size: 28.0,
                        color: Colors.black,
                      ),
                      onPressed: () {},
                    ),
                  ],
                ),
              ),
            ),
          ),

          // bottom container;
          Positioned(
            top: screenHeight * 0.35,
            left: 0,
            right: 0,
            bottom: 0,
            child: Container(
              decoration: BoxDecoration(
                borderRadius: BorderRadius.only(topLeft: Radius.circular(48.0), topRight: Radius.circular(48.0)),
                color: Colors.black,
              ),
              child: Padding(
                padding: const EdgeInsets.only(left: 24.0),
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: <Widget>[
                    Container(
                      height: 100.0,
                      child: Row(
                        children: <Widget>[
                          Flexible(
                            flex: 7,
                            child: Padding(
                              padding: const EdgeInsets.only(top: 24.0, right: 120.0),
                              child: Column(
                                crossAxisAlignment: CrossAxisAlignment.start,
                                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                                children: <Widget>[
                                  Text(
                                    pageList[widget.index].title,
                                    style: TextStyle(color: Colors.white, fontSize: 20.0, fontWeight: FontWeight.bold),
                                  ),
                                  Row(
                                    children: <Widget>[
                                      Text(
                                        pageList[widget.index].genre,
                                        style: TextStyle(color: Colors.grey[500], fontSize: 14.0, fontWeight: FontWeight.w300),
                                      ),
                                      Spacer(),
                                      Text(
                                        pageList[widget.index].time,
                                        style: TextStyle(color: Colors.grey[500], fontSize: 14.0, fontWeight: FontWeight.w300),
                                      ),
                                    ],
                                  ),
                                  Row(
                                    children: <Widget>[
                                      Icon(
                                        Icons.star,
                                        size: 16.0,
                                        color: Colors.amber,
                                      ),
                                      Icon(
                                        Icons.star,
                                        size: 16.0,
                                        color: Colors.amber,
                                      ),
                                      Icon(
                                        Icons.star,
                                        size: 16.0,
                                        color: Colors.amber,
                                      ),
                                      Icon(
                                        Icons.star,
                                        size: 16.0,
                                        color: Colors.amber,
                                      ),
                                      Icon(
                                        Icons.star_border,
                                        size: 16.0,
                                        color: Colors.amber,
                                      ),
                                      SizedBox(
                                        width: 8.0,
                                      ),
                                      Text(
                                        "8.9",
                                        style: TextStyle(color: Colors.amber, fontSize: 20.0, fontWeight: FontWeight.bold),
                                      ),
                                    ],
                                  )
                                ],
                              ),
                            ),
                          ),
                          Flexible(
                            flex: 2,
                            child: Container(
                              decoration: BoxDecoration(
                                  borderRadius:
                                      BorderRadius.only(topRight: Radius.circular(48.0), bottomLeft: Radius.circular(48.0)),
                                  color: _color),
                              child: Center(
                                child: Column(
                                  crossAxisAlignment: CrossAxisAlignment.start,
                                  mainAxisAlignment: MainAxisAlignment.center,
                                  children: <Widget>[
                                    Text(
                                      "Choose",
                                      style: TextStyle(color: Colors.white, fontSize: 14.0, fontWeight: FontWeight.w600),
                                    ),
                                    Text(
                                      "Date",
                                      style: TextStyle(color: Colors.white, fontSize: 14.0, fontWeight: FontWeight.w600),
                                    ),
                                    Icon(
                                      Icons.arrow_forward,
                                      size: 14.0,
                                      color: Colors.white,
                                    ),
                                  ],
                                ),
                              ),
                            ),
                          ),
                        ],
                      ),
                    ),
                    SizedBox(
                      height: 8.0,
                    ),
                    Text(
                      "Description",
                      style: TextStyle(color: Colors.white, fontSize: 16.0, fontWeight: FontWeight.w600),
                    ),
                    SizedBox(
                      height: 8.0,
                    ),
                    Text(
                      "Amanipulative woman and a roguish man conduct",
                      style: TextStyle(color: Colors.grey[500], fontSize: 14.0, fontWeight: FontWeight.w300, height: 1.2),
                    ),
                    Text(
                      "a turbulent romance during the American Civil War",
                      style: TextStyle(color: Colors.grey[500], fontSize: 14.0, fontWeight: FontWeight.w300, height: 1.2),
                    ),
                    SizedBox(height: 4.0),
                    Padding(
                      padding: const EdgeInsets.only(right: 80.0),
                      child: Row(
                        children: <Widget>[
                          Text(
                            "and Reconstruction...",
                            style: TextStyle(color: Colors.grey[500], fontSize: 14.0, fontWeight: FontWeight.w300),
                          ),
                          Spacer(),
                          Text(
                            "Read More",
                            style: TextStyle(color: Colors.amber, fontSize: 16.0, fontWeight: FontWeight.w600),
                          ),
                        ],
                      ),
                    ),
                    SizedBox(height: 8.0),
                    Text(
                      "Star",
                      style: TextStyle(color: Colors.white, fontSize: 16.0, fontWeight: FontWeight.w600),
                    ),
                    Container(
                      height: 150.0,
                      child: ListView(
                        shrinkWrap: true,
                        scrollDirection: Axis.horizontal,
                        padding: EdgeInsets.only(top: 8.0),
                        children: <Widget>[
                          Container(
                            margin: EdgeInsets.only(right: 16.0),
                            child: Column(
                              children: <Widget>[
                                Flexible(
                                  flex: 9,
                                  child: Container(
                                    width: 120.0,
                                    decoration: BoxDecoration(
                                        borderRadius: BorderRadius.circular(8.0),
                                        image: DecorationImage(image: NetworkImage(_image), fit: BoxFit.fill)),
                                  ),
                                ),
                                Flexible(
                                  flex: 1,
                                  child: Center(
                                      child: Text(
                                    "Thomas Mitchell",
                                    style: TextStyle(color: Colors.white, fontSize: 12.0, fontWeight: FontWeight.w300),
                                  )),
                                )
                              ],
                            ),
                          ),
                          Container(
                            margin: EdgeInsets.only(right: 16.0),
                            child: Column(
                              children: <Widget>[
                                Flexible(
                                  flex: 9,
                                  child: Container(
                                    width: 120.0,
                                    decoration: BoxDecoration(
                                        borderRadius: BorderRadius.circular(8.0),
                                        image: DecorationImage(image: NetworkImage(_image1), fit: BoxFit.fill)),
                                  ),
                                ),
                                Flexible(
                                  flex: 1,
                                  child: Center(
                                      child: Text(
                                    "Barbara O'Neil",
                                    style: TextStyle(color: Colors.white, fontSize: 12.0, fontWeight: FontWeight.w300),
                                  )),
                                )
                              ],
                            ),
                          ),
                          Container(
                            margin: EdgeInsets.only(right: 16.0),
                            child: Column(
                              children: <Widget>[
                                Flexible(
                                  flex: 9,
                                  child: Container(
                                    width: 120.0,
                                    decoration: BoxDecoration(
                                        borderRadius: BorderRadius.circular(8.0),
                                        image: DecorationImage(image: NetworkImage(_image2), fit: BoxFit.fill)),
                                  ),
                                ),
                                Flexible(
                                  flex: 1,
                                  child: Center(
                                      child: Text(
                                    "Vivien Leigh",
                                    style: TextStyle(color: Colors.white, fontSize: 12.0, fontWeight: FontWeight.w300),
                                  )),
                                )
                              ],
                            ),
                          ),
                        ],
                      ),
                    ),
                  ],
                ),
              ),
            ),
          ),

          Positioned(
            bottom: 0,
            left: 0,
            right: 0,
            child: Container(
              height: 48.0,
              decoration: BoxDecoration(
                color: Colors.amber,
                borderRadius: BorderRadius.only(topLeft: Radius.circular(48.0), topRight: Radius.circular(48.0)),
              ),
              child: Center(
                  child: Text(
                "Buy Ticket",
                style: TextStyle(color: Colors.white, fontSize: 16.0, fontWeight: FontWeight.bold),
              )),
            ),
          )
        ],
      ),
    );
  }
}
