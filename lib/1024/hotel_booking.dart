import 'package:flutter/material.dart';

import 'book_page.dart';

// https://dribbble.com/shots/7793207-Daily-UI-67-Hotel-Booking/attachments/457416?mode=media

class HotelBooking extends StatefulWidget {
  @override
  _HotelBookingState createState() => _HotelBookingState();
}

class _HotelBookingState extends State<HotelBooking> {
  Color _backgroundColor = Color.fromRGBO(0, 21, 48, 1);
  Color _containerColor = Color.fromRGBO(8, 183, 131, 1);

  String _image = "https://cdn.pixabay.com/photo/2017/05/12/12/42/dresden-2306937__340.jpg";
  String _image2 = "https://cdn.pixabay.com/photo/2019/10/07/19/13/nature-4533378__340.jpg";
  String _image3 = "https://cdn.pixabay.com/photo/2019/10/20/16/57/loom-4564223__340.jpg";

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: _backgroundColor,
      // appbar
      appBar: AppBar(
        backgroundColor: _backgroundColor,
        leading: Icon(
          Icons.arrow_back_ios,
          size: 20.0,
          color: Colors.white,
        ),
        centerTitle: true,
        title: Text(
          "Hotel Booking",
          style: TextStyle(color: Colors.white, fontSize: 16.0, fontWeight: FontWeight.bold),
        ),
        actions: <Widget>[
          Icon(
            Icons.menu,
            size: 20.0,
            color: Colors.white,
          ),
          SizedBox(
            width: 16.0,
          ),
        ],
      ),
      body: Container(
        child: PageView(
          children: <Widget>[
            // first page
            Container(
              margin: EdgeInsets.only(left: 24.0, bottom: 24.0),
              child: Column(
                children: <Widget>[
                  Flexible(
                    flex: 1,
                    child: Container(
                      decoration: BoxDecoration(
                          borderRadius: BorderRadius.only(topLeft: Radius.circular(48.0)),
                          image: DecorationImage(image: NetworkImage(_image), fit: BoxFit.fill)),
                    ),
                  ),
                  Flexible(
                    flex: 1,
                    child: Container(
                      padding: EdgeInsets.only(top: 40.0, left: 24.0, right: 48.0, bottom: 56.0),
                      width: MediaQuery.of(context).size.width,
                      decoration: BoxDecoration(
                        borderRadius: BorderRadius.only(bottomLeft: Radius.circular(48.0)),
                        color: Colors.white,
                      ),
                      child: Column(
                        crossAxisAlignment: CrossAxisAlignment.start,
                        mainAxisAlignment: MainAxisAlignment.spaceBetween,
                        children: <Widget>[
                          Text(
                            "Amazing Hotel",
                            style: TextStyle(color: Colors.black, fontSize: 28.0, fontWeight: FontWeight.bold),
                          ),
                          // 5 star
                          Row(
                            crossAxisAlignment: CrossAxisAlignment.end,
                            mainAxisAlignment: MainAxisAlignment.start,
                            children: <Widget>[
                              Icon(
                                Icons.star,
                                color: Colors.blue,
                                size: 24.0,
                              ),
                              Icon(
                                Icons.star,
                                color: Colors.blue,
                                size: 24.0,
                              ),
                              Icon(
                                Icons.star,
                                color: Colors.blue,
                                size: 24.0,
                              ),
                              Icon(
                                Icons.star,
                                color: Colors.blue,
                                size: 24.0,
                              ),
                              Icon(
                                Icons.star,
                                color: Colors.blue,
                                size: 24.0,
                              ),
                              SizedBox(
                                width: 8.0,
                              ),
                              Text(
                                "( 5.0 / 127 )",
                                style: TextStyle(color: Colors.blue, fontSize: 12.0, fontWeight: FontWeight.bold),
                              )
                            ],
                          ),

                          SizedBox(height: 8.0,),

                          // icon text;
                          Row(
                            children: <Widget>[
                              Container(
                                width: 150.0,
                                child: Row(
                                  mainAxisAlignment: MainAxisAlignment.start,
                                  children: <Widget>[
                                    Icon(
                                      Icons.wifi,
                                      color: Colors.grey,
                                      size: 16.0,
                                    ),
                                    Text(
                                      "Free-Wifi",
                                      style: TextStyle(color: Colors.grey, fontSize: 14.0, fontWeight: FontWeight.bold),
                                    ),
                                  ],
                                ),
                              ),
                              Container(
                                width: 150.0,
                                child: Row(
                                  mainAxisAlignment: MainAxisAlignment.start,
                                  children: <Widget>[
                                    Icon(
                                      Icons.free_breakfast,
                                      color: Colors.grey,
                                      size: 16.0,
                                    ),
                                    Text(
                                      "Breakfast",
                                      style: TextStyle(color: Colors.grey, fontSize: 14.0, fontWeight: FontWeight.bold),
                                    ),
                                  ],
                                ),
                              ),
                            ],
                          ),
                          Row(
                            children: <Widget>[
                              Container(
                                width: 150.0,
                                child: Row(
                                  mainAxisAlignment: MainAxisAlignment.start,
                                  children: <Widget>[
                                    Icon(
                                      Icons.local_pizza,
                                      color: Colors.grey,
                                      size: 16.0,
                                    ),
                                    Text(
                                      "Air-Conditioning",
                                      style: TextStyle(color: Colors.grey, fontSize: 14.0, fontWeight: FontWeight.bold),
                                    ),
                                  ],
                                ),
                              ),
                              Container(
                                width: 150.0,
                                child: Row(
                                  mainAxisAlignment: MainAxisAlignment.start,
                                  children: <Widget>[
                                    Icon(
                                      Icons.restaurant,
                                      color: Colors.grey,
                                      size: 16.0,
                                    ),
                                    Text(
                                      "Restaurant",
                                      style: TextStyle(color: Colors.grey, fontSize: 14.0, fontWeight: FontWeight.bold),
                                    ),
                                  ],
                                ),
                              ),
                            ],
                          ),

                          SizedBox(height: 8.0,),
                          // check in & out
                          Row(
                            mainAxisAlignment: MainAxisAlignment.spaceBetween,
                            children: <Widget>[
                              Column(
                                crossAxisAlignment: CrossAxisAlignment.start,
                                mainAxisAlignment: MainAxisAlignment.start,
                                children: <Widget>[
                                  Text(
                                    "Check-in",
                                    style: TextStyle(color: Colors.grey, fontSize: 10.0, fontWeight: FontWeight.bold),
                                  ),
                                  Text(
                                    "Thu, Oct 24",
                                    style: TextStyle(color: Colors.black, fontSize: 14.0, fontWeight: FontWeight.bold),
                                  ),
                                ],
                              ),
                              Column(
                                crossAxisAlignment: CrossAxisAlignment.start,
                                mainAxisAlignment: MainAxisAlignment.start,
                                children: <Widget>[
                                  Text(
                                    "Check-Out",
                                    style: TextStyle(color: Colors.grey, fontSize: 10.0, fontWeight: FontWeight.bold),
                                  ),
                                  Text(
                                    "Fri, Oct 25",
                                    style: TextStyle(color: Colors.black, fontSize: 14.0, fontWeight: FontWeight.bold),
                                  ),
                                ],
                              ),
                              Column(
                                crossAxisAlignment: CrossAxisAlignment.start,
                                mainAxisAlignment: MainAxisAlignment.start,
                                children: <Widget>[
                                  Text(
                                    "Rooms and Guests",
                                    style: TextStyle(color: Colors.grey, fontSize: 10.0, fontWeight: FontWeight.bold),
                                  ),
                                  Text(
                                    "1Room, 1 Guest",
                                    style: TextStyle(color: Colors.black, fontSize: 14.0, fontWeight: FontWeight.bold),
                                  ),
                                ],
                              )
                            ],
                          ),

                          // search container
                          InkWell(
                            onTap: (){
                              setState(() {
                                Navigator.push(context, MaterialPageRoute(builder: (context) => BookPage()));
                              });
                            },
                            child: Container(
                              height: 32.0,
                              decoration: BoxDecoration(borderRadius: BorderRadius.circular(4.0), color: _containerColor),
                              child: Center(
                                  child: Text(
                                "Search",
                                style: TextStyle(color: Colors.white, fontSize: 16.0, fontWeight: FontWeight.bold),
                              )),
                            ),
                          )
                        ],
                      ),
                    ),
                  ),
                ],
              ),
            ),

            // second page
            Container(
              margin: EdgeInsets.only(bottom: 24.0),
              child: Column(
                children: <Widget>[
                  Flexible(
                    flex: 1,
                    child: Container(
                      decoration: BoxDecoration(
//                          borderRadius: BorderRadius.only(topLeft: Radius.circular(48.0)),
                          image: DecorationImage(image: NetworkImage(_image2), fit: BoxFit.fill)),
                    ),
                  ),
                  Flexible(
                    flex: 1,
                    child: Container(
                      padding: EdgeInsets.only(top: 40.0, left: 24.0, right: 48.0, bottom: 56.0),
                      width: MediaQuery.of(context).size.width,
                      decoration: BoxDecoration(
//                        borderRadius: BorderRadius.only(bottomLeft: Radius.circular(48.0)),
                        color: Colors.white,
                      ),
                      child: Column(
                        crossAxisAlignment: CrossAxisAlignment.start,
                        mainAxisAlignment: MainAxisAlignment.spaceBetween,
                        children: <Widget>[
                          Text(
                            "Amazing Hotel",
                            style: TextStyle(color: Colors.black, fontSize: 28.0, fontWeight: FontWeight.bold),
                          ),
                          // 5 star
                          Row(
                            crossAxisAlignment: CrossAxisAlignment.end,
                            mainAxisAlignment: MainAxisAlignment.start,
                            children: <Widget>[
                              Icon(
                                Icons.star,
                                color: Colors.blue,
                                size: 24.0,
                              ),
                              Icon(
                                Icons.star,
                                color: Colors.blue,
                                size: 24.0,
                              ),
                              Icon(
                                Icons.star,
                                color: Colors.blue,
                                size: 24.0,
                              ),
                              Icon(
                                Icons.star,
                                color: Colors.blue,
                                size: 24.0,
                              ),
                              Icon(
                                Icons.star,
                                color: Colors.blue,
                                size: 24.0,
                              ),
                              SizedBox(
                                width: 8.0,
                              ),
                              Text(
                                "( 5.0 / 127 )",
                                style: TextStyle(color: Colors.blue, fontSize: 12.0, fontWeight: FontWeight.bold),
                              )
                            ],
                          ),

                          SizedBox(height: 8.0,),

                          // icon text;
                          Row(
                            children: <Widget>[
                              Container(
                                width: 150.0,
                                child: Row(
                                  mainAxisAlignment: MainAxisAlignment.start,
                                  children: <Widget>[
                                    Icon(
                                      Icons.wifi,
                                      color: Colors.grey,
                                      size: 16.0,
                                    ),
                                    Text(
                                      "Free-Wifi",
                                      style: TextStyle(color: Colors.grey, fontSize: 14.0, fontWeight: FontWeight.bold),
                                    ),
                                  ],
                                ),
                              ),
                              Container(
                                width: 150.0,
                                child: Row(
                                  mainAxisAlignment: MainAxisAlignment.start,
                                  children: <Widget>[
                                    Icon(
                                      Icons.free_breakfast,
                                      color: Colors.grey,
                                      size: 16.0,
                                    ),
                                    Text(
                                      "Breakfast",
                                      style: TextStyle(color: Colors.grey, fontSize: 14.0, fontWeight: FontWeight.bold),
                                    ),
                                  ],
                                ),
                              ),
                            ],
                          ),
                          Row(
                            children: <Widget>[
                              Container(
                                width: 150.0,
                                child: Row(
                                  mainAxisAlignment: MainAxisAlignment.start,
                                  children: <Widget>[
                                    Icon(
                                      Icons.local_pizza,
                                      color: Colors.grey,
                                      size: 16.0,
                                    ),
                                    Text(
                                      "Air-Conditioning",
                                      style: TextStyle(color: Colors.grey, fontSize: 14.0, fontWeight: FontWeight.bold),
                                    ),
                                  ],
                                ),
                              ),
                              Container(
                                width: 150.0,
                                child: Row(
                                  mainAxisAlignment: MainAxisAlignment.start,
                                  children: <Widget>[
                                    Icon(
                                      Icons.restaurant,
                                      color: Colors.grey,
                                      size: 16.0,
                                    ),
                                    Text(
                                      "Restaurant",
                                      style: TextStyle(color: Colors.grey, fontSize: 14.0, fontWeight: FontWeight.bold),
                                    ),
                                  ],
                                ),
                              ),
                            ],
                          ),

                          SizedBox(height: 8.0,),
                          // check in & out
                          Row(
                            mainAxisAlignment: MainAxisAlignment.spaceBetween,
                            children: <Widget>[
                              Column(
                                crossAxisAlignment: CrossAxisAlignment.start,
                                mainAxisAlignment: MainAxisAlignment.start,
                                children: <Widget>[
                                  Text(
                                    "Check-in",
                                    style: TextStyle(color: Colors.grey, fontSize: 10.0, fontWeight: FontWeight.bold),
                                  ),
                                  Text(
                                    "Thu, Oct 24",
                                    style: TextStyle(color: Colors.black, fontSize: 14.0, fontWeight: FontWeight.bold),
                                  ),
                                ],
                              ),
                              Column(
                                crossAxisAlignment: CrossAxisAlignment.start,
                                mainAxisAlignment: MainAxisAlignment.start,
                                children: <Widget>[
                                  Text(
                                    "Check-Out",
                                    style: TextStyle(color: Colors.grey, fontSize: 10.0, fontWeight: FontWeight.bold),
                                  ),
                                  Text(
                                    "Fri, Oct 25",
                                    style: TextStyle(color: Colors.black, fontSize: 14.0, fontWeight: FontWeight.bold),
                                  ),
                                ],
                              ),
                              Column(
                                crossAxisAlignment: CrossAxisAlignment.start,
                                mainAxisAlignment: MainAxisAlignment.start,
                                children: <Widget>[
                                  Text(
                                    "Rooms and Guests",
                                    style: TextStyle(color: Colors.grey, fontSize: 10.0, fontWeight: FontWeight.bold),
                                  ),
                                  Text(
                                    "1Room, 1 Guest",
                                    style: TextStyle(color: Colors.black, fontSize: 14.0, fontWeight: FontWeight.bold),
                                  ),
                                ],
                              )
                            ],
                          ),

                          // search container
                          InkWell(
                            onTap: (){
                              setState(() {
                                Navigator.push(context, MaterialPageRoute(builder: (context) => BookPage()));
                              });
                            },
                            child: Container(
                              height: 32.0,
                              decoration: BoxDecoration(borderRadius: BorderRadius.circular(4.0), color: _containerColor),
                              child: Center(
                                  child: Text(
                                    "Search",
                                    style: TextStyle(color: Colors.white, fontSize: 16.0, fontWeight: FontWeight.bold),
                                  )),
                            ),
                          )
                        ],
                      ),
                    ),
                  ),
                ],
              ),
            ),

            // third page
            Container(
              margin: EdgeInsets.only(right: 24.0, bottom: 24.0),
              child: Column(
                children: <Widget>[
                  Flexible(
                    flex: 1,
                    child: Container(
                      decoration: BoxDecoration(
                          borderRadius: BorderRadius.only(topRight: Radius.circular(48.0)),
                          image: DecorationImage(image: NetworkImage(_image3), fit: BoxFit.fill)),
                    ),
                  ),
                  Flexible(
                    flex: 1,
                    child: Container(
                      padding: EdgeInsets.only(top: 40.0, left: 24.0, right: 48.0, bottom: 56.0),
                      width: MediaQuery.of(context).size.width,
                      decoration: BoxDecoration(
                        borderRadius: BorderRadius.only(bottomRight: Radius.circular(48.0)),
                        color: Colors.white,
                      ),
                      child: Column(
                        crossAxisAlignment: CrossAxisAlignment.start,
                        mainAxisAlignment: MainAxisAlignment.spaceBetween,
                        children: <Widget>[
                          Text(
                            "Amazing Hotel",
                            style: TextStyle(color: Colors.black, fontSize: 28.0, fontWeight: FontWeight.bold),
                          ),
                          // 5 star
                          Row(
                            crossAxisAlignment: CrossAxisAlignment.end,
                            mainAxisAlignment: MainAxisAlignment.start,
                            children: <Widget>[
                              Icon(
                                Icons.star,
                                color: Colors.blue,
                                size: 24.0,
                              ),
                              Icon(
                                Icons.star,
                                color: Colors.blue,
                                size: 24.0,
                              ),
                              Icon(
                                Icons.star,
                                color: Colors.blue,
                                size: 24.0,
                              ),
                              Icon(
                                Icons.star,
                                color: Colors.blue,
                                size: 24.0,
                              ),
                              Icon(
                                Icons.star,
                                color: Colors.blue,
                                size: 24.0,
                              ),
                              SizedBox(
                                width: 8.0,
                              ),
                              Text(
                                "( 5.0 / 127 )",
                                style: TextStyle(color: Colors.blue, fontSize: 12.0, fontWeight: FontWeight.bold),
                              )
                            ],
                          ),

                          SizedBox(height: 8.0,),

                          // icon text;
                          Row(
                            children: <Widget>[
                              Container(
                                width: 150.0,
                                child: Row(
                                  mainAxisAlignment: MainAxisAlignment.start,
                                  children: <Widget>[
                                    Icon(
                                      Icons.wifi,
                                      color: Colors.grey,
                                      size: 16.0,
                                    ),
                                    Text(
                                      "Free-Wifi",
                                      style: TextStyle(color: Colors.grey, fontSize: 14.0, fontWeight: FontWeight.bold),
                                    ),
                                  ],
                                ),
                              ),
                              Container(
                                width: 150.0,
                                child: Row(
                                  mainAxisAlignment: MainAxisAlignment.start,
                                  children: <Widget>[
                                    Icon(
                                      Icons.free_breakfast,
                                      color: Colors.grey,
                                      size: 16.0,
                                    ),
                                    Text(
                                      "Breakfast",
                                      style: TextStyle(color: Colors.grey, fontSize: 14.0, fontWeight: FontWeight.bold),
                                    ),
                                  ],
                                ),
                              ),
                            ],
                          ),
                          Row(
                            children: <Widget>[
                              Container(
                                width: 150.0,
                                child: Row(
                                  mainAxisAlignment: MainAxisAlignment.start,
                                  children: <Widget>[
                                    Icon(
                                      Icons.local_pizza,
                                      color: Colors.grey,
                                      size: 16.0,
                                    ),
                                    Text(
                                      "Air-Conditioning",
                                      style: TextStyle(color: Colors.grey, fontSize: 14.0, fontWeight: FontWeight.bold),
                                    ),
                                  ],
                                ),
                              ),
                              Container(
                                width: 150.0,
                                child: Row(
                                  mainAxisAlignment: MainAxisAlignment.start,
                                  children: <Widget>[
                                    Icon(
                                      Icons.restaurant,
                                      color: Colors.grey,
                                      size: 16.0,
                                    ),
                                    Text(
                                      "Restaurant",
                                      style: TextStyle(color: Colors.grey, fontSize: 14.0, fontWeight: FontWeight.bold),
                                    ),
                                  ],
                                ),
                              ),
                            ],
                          ),

                          SizedBox(height: 8.0,),
                          // check in & out
                          Row(
                            mainAxisAlignment: MainAxisAlignment.spaceBetween,
                            children: <Widget>[
                              Column(
                                crossAxisAlignment: CrossAxisAlignment.start,
                                mainAxisAlignment: MainAxisAlignment.start,
                                children: <Widget>[
                                  Text(
                                    "Check-in",
                                    style: TextStyle(color: Colors.grey, fontSize: 10.0, fontWeight: FontWeight.bold),
                                  ),
                                  Text(
                                    "Thu, Oct 24",
                                    style: TextStyle(color: Colors.black, fontSize: 14.0, fontWeight: FontWeight.bold),
                                  ),
                                ],
                              ),
                              Column(
                                crossAxisAlignment: CrossAxisAlignment.start,
                                mainAxisAlignment: MainAxisAlignment.start,
                                children: <Widget>[
                                  Text(
                                    "Check-Out",
                                    style: TextStyle(color: Colors.grey, fontSize: 10.0, fontWeight: FontWeight.bold),
                                  ),
                                  Text(
                                    "Fri, Oct 25",
                                    style: TextStyle(color: Colors.black, fontSize: 14.0, fontWeight: FontWeight.bold),
                                  ),
                                ],
                              ),
                              Column(
                                crossAxisAlignment: CrossAxisAlignment.start,
                                mainAxisAlignment: MainAxisAlignment.start,
                                children: <Widget>[
                                  Text(
                                    "Rooms and Guests",
                                    style: TextStyle(color: Colors.grey, fontSize: 10.0, fontWeight: FontWeight.bold),
                                  ),
                                  Text(
                                    "1Room, 1 Guest",
                                    style: TextStyle(color: Colors.black, fontSize: 14.0, fontWeight: FontWeight.bold),
                                  ),
                                ],
                              )
                            ],
                          ),

                          // search container
                            InkWell(
                            onTap: (){
                              setState(() {
                                Navigator.push(context, MaterialPageRoute(builder: (context) => BookPage()));
                              });
                            },
                            child: Container(
                              height: 32.0,
                              decoration: BoxDecoration(borderRadius: BorderRadius.circular(4.0), color: _containerColor),
                              child: Center(
                                  child: Text(
                                    "Search",
                                    style: TextStyle(color: Colors.white, fontSize: 16.0, fontWeight: FontWeight.bold),
                                  )),
                            ),
                          )
                        ],
                      ),
                    ),
                  ),
                ],
              ),
            ),
          ],
        ),
      ),
    );
  }
}
