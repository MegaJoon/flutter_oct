import 'package:flutter/material.dart';
import 'package:dots_indicator/dots_indicator.dart';
import 'package:flutter_oct/1018/page_list.dart';
import 'package:flutter_oct/1018/second_movie_page.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';

// https://dribbble.com/shots/6557091-Movie-Ticket-App-Concept/attachments

class MovieTicket extends StatefulWidget {
  @override
  _MovieTicketState createState() => _MovieTicketState();
}

class _MovieTicketState extends State<MovieTicket> {
  PageController _pageController;

  int _currentIndex = 0;

  @override
  void initState() {
    super.initState();
    _pageController = PageController(initialPage: 0, viewportFraction: 0.60);
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        backgroundColor: Color.fromRGBO(28, 28, 28, 1),
        body: Container(
          child: Column(
            children: <Widget>[
              Container(
                margin: EdgeInsets.only(left: 24.0),
                height: 80.0,
                child: Row(
                  children: <Widget>[
                    Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      mainAxisAlignment: MainAxisAlignment.end,
                      children: <Widget>[
                        DotsIndicator(
                          dotsCount: pageList.length,
                          position: _currentIndex,
                          decorator: DotsDecorator(
                            color: Colors.grey[500],
                            activeColor: Colors.white,
                            activeSize: Size(6.0, 6.0),
                            size: Size(6.0, 6.0),
                            spacing: EdgeInsets.all(4.0),
                          ),
                        ),
                        Text(
                          "Coming Soon",
                          style: TextStyle(color: Colors.white, fontSize: 28.0, fontWeight: FontWeight.bold),
                        ),
                        SizedBox(
                          height: 8.0,
                        ),
                      ],
                    ),
                    Spacer(),
                    Container(
                      height: 80.0,
                      width: 80.0,
                      decoration: BoxDecoration(
                        color: Colors.amber,
                        borderRadius: BorderRadius.only(
                          bottomLeft: Radius.circular(48.0),
                        ),
                      ),
                      child: Center(
                          child: Icon(
                        FontAwesomeIcons.ticketAlt,
                        color: Colors.white,
                        size: 28.0,
                      )),
                    )
                  ],
                ),
              ),
              Container(
                margin: EdgeInsets.only(top: 16.0),
                height: 350.0,
                child: PageView.builder(
                    itemCount: pageList.length,
                    scrollDirection: Axis.horizontal,
                    physics: BouncingScrollPhysics(),
                    controller: _pageController,
                    onPageChanged: (currentIndex) {
                      setState(() {
                        _currentIndex = currentIndex;
                      });
                    },
                    itemBuilder: (BuildContext context, int index) {
                      double marginY = (_currentIndex - index).abs().toDouble() * 50.0;
                      return InkWell(
                        onTap: (){
                          setState(() {
                            Navigator.push(context, MaterialPageRoute(builder: (context) => SecondMoviePage(index)));
                          });
                        },
                        child: Transform.translate(
                          offset: Offset(-80.0, 0.0),
                          child: Container(
                            margin: EdgeInsets.only(top: marginY / 2),
                            height: 350.0,
                            width: 200.0,
                            child: Column(
                              children: <Widget>[
                                Hero(
                                  tag: "item $index",
                                  child: Container(
                                    height: 280.0 - marginY,
                                    width: 200.0,
                                    decoration: BoxDecoration(
                                        borderRadius: BorderRadius.circular(8.0),
                                        image: DecorationImage(image: NetworkImage(pageList[index].image), fit: BoxFit.fill)),
                                  ),
                                ),
                                Container(
                                  margin: EdgeInsets.only(top: 12.0),
                                  height: 44.0,
                                  width: 200.0,
                                  child: Column(
                                    crossAxisAlignment: CrossAxisAlignment.start,
                                    mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                                    children: <Widget>[
                                      Text(
                                        pageList[index].title,
                                        style: _currentIndex == index
                                            ? TextStyle(color: Colors.white, fontSize: 20.0, fontWeight: FontWeight.bold)
                                            : TextStyle(color: Colors.white, fontSize: 16.0, fontWeight: FontWeight.bold),
                                      ),
                                      Row(
                                        children: <Widget>[
                                          Text(
                                            pageList[index].genre,
                                            style: _currentIndex == index
                                                ? TextStyle(color: Colors.grey[500], fontSize: 14.0, fontWeight: FontWeight.w300)
                                                : TextStyle(color: Colors.grey[500], fontSize: 12.0, fontWeight: FontWeight.w300),
                                          ),
                                          Spacer(),
                                          Text(
                                            pageList[index].time,
                                            style: _currentIndex == index
                                                ? TextStyle(color: Colors.grey[500], fontSize: 14.0, fontWeight: FontWeight.w300)
                                                : TextStyle(color: Colors.grey[500], fontSize: 12.0, fontWeight: FontWeight.w300),
                                          ),
                                        ],
                                      )
                                    ],
                                  ),
                                )
                              ],
                            ),
                          ),
                        ),
                      );
                    }),
              ),

              // listview
              Container(
                margin: EdgeInsets.only(left: 24.0),
                height: 237.0,
                child: ListView.builder(
                    scrollDirection: Axis.vertical,
                    itemCount: pageList.length,
                    itemBuilder: (BuildContext context, int idx) {
                      return Container(
                        margin: EdgeInsets.only(bottom: 16.0),
                        height: 120.0,
//                        color: Colors.white,
                        child: Stack(
                          children: <Widget>[
                            Positioned(
                              top: 16.0,
                              left: 0,
                              right: 24.0,
                              bottom: 0,
                              child: Container(
                                padding: EdgeInsets.only(top: 8.0, bottom: 8.0, left: 96.0),
                                decoration: BoxDecoration(color: Colors.black, borderRadius: BorderRadius.circular(8.0)),
                                child: Column(
                                  crossAxisAlignment: CrossAxisAlignment.start,
                                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                                  children: <Widget>[
                                    Text(
                                      pageList[idx].title,
                                      style: TextStyle(color: Colors.white, fontSize: 16.0, fontWeight: FontWeight.bold),
                                    ),
                                    Text(
                                      pageList[idx].genre,
                                      style: TextStyle(color: Colors.grey[500], fontSize: 14.0, fontWeight: FontWeight.w600),
                                    ),
                                    Text(
                                      pageList[idx].time,
                                      style: TextStyle(
                                          color: Colors.grey[500], fontSize: 14.0, fontWeight: FontWeight.w600, height: 1.5),
                                    ),
                                    Row(
                                      children: <Widget>[
                                        Icon(
                                          Icons.star,
                                          size: 14.0,
                                          color: Colors.amber,
                                        ),
                                        Icon(
                                          Icons.star,
                                          size: 14.0,
                                          color: Colors.amber,
                                        ),
                                        Icon(
                                          Icons.star,
                                          size: 14.0,
                                          color: Colors.amber,
                                        ),
                                        Icon(
                                          Icons.star,
                                          size: 14.0,
                                          color: Colors.amber,
                                        ),
                                        Icon(
                                          Icons.star_border,
                                          size: 14.0,
                                          color: Colors.amber,
                                        ),
                                      ],
                                    )
                                  ],
                                ),
                              ),
                            ),
                            Positioned(
                              top: 0,
                              left: 0,
                              bottom: 16.00,
                              child: Container(
                                width: 80.0,
                                decoration: BoxDecoration(
                                    borderRadius: BorderRadius.circular(8.0),
                                    image: DecorationImage(image: NetworkImage(pageList[idx].image), fit: BoxFit.fill)),
                              ),
                            ),
                          ],
                        ),
                      );
                    }),
              )
            ],
          ),
        ));
  }
}