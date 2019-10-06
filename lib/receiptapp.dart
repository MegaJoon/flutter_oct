import 'package:flutter/material.dart';
import 'package:flutter_oct/receipt.dart';
import 'package:flutter_oct/second_receipt.dart';

import 'mydottedline.dart';

// https://dribbble.com/shots/7355190-Receipt-App/attachments/254360?mode=media

class ReceiptApp extends StatefulWidget {
  @override
  _ReceiptAppState createState() => _ReceiptAppState();
}

class _ReceiptAppState extends State<ReceiptApp> {
  Color _color = Color.fromRGBO(255, 185, 105, 1);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.grey[200],
      body: Row(
        children: <Widget>[
          // dotted Line
          Flexible(
            flex: 1,
            child: Stack(
              children: <Widget>[
                Positioned(
                  top: 0,
                  bottom: 0,
                  left: 25,
                  child: MyDottedline(),
                ),
                Positioned(
                  top: 200,
                  left: 0,
                  right: 0,
                  child: Container(
                    height: 60,
                    color: Colors.grey[200],
                    child: Column(
                      mainAxisAlignment: MainAxisAlignment.center,
                      children: <Widget>[
                        Text(
                          "04",
                          style: TextStyle(
                              color: _color,
                              fontSize: 32.0,
                              fontWeight: FontWeight.bold),
                        ),
                        Text(
                          "Nov",
                          style: TextStyle(
                              color: _color,
                              fontSize: 16.0,
                              fontWeight: FontWeight.bold),
                        ),
                      ],
                    ),
                  ),
                )
              ],
            ),
          ),
          // Main Column
          Flexible(
              flex: 7,
              child: Container(
                margin: EdgeInsets.only(left: 16.0),
//                color: Colors.white,
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: <Widget>[
                    SafeArea(
                      top: true,
                      left: true,
                      right: true,
                      child: Container(
                        height: 40,
                        child: Row(
                          children: <Widget>[
                            Icon(Icons.menu, size: 24.0, color: Colors.black),
                            Spacer(),
                            Icon(Icons.save, size: 24.0, color: Colors.black),
                          ],
                        ),
                      ),
                    ),
                    RichText(
                      text: TextSpan(children: [
                        TextSpan(
                            text: "Hello,\n",
                            style: TextStyle(
                                color: Colors.black,
                                fontSize: 40.0,
                                fontWeight: FontWeight.bold)),
                        TextSpan(
                            text: "Christian",
                            style:
                                TextStyle(color: Colors.black, fontSize: 40.0)),
                      ]),
                    ),
                    SizedBox(height: 16.0),
                    Text(
                      "You have 3 receipts",
                      style: TextStyle(
                          color: Colors.black,
                          fontSize: 16.0,
                          fontWeight: FontWeight.bold),
                    ),
                    // listview
                    Container(
                      margin: EdgeInsets.only(top: 30.0),
                      height: 390,
//                      padding: EdgeInsets.only(left: 0.0),
//                      color: Colors.blue,
                      child: ListView.builder(
                          padding: EdgeInsets.zero,
                          itemCount: receipt.length,
                          itemBuilder: (BuildContext context, int index) {
                            return InkWell(
                              onTap: () {
                                setState(() {
                                  Navigator.push(
                                      context,
                                      MaterialPageRoute(
                                          builder: (context) =>
                                              SecondReceipt(index)));
                                });
                              },
                              child: Container(
                                margin: EdgeInsets.only(bottom: 16.0),
                                padding: EdgeInsets.all(8.0),
                                height: 115,
                                decoration: BoxDecoration(
                                    color: Colors.white,
                                    boxShadow: [
                                      BoxShadow(
                                          color: Colors.black.withOpacity(0.1),
                                          blurRadius: 4,
                                          spreadRadius: 2)
                                    ]),
                                child: Column(
                                  crossAxisAlignment: CrossAxisAlignment.start,
                                  children: <Widget>[
                                    Text(
                                      receipt[index].title,
                                      style: TextStyle(
                                          color: Colors.black,
                                          fontSize: 20.0,
                                          fontWeight: FontWeight.w600),
                                    ),
                                    Container(
                                      margin: EdgeInsets.only(top: 4.0),
                                      height: 72,
                                      width: double.maxFinite,
                                      child: Row(
                                        children: <Widget>[
                                          Flexible(
                                            flex: 3,
                                            child: Column(
                                              children: <Widget>[
                                                Hero(
                                                    tag: "receipt+$index",
                                                    child: Image(
                                                        image: NetworkImage(
                                                            receipt[index]
                                                                .image),
                                                        fit: BoxFit.fill,
                                                        height: 52,
                                                        width: 52)),
//                                                Container(
//                                                  height: 52,
//                                                  width: 52,
//                                                  decoration: BoxDecoration(
//                                                      borderRadius: BorderRadius.circular(4.0),),
//                                                ),
                                                Text(
                                                  "£" + receipt[index].price,
                                                  style: TextStyle(
                                                      color: Colors.indigo,
                                                      fontSize: 16.0,
                                                      fontWeight:
                                                          FontWeight.bold),
                                                )
                                              ],
                                            ),
                                          ),
                                          SizedBox(width: 8.0),
                                          Flexible(
                                            flex: 7,
                                            child: Column(
                                              crossAxisAlignment:
                                                  CrossAxisAlignment.start,
                                              mainAxisAlignment:
                                                  MainAxisAlignment
                                                      .spaceBetween,
                                              children: <Widget>[
                                                Row(
                                                  children: <Widget>[
                                                    Container(
                                                      margin: EdgeInsets.only(
                                                          right: 8.0),
                                                      height: 16,
                                                      width: 52,
                                                      decoration: BoxDecoration(
                                                          color:
                                                              Colors.grey[400],
                                                          borderRadius:
                                                              BorderRadius
                                                                  .circular(
                                                                      4.0)),
                                                      child: Center(
                                                        child: Text(
                                                          receipt[index].tag,
                                                          style: TextStyle(
                                                              color:
                                                                  Colors.black,
                                                              fontSize: 10.0,
                                                              fontWeight:
                                                                  FontWeight
                                                                      .bold),
                                                        ),
                                                      ),
                                                    ),
                                                    Container(
                                                      height: 16,
                                                      width: 52,
                                                      decoration: BoxDecoration(
                                                          color:
                                                              Colors.grey[400],
                                                          borderRadius:
                                                              BorderRadius
                                                                  .circular(
                                                                      4.0)),
                                                      child: Center(
                                                        child: Text(
                                                          receipt[index].tag2,
                                                          style: TextStyle(
                                                              color:
                                                                  Colors.black,
                                                              fontSize: 10.0,
                                                              fontWeight:
                                                                  FontWeight
                                                                      .bold),
                                                        ),
                                                      ),
                                                    )
                                                  ],
                                                ),
                                                Text(
                                                  receipt[index].content,
                                                  style: TextStyle(
                                                      color: Colors.black,
                                                      fontSize: 10.0,
                                                      fontWeight:
                                                          FontWeight.bold),
                                                ),
                                                receipt[index].allocated
                                                    ? Row(
                                                        children: <Widget>[
                                                          Icon(
                                                            Icons
                                                                .check_circle_outline,
                                                            size: 20.0,
                                                            color: _color,
                                                          ),
                                                          SizedBox(width: 4.0),
                                                          Text(
                                                            "Allocated",
                                                            style: TextStyle(
                                                                color: _color,
                                                                fontSize: 16.0,
                                                                fontWeight:
                                                                    FontWeight
                                                                        .bold),
                                                          )
                                                        ],
                                                      )
                                                    : Row(
                                                        children: <Widget>[
                                                          Icon(
                                                            Icons.remove_circle,
                                                            size: 20.0,
                                                            color: Colors
                                                                .grey[300],
                                                          ),
                                                          SizedBox(width: 4.0),
                                                          Text(
                                                            "Unallocated",
                                                            style: TextStyle(
                                                                color: Colors
                                                                    .grey[300],
                                                                fontSize: 16.0,
                                                                fontWeight:
                                                                    FontWeight
                                                                        .bold),
                                                          )
                                                        ],
                                                      )
                                              ],
                                            ),
                                          ),
                                        ],
                                      ),
                                    )
                                  ],
                                ),
                              ),
                            );
                          }),
                    ),
                    Container(
                      margin: EdgeInsets.all(8.0),
                      height: 48,
                      width: 48,
                      decoration: BoxDecoration(
                          shape: BoxShape.circle,
                          color: _color,
                          boxShadow: [
                            BoxShadow(
                                color: _color.withOpacity(0.5),
                                spreadRadius: 2,
                                blurRadius: 4)
                          ]),
                      child: Icon(Icons.add, size: 40.0, color: Colors.black),
                    )
                  ],
                ),
              )),
        ],
      ),
    );
  }
}
