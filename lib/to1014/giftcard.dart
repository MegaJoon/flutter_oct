import 'package:flutter/material.dart';
import 'package:flutter_oct/to1015/dotted_line.dart';

// https://dribbble.com/shots/7444197-Personalized-Gift-cards

class GiftCard extends StatefulWidget {
  @override
  _GiftCardState createState() => _GiftCardState();
}

class _GiftCardState extends State<GiftCard> {
  Color _color = Color.fromRGBO(251, 154, 39, 1);
  Color _cardColor = Color.fromRGBO(81, 90, 87, 1);
  Color _cardColor2 = Color.fromRGBO(39, 43, 218, 1);
  String _qrcode = "https://cdn.pixabay.com/photo/2017/10/04/12/17/qr-code-2816041__340.png";

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Stack(
        children: <Widget>[
          // background circle
          Positioned(
            top: -350.0,
            left: -170.0,
            child: ClipRRect(
              borderRadius: BorderRadius.circular(40.0),
              child: Container(
                height: 400.0,
                width: 400.0,
                decoration: BoxDecoration(
                  shape: BoxShape.circle,
                  gradient: LinearGradient(
                      colors: [_color, Colors.amber],
                      begin: Alignment.centerLeft,
                      end: Alignment.centerRight),
                ),
              ),
            ),
          ),
          Positioned(
            top: 20.0,
            left: 150.0,
            child: ClipRRect(
              borderRadius: BorderRadius.circular(40.0),
              child: Container(
                height: 40.0,
                width: 40.0,
                decoration: BoxDecoration(
                  shape: BoxShape.circle,
                  gradient: LinearGradient(
                      colors: [_color, Colors.amber],
                      begin: Alignment.centerLeft,
                      end: Alignment.centerRight),
                ),
              ),
            ),
          ),
          Positioned(
            top: -140.0,
            right: -220.0,
            child: ClipRRect(
              borderRadius: BorderRadius.circular(40.0),
              child: Container(
                height: 400.0,
                width: 400.0,
                decoration: BoxDecoration(
                  shape: BoxShape.circle,
                  gradient: LinearGradient(
                      colors: [_color, Colors.amber],
                      begin: Alignment.centerLeft,
                      end: Alignment.centerRight),
                ),
              ),
            ),
          ),

          Positioned(
              top: 0,
              left: 24.0,
              right: 0,
              child: SafeArea(
                  top: true,
                  left: true,
                  right: true,
                  child: Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: <Widget>[
                      // appbar & text
                      Container(
                        margin: EdgeInsets.only(right: 24.0),
                        height: 64.0,
                        child: Row(
                          crossAxisAlignment: CrossAxisAlignment.start,
                          children: <Widget>[
                            Column(
                              crossAxisAlignment: CrossAxisAlignment.start,
                              children: <Widget>[
                                Row(
                                  children: <Widget>[
                                    Icon(
                                      Icons.arrow_back,
                                      size: 20.0,
                                      color: Colors.black,
                                    ),
                                    SizedBox(width: 8.0),
                                    Text(
                                      "Back",
                                      style: TextStyle(
                                          color: Colors.black,
                                          fontSize: 16.0,
                                          fontWeight: FontWeight.w600),
                                    ),
                                  ],
                                ),
                                Text(
                                  "Gift Cards",
                                  style: TextStyle(
                                      color: Colors.black,
                                      fontSize: 32.0,
                                      fontWeight: FontWeight.bold),
                                )
                              ],
                            ),
                            Spacer(),
                            Icon(
                              Icons.add,
                              size: 28.0,
                              color: Colors.black,
                            )
                          ],
                        ),
                      ),

                      // listview(card container)
                      Container(
                        margin: EdgeInsets.only(bottom: 24.0),
                        height: 400.0,
//                      color: Colors.grey,
                        child: ListView(
                          padding: EdgeInsets.zero,
                          shrinkWrap: true,
                          scrollDirection: Axis.horizontal,
                          children: <Widget>[
                            Container(
//                              padding: EdgeInsets.only(top: 16.0, bottom: 16.0),
                              margin: EdgeInsets.only(right: 24.0),
                              height: 400.0,
                              width: 250.0,
                              decoration: BoxDecoration(
                                borderRadius: BorderRadius.circular(8.0),
                                color: _cardColor,
                              ),
                              child: Stack(
                                children: <Widget>[
                                  // side punch
                                  Positioned(
                                    left: -8.0,
                                    bottom: 400 / 3,
                                    child: ClipRRect(
                                      borderRadius: BorderRadius.circular(40.0),
                                      child: Container(
                                        height: 16.0,
                                        width: 16.0,
                                        color: Colors.white,
                                      ),
                                    ),
                                  ),
                                  Positioned(
                                    right: -8.0,
                                    bottom: 400 / 3,
                                    child: ClipRRect(
                                      borderRadius: BorderRadius.circular(40.0),
                                      child: Container(
                                        height: 16.0,
                                        width: 16.0,
                                        color: Colors.white,
                                      ),
                                    ),
                                  ),
                                  // column
                                  Container(
                                    margin: EdgeInsets.only(left: 8.0, bottom: 12.0),
                                    height: 400.0,
                                    width: 250.0,
//                                    color: Colors.black,
                                    child: Stack(
                                      children: <Widget>[
                                        Positioned(
                                          top: 105,
                                          left: -70,
                                          child: Transform.rotate(
                                            alignment: Alignment.center,
                                            angle: -1.57,
                                            child: Text(
                                              "FRIENDS".toUpperCase(),
                                              style: TextStyle(
                                                  color: Colors.white.withOpacity(0.6),
                                                  fontSize: 50.0,
                                                  fontWeight: FontWeight.bold),
                                            ),
                                          ),
                                        ),
                                        Column(
                                          crossAxisAlignment: CrossAxisAlignment.end,
                                          children: <Widget>[
                                            // top
                                            Flexible(
                                              flex: 2,
                                              child: Padding(
                                                padding: const EdgeInsets.symmetric(
                                                    horizontal: 8.0, vertical: 16.0),
                                                child: Column(
                                                  crossAxisAlignment: CrossAxisAlignment.end,
                                                  children: <Widget>[
                                                    IconButton(
//                                                      alignment: Alignment.centerRight,
                                                      onPressed: () {
                                                        setState(() {
                                                          //
                                                        });
                                                      },
                                                      icon: Icon(
                                                        Icons.more_vert,
                                                        size: 28.0,
                                                        color: Colors.white,
                                                      ),
                                                    ),
                                                    Spacer(),
                                                    Text(
                                                      "\$80.25",
                                                      style: TextStyle(
                                                          color: Colors.white,
                                                          fontSize: 50.0,
                                                          fontWeight: FontWeight.w600),
                                                    ),
                                                  ],
                                                ),
                                              ),
                                            ),
                                            // divider
                                            Dottedline(),
                                            // bottom: qr code
                                            Flexible(
                                              flex: 1,
                                              child: Row(
                                                crossAxisAlignment: CrossAxisAlignment.center,
                                                children: <Widget>[
                                                  Container(
                                                    margin: EdgeInsets.only(left: 8.0, right: 8.0),
                                                    height: 100.0,
                                                    width: 100.0,
                                                    color: Colors.white,
                                                    child: Image.network(
                                                      _qrcode,
                                                      fit: BoxFit.fill,
                                                    ),
                                                  ),
                                                  Column(
                                                    crossAxisAlignment: CrossAxisAlignment.start,
                                                    mainAxisAlignment: MainAxisAlignment.center,
                                                    children: <Widget>[
                                                      Text(
                                                        "Scan QR code",
                                                        style: TextStyle(
                                                            color: Colors.white,
                                                            fontSize: 14.0,
                                                            fontWeight: FontWeight.bold),
                                                      ),
                                                      SizedBox(
                                                        height: 8.0,
                                                      ),
                                                      Text(
                                                        "Let your cashier\nknow you'd like to\nuse your gift card.",
                                                        style: TextStyle(
                                                            color: Colors.white,
                                                            fontSize: 12.0,
                                                            fontWeight: FontWeight.w600),
                                                      ),
                                                    ],
                                                  )
                                                ],
                                              ),
                                            ),
                                          ],
                                        ),
                                      ],
                                    ),
                                  ),
                                ],
                              ),
                            ),
                            Container(
//                              padding: EdgeInsets.only(top: 16.0, bottom: 16.0),
                              margin: EdgeInsets.only(right: 24.0),
                              height: 400.0,
                              width: 250.0,
                              decoration: BoxDecoration(
                                borderRadius: BorderRadius.circular(8.0),
                                color: _cardColor2,
                              ),
                              child: Stack(
                                children: <Widget>[
                                  // side punch
                                  Positioned(
                                    left: -8.0,
                                    bottom: 400 / 3,
                                    child: ClipRRect(
                                      borderRadius: BorderRadius.circular(40.0),
                                      child: Container(
                                        height: 16.0,
                                        width: 16.0,
                                        color: Colors.white,
                                      ),
                                    ),
                                  ),
                                  Positioned(
                                    right: -8.0,
                                    bottom: 400 / 3,
                                    child: ClipRRect(
                                      borderRadius: BorderRadius.circular(40.0),
                                      child: Container(
                                        height: 16.0,
                                        width: 16.0,
                                        color: Colors.white,
                                      ),
                                    ),
                                  ),

                                  // column
                                  Container(
                                    margin: EdgeInsets.only(left: 8.0, right: 8.0, bottom: 12.0),
                                    height: 400.0,
                                    width: 250.0,
//                                    color: Colors.black,
                                    child: Stack(
                                      children: <Widget>[
                                        Positioned(
                                          top: 105,
                                          left: -70,
                                          child: Transform.rotate(
                                            alignment: Alignment.center,
                                            angle: -1.57,
                                            child: Text(
                                              "FRIENDS".toUpperCase(),
                                              style: TextStyle(
                                                  color: Colors.white.withOpacity(0.6),
                                                  fontSize: 50.0,
                                                  fontWeight: FontWeight.bold),
                                            ),
                                          ),
                                        ),
                                        Column(
                                          crossAxisAlignment: CrossAxisAlignment.end,
                                          children: <Widget>[
                                            // top
                                            Flexible(
                                              flex: 2,
                                              child: Padding(
                                                padding: const EdgeInsets.symmetric(
                                                    horizontal: 8.0, vertical: 16.0),
                                                child: Column(
                                                  crossAxisAlignment: CrossAxisAlignment.end,
                                                  children: <Widget>[
                                                    Icon(
                                                      Icons.more_vert,
                                                      size: 28.0,
                                                      color: Colors.white,
                                                    ),
                                                    Spacer(),
                                                    Text(
                                                      "\$80.25",
                                                      style: TextStyle(
                                                          color: Colors.white,
                                                          fontSize: 50.0,
                                                          fontWeight: FontWeight.w600),
                                                    ),
                                                  ],
                                                ),
                                              ),
                                            ),
                                            // divider
                                            Dottedline(),

                                            // bottom: qr code
                                            Flexible(
                                              flex: 1,
                                              child: Row(
                                                crossAxisAlignment: CrossAxisAlignment.center,
                                                children: <Widget>[
                                                  Container(
                                                    margin: EdgeInsets.only(left: 8.0, right: 8.0),
                                                    height: 100.0,
                                                    width: 100.0,
                                                    color: Colors.white,
                                                    child: Image.network(
                                                      _qrcode,
                                                      fit: BoxFit.fill,
                                                    ),
                                                  ),
                                                  Column(
                                                    crossAxisAlignment: CrossAxisAlignment.start,
                                                    mainAxisAlignment: MainAxisAlignment.center,
                                                    children: <Widget>[
                                                      Text(
                                                        "Scan QR code",
                                                        style: TextStyle(
                                                            color: Colors.white,
                                                            fontSize: 14.0,
                                                            fontWeight: FontWeight.bold),
                                                      ),
                                                      SizedBox(
                                                        height: 8.0,
                                                      ),
                                                      Text(
                                                        "Let your cashier\nknow you'd like to\nuse your gift card.",
                                                        style: TextStyle(
                                                            color: Colors.white,
                                                            fontSize: 12.0,
                                                            fontWeight: FontWeight.w600),
                                                      ),
                                                    ],
                                                  )
                                                ],
                                              ),
                                            ),
                                          ],
                                        ),
                                      ],
                                    ),
                                  )
                                ],
                              ),
                            ),
                          ],
                        ),
                      ),

                      // text
                      Text(
                        "Transaction",
                        style: TextStyle(
                            color: Colors.black, fontSize: 20.0, fontWeight: FontWeight.bold),
                      ),
                      SizedBox(height: 16.0),
                      Text(
                        "John ordered #04565 of \$2.45\non January 21",
                        style: TextStyle(
                            color: Colors.black, fontSize: 14.0, fontWeight: FontWeight.w600),
                      ),
                      SizedBox(
                        height: 16.0,
                        child: Text(
                          "-",
                          style: TextStyle(
                              color: Colors.grey, fontSize: 14.0, fontWeight: FontWeight.w600),
                        ),
                      ),
                      Text(
                        "Alberta reloaded card with\n\$50 on January 20",
                        style: TextStyle(
                            color: Colors.black, fontSize: 14.0, fontWeight: FontWeight.w600),
                      ),
                      SizedBox(
                        height: 16.0,
                        child: Text(
                          "-",
                          style: TextStyle(
                              color: Colors.grey, fontSize: 14.0, fontWeight: FontWeight.w600),
                        ),
                      ),
                    ],
                  )))
        ],
      ),
    );
  }
}
