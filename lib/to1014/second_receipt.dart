import "package:flutter/material.dart";
import 'package:flutter_oct/to1014/receipt.dart';

class SecondReceipt extends StatefulWidget {
  int id;

  SecondReceipt(this.id);

  @override
  _SecondReceiptState createState() => _SecondReceiptState();
}

class _SecondReceiptState extends State<SecondReceipt> {
  Color _color = Color.fromRGBO(255, 185, 105, 1);

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
            child: Hero(
              tag: "receipt+${widget.id}",
              child: Image(
                  image: NetworkImage(receipt[widget.id].image),
                  fit: BoxFit.fill,
                  height: screenHeight * 0.37),
            ),
          ),
          Positioned(
            top: 0,
            left: 0,
            right: 0,
            bottom: screenHeight * 0.63,
            child: Padding(
              padding:
                  const EdgeInsets.only(left: 24.0, right: 24.0, bottom: 24.0),
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
                              IconButton(
                                icon: Icon(Icons.arrow_back_ios,
                                    size: 24.0, color: Colors.white),
                                onPressed: () {
                                  setState(() {
                                    Navigator.pop(context);
                                  });
                                },
                              ),
                              Spacer(),
                              Icon(Icons.save, size: 24.0, color: Colors.white),
                            ],
                          ))),
                  Spacer(),
                  Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: <Widget>[
                      Text(
                        "Amount",
                        style: TextStyle(
                            color: Colors.white,
                            fontSize: 16.0,
                            fontWeight: FontWeight.w600),
                      ),
                      Text(
                        receipt[widget.id].price,
                        style: TextStyle(
                            color: Colors.white,
                            fontSize: 48.0,
                            fontWeight: FontWeight.bold),
                      ),
                    ],
                  ),
                  //
                  Spacer(),
                  Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: <Widget>[
                      Text(
                        "Attachments",
                        style: TextStyle(
                            color: Colors.white,
                            fontSize: 16.0,
                            fontWeight: FontWeight.w600),
                      ),
                      SizedBox(height: 4.0),
                      Row(
                        children: <Widget>[
                          Container(
                            margin: EdgeInsets.only(right: 8.0),
                            height: 40,
                            width: 40,
                            decoration: BoxDecoration(
                                color: Colors.grey[500],
                                shape: BoxShape.circle),
                            child: Icon(
                              Icons.card_giftcard,
                              size: 24.0,
                              color: Colors.white,
                            ),
                          ),
                          Container(
                            margin: EdgeInsets.only(right: 8.0),
                            height: 40,
                            width: 40,
                            decoration: BoxDecoration(
                                color: Colors.grey[500],
                                shape: BoxShape.circle),
                            child: Icon(
                              Icons.code,
                              size: 24.0,
                              color: Colors.white,
                            ),
                          ),
                          Container(
                            margin: EdgeInsets.only(right: 8.0),
                            height: 40,
                            width: 40,
                            decoration: BoxDecoration(
                                color: Colors.grey[500],
                                shape: BoxShape.circle),
                            child: Icon(
                              Icons.link,
                              size: 24.0,
                              color: Colors.white,
                            ),
                          ),
                          Spacer(),
                          Container(
                            margin: EdgeInsets.only(right: 8.0),
                            height: 40,
                            width: 40,
                            decoration: BoxDecoration(
                                color: Colors.white, shape: BoxShape.circle),
                            child: Icon(
                              Icons.add,
                              size: 24.0,
                              color: Colors.black,
                            ),
                          ),
                          Container(
                            height: 40,
                            width: 40,
                            decoration: BoxDecoration(
                                color: Colors.white, shape: BoxShape.circle),
                            child: Icon(
                              Icons.file_download,
                              size: 24.0,
                              color: Colors.black,
                            ),
                          ),
                        ],
                      )
                    ],
                  ),
                ],
              ),
            ),
          ),
          Positioned(
            bottom: 0,
            left: 0,
            right: 0,
            child: Container(
              height: screenHeight * 0.65,
              decoration: BoxDecoration(
                  borderRadius: BorderRadius.only(
                      topLeft: Radius.circular(16.0),
                      topRight: Radius.circular(16.0)),
                  color: Colors.white),
              child: Padding(
                padding:
                    const EdgeInsets.only(left: 16.0, right: 16.0, top: 16.0),
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: <Widget>[
                    //
                    Text(
                      receipt[widget.id].title,
                      style: TextStyle(
                          color: Colors.black,
                          fontSize: 24.0,
                          fontWeight: FontWeight.bold),
                    ),
                    Text(
                      "Captured - Monday 27th - 12:15",
                      style: TextStyle(
                          color: Colors.black,
                          fontSize: 14.0,
                          fontWeight: FontWeight.w600),
                    ),
                    Row(
                      children: <Widget>[
                        Container(
                          height: 48.0,
                          width: 48.0,
                          decoration: BoxDecoration(
                              image: DecorationImage(
                                  image: NetworkImage(
                                      "https://cdn.pixabay.com/photo/2017/06/10/07/16/folder-2389217_960_720.png"),
                                  fit: BoxFit.fill)),
                        ),
                        Text(
                          "Project - 100888-000 Connect Live\nImplementation",
                          style: TextStyle(
                              color: Colors.indigo,
                              fontSize: 14.0,
                              fontWeight: FontWeight.bold),
                        ),
                        Spacer(),
                        Container(
                          height: 40,
                          width: 40,
                          decoration: BoxDecoration(
                              color: _color, shape: BoxShape.circle),
                          child: Icon(
                            Icons.link,
                            size: 24.0,
                            color: Colors.black,
                          ),
                        ),
                      ],
                    ),
                    Text(
                      "Title",
                      style: TextStyle(
                          color: Colors.black.withOpacity(0.7),
                          fontSize: 14.0,
                          fontWeight: FontWeight.bold),
                    ),
                    SizedBox(height: 4.0),
                    Text(
                      receipt[widget.id].title,
                      style: TextStyle(
                          color: Colors.black,
                          fontSize: 14.0,
                          fontWeight: FontWeight.bold),
                    ),
                    Divider(),
                    Text(
                      "Amount",
                      style: TextStyle(
                          color: Colors.black.withOpacity(0.7),
                          fontSize: 14.0,
                          fontWeight: FontWeight.bold),
                    ),
                    SizedBox(height: 4.0),
                    Text(
                      receipt[widget.id].price,
                      style: TextStyle(
                          color: Colors.black,
                          fontSize: 14.0,
                          fontWeight: FontWeight.bold),
                    ),
                    Divider(),
                    Text(
                      "Vat number",
                      style: TextStyle(
                          color: Colors.black.withOpacity(0.7),
                          fontSize: 14.0,
                          fontWeight: FontWeight.bold),
                    ),
                    SizedBox(height: 4.0),
                    Text(
                      "10405803",
                      style: TextStyle(
                          color: Colors.black,
                          fontSize: 14.0,
                          fontWeight: FontWeight.bold),
                    ),
                    Divider(),
                    Text(
                      "Descrption",
                      style: TextStyle(
                          color: Colors.black.withOpacity(0.7),
                          fontSize: 14.0,
                          fontWeight: FontWeight.bold),
                    ),
                    SizedBox(height: 4.0),
                    Text(
                      receipt[widget.id].content,
                      style: TextStyle(
                          color: Colors.black,
                          fontSize: 14.0,
                          fontWeight: FontWeight.bold),
                    ),
                    Divider(),
                    Text(
                      "Expense Category",
                      style: TextStyle(
                          color: Colors.black.withOpacity(0.7),
                          fontSize: 14.0,
                          fontWeight: FontWeight.bold),
                    ),
                    SizedBox(height: 4.0),
                    Row(
                      children: <Widget>[
                        Container(
                          margin: EdgeInsets.only(right: 8.0),
                          height: 20,
                          width: 80,
                          decoration: BoxDecoration(
                            color: Colors.grey[400],
                            borderRadius: BorderRadius.circular(4.0),
                          ),
                          child: Center(
                              child: Text(
                            "Vacation",
                            style: TextStyle(
                                color: Colors.black,
                                fontSize: 12.0,
                                fontWeight: FontWeight.bold),
                          )),
                        ),
                        Container(
                          margin: EdgeInsets.only(right: 8.0),
                          height: 20,
                          width: 80,
                          decoration: BoxDecoration(
                            color: Colors.grey[400],
                            borderRadius: BorderRadius.circular(4.0),
                          ),
                          child: Center(
                              child: Text(
                            "Lunch",
                            style: TextStyle(
                                color: Colors.black,
                                fontSize: 12.0,
                                fontWeight: FontWeight.bold),
                          )),
                        ),
                        Container(
                          margin: EdgeInsets.only(right: 8.0),
                          height: 20,
                          width: 80,
                          decoration: BoxDecoration(
                            color: Colors.grey[400],
                            borderRadius: BorderRadius.circular(4.0),
                          ),
                          child: Center(
                              child: Text(
                            "Meeting",
                            style: TextStyle(
                                color: Colors.black,
                                fontSize: 12.0,
                                fontWeight: FontWeight.bold),
                          )),
                        ),
                        Container(
                          margin: EdgeInsets.only(right: 8.0),
                          height: 20,
                          width: 80,
                          decoration: BoxDecoration(
                            color: Colors.grey[400],
                            borderRadius: BorderRadius.circular(4.0),
                          ),
                          child: Center(
                              child: Text(
                            "Offsite Demo",
                            style: TextStyle(
                                color: Colors.black,
                                fontSize: 12.0,
                                fontWeight: FontWeight.bold),
                          )),
                        ),
                      ],
                    ),
                    Container(
                      margin: EdgeInsets.only(top: 8.0, right: 8.0),
                      height: 20,
                      width: 80,
                      decoration: BoxDecoration(
                        color: Colors.grey[400],
                        borderRadius: BorderRadius.circular(4.0),
                      ),
                      child: Center(
                          child: Text(
                        "Business Trip",
                        style: TextStyle(
                            color: Colors.black,
                            fontSize: 12.0,
                            fontWeight: FontWeight.bold),
                      )),
                    ),
                    Container(
                      margin: EdgeInsets.only(top: 4.0),
                      height: 28,
                      width: 28,
                      decoration:
                          BoxDecoration(shape: BoxShape.circle, color: _color),
                      child: Center(
                          child:
                              Icon(Icons.add, size: 24.0, color: Colors.black)),
                    )
                  ],
                ),
              ),
            ),
          )
        ],
      ),
    ));
  }
}
