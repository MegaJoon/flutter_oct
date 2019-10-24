import 'package:flutter/material.dart';

class BookPage extends StatefulWidget {
  @override
  _BookPageState createState() => _BookPageState();
}

class _BookPageState extends State<BookPage> {
  Color _backgroundColor = Color.fromRGBO(0, 21, 48, 1);
  Color _containerColor = Color.fromRGBO(8, 183, 131, 1);

  String _image = "https://cdn.pixabay.com/photo/2014/08/11/21/40/wall-416062__340.jpg";

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: _backgroundColor,
      // appbar
      appBar: AppBar(
        backgroundColor: _backgroundColor,
        leading: IconButton(
          icon: Icon(Icons.arrow_back_ios,
            size: 20.0,
            color: Colors.white,
          ),
          onPressed: (){
            setState(() {
              Navigator.pop(context);
            });
          },
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
                    // title
                    Row(
                      crossAxisAlignment: CrossAxisAlignment.end,
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      children: <Widget>[
                        Text(
                          "Deluxe Room",
                          style: TextStyle(color: Colors.black, fontSize: 28.0, fontWeight: FontWeight.bold),
                        ),
                        Column(
                          crossAxisAlignment: CrossAxisAlignment.end,
                          mainAxisAlignment: MainAxisAlignment.start,
                          children: <Widget>[
                            Text(
                              "Include Tax",
                              style: TextStyle(color: Colors.black, fontSize: 10.0, fontWeight: FontWeight.bold),
                            ),
                            Text(
                              "\$246",
                              style: TextStyle(color: Colors.black, fontSize: 28.0, fontWeight: FontWeight.bold),
                            ),
                          ],
                        ),
                      ],
                    ),

                    SizedBox(height: 12.0,),

                    // description
                    Row(
                      children: <Widget>[
                        Text("34m2", style: TextStyle(color: Colors.grey, fontSize: 12.0, fontWeight: FontWeight.bold),),
                        SizedBox(width: 32.0,),
                        Text("2 double beds", style: TextStyle(color: Colors.grey, fontSize: 12.0, fontWeight: FontWeight.bold),),
                        SizedBox(width: 32.0,),
                        Text("Fllor 2-6", style: TextStyle(color: Colors.grey, fontSize: 12.0, fontWeight: FontWeight.bold),),
                      ],
                    ),
                    Row(
                      children: <Widget>[
                        Text("Breakfast include", style: TextStyle(color: Colors.grey, fontSize: 12.0, fontWeight: FontWeight.bold),),
                        SizedBox(width: 32.0,),
                        Text("Free internet", style: TextStyle(color: Colors.grey, fontSize: 12.0, fontWeight: FontWeight.bold),),
                      ],
                    ),

                    SizedBox(height: 12.0,),

                    // check in check out
                    Row(
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      crossAxisAlignment: CrossAxisAlignment.end,
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
                        Text("1 night stay", style: TextStyle(color: Colors.blue, fontSize: 10.0, fontWeight: FontWeight.bold),)
                      ],
                    ),

                    // book container
                    Container(
                      height: 32.0,
                      decoration: BoxDecoration(borderRadius: BorderRadius.circular(4.0), color: _containerColor),
                      child: Center(
                          child: Text(
                            "Book",
                            style: TextStyle(color: Colors.white, fontSize: 16.0, fontWeight: FontWeight.bold),
                          )),
                    )
                  ],
                ),
              ),
            ),
          ],
        ),
      ),

    );
  }
}
