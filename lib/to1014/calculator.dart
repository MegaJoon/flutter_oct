import 'package:flutter/material.dart';

// https://dribbble.com/shots/7281341-Daily-UI-004-Calculator/attachments/227798?mode=media

class Calculator extends StatefulWidget {
  @override
  _CalculatorState createState() => _CalculatorState();
}

class _CalculatorState extends State<Calculator> {
  Color _color = Color.fromRGBO(112, 99, 221, 1);
  Color _color2 = Color.fromRGBO(255, 134, 247, 1);
  String inputData = "";
  String memory = "";

  @override
  Widget build(BuildContext context) {
    final screenHeight = MediaQuery.of(context).size.height;
    return Scaffold(
      body: Stack(
        children: <Widget>[
          // top
          Positioned(
            top: screenHeight * 0,
            left: 0,
            right: 0,
            bottom: screenHeight * 0.60,
            child: Container(
              padding: EdgeInsets.all(16.0),
              decoration: BoxDecoration(
                  gradient: LinearGradient(
                      colors: [_color, _color2],
                      begin: Alignment.bottomLeft,
                      end: Alignment.topRight)),
              child: Column(
                mainAxisAlignment: MainAxisAlignment.center,
                crossAxisAlignment: CrossAxisAlignment.end,
                children: <Widget>[
                  Text(inputData,
                      style: TextStyle(
                          fontFamily: 'NothingYouCouldDo',
                          color: Colors.white,
                          fontSize: 32.0)),
                  Text(memory,
                      style: TextStyle(
                          fontFamily: 'NothingYouCouldDo',
                          color: Colors.white,
                          fontSize: 84.0)),
                ],
              ),
            ),
          ),

          // botoom
          Positioned(
            top: screenHeight * 0.40,
            left: 0,
            right: 0,
            bottom: 0,
            child: Container(
              margin: EdgeInsets.all(24.0),
//              color: Colors.amber,
              child: Column(
                children: <Widget>[
                  Expanded(
                    flex: 1,
                    child: Row(
                      children: <Widget>[
                        Expanded(
                            flex: 1,
                            child: InkWell(
                              onTap: () {
                                setState(() {
                                  inputData = "";
                                  memory = "";
                                });
                              },
                              child: Container(
                                margin: EdgeInsets.all(4.0),
                                decoration: BoxDecoration(
                                    color: Colors.white,
                                    boxShadow: [
                                      BoxShadow(
                                          color: Colors.black.withOpacity(0.1),
                                          blurRadius: 4,
                                          spreadRadius: 2)
                                    ],
                                    shape: BoxShape.circle),
                                child: Center(
                                  child: Text("AC",
                                      style: TextStyle(
                                          fontFamily: "NothingYouCouldDo",
                                          fontSize: 24.0,
                                          fontWeight: FontWeight.bold,
                                          color: _color)),
                                ),
                              ),
                            )),
                        Expanded(
                            flex: 1,
                            child: InkWell(
                              onTap: () {
                                setState(() {
                                  inputData += "-";
                                });
                              },
                              child: Container(
                                margin: EdgeInsets.all(4.0),
                                decoration: BoxDecoration(
                                    color: Colors.white,
                                    boxShadow: [
                                      BoxShadow(
                                          color: Colors.black.withOpacity(0.1),
                                          blurRadius: 4,
                                          spreadRadius: 2)
                                    ],
                                    shape: BoxShape.circle),
                                child: Center(
                                  child: Text("+/-",
                                      style: TextStyle(
                                          fontFamily: "NothingYouCouldDo",
                                          fontSize: 24.0,
                                          fontWeight: FontWeight.bold,
                                          color: _color)),
                                ),
                              ),
                            )),
                        Expanded(
                            flex: 1,
                            child: InkWell(
                              onTap: () {
                                setState(() {
                                  inputData += "%";
                                });
                              },
                              child: Container(
                                margin: EdgeInsets.all(4.0),
                                decoration: BoxDecoration(
                                    color: Colors.white,
                                    boxShadow: [
                                      BoxShadow(
                                          color: Colors.black.withOpacity(0.1),
                                          blurRadius: 4,
                                          spreadRadius: 2)
                                    ],
                                    shape: BoxShape.circle),
                                child: Center(
                                  child: Text("%",
                                      style: TextStyle(
                                          fontFamily: "NothingYouCouldDo",
                                          fontSize: 24.0,
                                          fontWeight: FontWeight.bold,
                                          color: _color)),
                                ),
                              ),
                            )),
                        Expanded(
                            flex: 1,
                            child: InkWell(
                              onTap: () {
                                setState(() {
                                  inputData += "/";
                                });
                              },
                              child: Container(
                                margin: EdgeInsets.all(4.0),
                                decoration: BoxDecoration(
                                    color: Colors.white,
                                    boxShadow: [
                                      BoxShadow(
                                          color: Colors.black.withOpacity(0.1),
                                          blurRadius: 4,
                                          spreadRadius: 2)
                                    ],
                                    shape: BoxShape.circle),
                                child: Center(
                                  child: Text("/",
                                      style: TextStyle(
                                          fontFamily: "NothingYouCouldDo",
                                          fontSize: 24.0,
                                          fontWeight: FontWeight.bold,
                                          color: _color2)),
                                ),
                              ),
                            )),
                      ],
                    ),
                  ),
                  Expanded(
                    flex: 1,
                    child: Row(
                      children: <Widget>[
                        Expanded(
                            flex: 1,
                            child: InkWell(
                              onTap: () {
                                setState(() {
                                  inputData += "7";
                                });
                              },
                              child: Container(
                                margin: EdgeInsets.all(4.0),
                                decoration: BoxDecoration(
                                    color: Colors.white,
                                    boxShadow: [
                                      BoxShadow(
                                          color: Colors.black.withOpacity(0.1),
                                          blurRadius: 4,
                                          spreadRadius: 2)
                                    ],
                                    shape: BoxShape.circle),
                                child: Center(
                                  child: Text("7",
                                      style: TextStyle(
                                          fontFamily: "NothingYouCouldDo",
                                          fontSize: 24.0,
                                          fontWeight: FontWeight.bold,
                                          color: Colors.black)),
                                ),
                              ),
                            )),
                        Expanded(
                            flex: 1,
                            child: InkWell(
                              onTap: () {
                                setState(() {
                                  inputData += "8";
                                });
                              },
                              child: Container(
                                margin: EdgeInsets.all(4.0),
                                decoration: BoxDecoration(
                                    color: Colors.white,
                                    boxShadow: [
                                      BoxShadow(
                                          color: Colors.black.withOpacity(0.1),
                                          blurRadius: 4,
                                          spreadRadius: 2)
                                    ],
                                    shape: BoxShape.circle),
                                child: Center(
                                  child: Text("8",
                                      style: TextStyle(
                                          fontFamily: "NothingYouCouldDo",
                                          fontSize: 24.0,
                                          fontWeight: FontWeight.bold,
                                          color: Colors.black)),
                                ),
                              ),
                            )),
                        Expanded(
                            flex: 1,
                            child: InkWell(
                              onTap: () {
                                setState(() {
                                  inputData += "9";
                                });
                              },
                              child: Container(
                                margin: EdgeInsets.all(4.0),
                                decoration: BoxDecoration(
                                    color: Colors.white,
                                    boxShadow: [
                                      BoxShadow(
                                          color: Colors.black.withOpacity(0.1),
                                          blurRadius: 4,
                                          spreadRadius: 2)
                                    ],
                                    shape: BoxShape.circle),
                                child: Center(
                                  child: Text("9",
                                      style: TextStyle(
                                          fontFamily: "NothingYouCouldDo",
                                          fontSize: 24.0,
                                          fontWeight: FontWeight.bold,
                                          color: Colors.black)),
                                ),
                              ),
                            )),
                        Expanded(
                            flex: 1,
                            child: InkWell(
                              onTap: () {
                                setState(() {
                                  inputData += "x";
                                });
                              },
                              child: Container(
                                margin: EdgeInsets.all(4.0),
                                decoration: BoxDecoration(
                                    color: Colors.white,
                                    boxShadow: [
                                      BoxShadow(
                                          color: Colors.black.withOpacity(0.1),
                                          blurRadius: 4,
                                          spreadRadius: 2)
                                    ],
                                    shape: BoxShape.circle),
                                child: Center(
                                  child: Text("x",
                                      style: TextStyle(
                                          fontFamily: "NothingYouCouldDo",
                                          fontSize: 24.0,
                                          fontWeight: FontWeight.bold,
                                          color: _color2)),
                                ),
                              ),
                            )),
                      ],
                    ),
                  ),
                  Expanded(
                    flex: 1,
                    child: Row(
                      children: <Widget>[
                        Expanded(
                            flex: 1,
                            child: InkWell(
                              onTap: () {
                                setState(() {
                                  inputData += "4";
                                });
                              },
                              child: Container(
                                margin: EdgeInsets.all(4.0),
                                decoration: BoxDecoration(
                                    color: Colors.white,
                                    boxShadow: [
                                      BoxShadow(
                                          color: Colors.black.withOpacity(0.1),
                                          blurRadius: 4,
                                          spreadRadius: 2)
                                    ],
                                    shape: BoxShape.circle),
                                child: Center(
                                  child: Text("4",
                                      style: TextStyle(
                                          fontFamily: "NothingYouCouldDo",
                                          fontSize: 24.0,
                                          fontWeight: FontWeight.bold,
                                          color: Colors.black)),
                                ),
                              ),
                            )),
                        Expanded(
                            flex: 1,
                            child: InkWell(
                              onTap: () {
                                setState(() {
                                  inputData += "5";
                                });
                              },
                              child: Container(
                                margin: EdgeInsets.all(4.0),
                                decoration: BoxDecoration(
                                    color: Colors.white,
                                    boxShadow: [
                                      BoxShadow(
                                          color: Colors.black.withOpacity(0.1),
                                          blurRadius: 4,
                                          spreadRadius: 2)
                                    ],
                                    shape: BoxShape.circle),
                                child: Center(
                                  child: Text("5",
                                      style: TextStyle(
                                          fontFamily: "NothingYouCouldDo",
                                          fontSize: 24.0,
                                          fontWeight: FontWeight.bold,
                                          color: Colors.black)),
                                ),
                              ),
                            )),
                        Expanded(
                            flex: 1,
                            child: InkWell(
                              onTap: () {
                                setState(() {
                                  inputData += "6";
                                });
                              },
                              child: Container(
                                margin: EdgeInsets.all(4.0),
                                decoration: BoxDecoration(
                                    color: Colors.white,
                                    boxShadow: [
                                      BoxShadow(
                                          color: Colors.black.withOpacity(0.1),
                                          blurRadius: 4,
                                          spreadRadius: 2)
                                    ],
                                    shape: BoxShape.circle),
                                child: Center(
                                  child: Text("6",
                                      style: TextStyle(
                                          fontFamily: "NothingYouCouldDo",
                                          fontSize: 24.0,
                                          fontWeight: FontWeight.bold,
                                          color: Colors.black)),
                                ),
                              ),
                            )),
                        Expanded(
                            flex: 1,
                            child: InkWell(
                              onTap: () {
                                setState(() {
                                  inputData += "-";
                                });
                              },
                              child: Container(
                                margin: EdgeInsets.all(4.0),
                                decoration: BoxDecoration(
                                    color: Colors.white,
                                    boxShadow: [
                                      BoxShadow(
                                          color: Colors.black.withOpacity(0.1),
                                          blurRadius: 4,
                                          spreadRadius: 2)
                                    ],
                                    shape: BoxShape.circle),
                                child: Center(
                                  child: Text("-",
                                      style: TextStyle(
                                          fontFamily: "NothingYouCouldDo",
                                          fontSize: 24.0,
                                          fontWeight: FontWeight.bold,
                                          color: _color2)),
                                ),
                              ),
                            )),
                      ],
                    ),
                  ),
                  Expanded(
                    flex: 1,
                    child: Row(
                      children: <Widget>[
                        Expanded(
                            flex: 1,
                            child: InkWell(
                              onTap: () {
                                setState(() {
                                  inputData += "1";
                                });
                              },
                              child: Container(
                                margin: EdgeInsets.all(4.0),
                                decoration: BoxDecoration(
                                    color: Colors.white,
                                    boxShadow: [
                                      BoxShadow(
                                          color: Colors.black.withOpacity(0.1),
                                          blurRadius: 4,
                                          spreadRadius: 2)
                                    ],
                                    shape: BoxShape.circle),
                                child: Center(
                                  child: Text("1",
                                      style: TextStyle(
                                          fontFamily: "NothingYouCouldDo",
                                          fontSize: 24.0,
                                          fontWeight: FontWeight.bold,
                                          color: Colors.black)),
                                ),
                              ),
                            )),
                        Expanded(
                            flex: 1,
                            child: InkWell(
                              onTap: () {
                                setState(() {
                                  inputData += "2";
                                });
                              },
                              child: Container(
                                margin: EdgeInsets.all(4.0),
                                decoration: BoxDecoration(
                                    color: Colors.white,
                                    boxShadow: [
                                      BoxShadow(
                                          color: Colors.black.withOpacity(0.1),
                                          blurRadius: 4,
                                          spreadRadius: 2)
                                    ],
                                    shape: BoxShape.circle),
                                child: Center(
                                  child: Text("2",
                                      style: TextStyle(
                                          fontFamily: "NothingYouCouldDo",
                                          fontSize: 24.0,
                                          fontWeight: FontWeight.bold,
                                          color: Colors.black)),
                                ),
                              ),
                            )),
                        Expanded(
                            flex: 1,
                            child: InkWell(
                              onTap: () {
                                setState(() {
                                  inputData += "3";
                                });
                              },
                              child: Container(
                                margin: EdgeInsets.all(4.0),
                                decoration: BoxDecoration(
                                    color: Colors.white,
                                    boxShadow: [
                                      BoxShadow(
                                          color: Colors.black.withOpacity(0.1),
                                          blurRadius: 4,
                                          spreadRadius: 2)
                                    ],
                                    shape: BoxShape.circle),
                                child: Center(
                                  child: Text("3",
                                      style: TextStyle(
                                          fontFamily: "NothingYouCouldDo",
                                          fontSize: 24.0,
                                          fontWeight: FontWeight.bold,
                                          color: Colors.black)),
                                ),
                              ),
                            )),
                        Expanded(
                            flex: 1,
                            child: InkWell(
                              onTap: () {
                                setState(() {
                                  inputData += "+";
                                });
                              },
                              child: Container(
                                margin: EdgeInsets.all(4.0),
                                decoration: BoxDecoration(
                                    color: Colors.white,
                                    boxShadow: [
                                      BoxShadow(
                                          color: Colors.black.withOpacity(0.1),
                                          blurRadius: 4,
                                          spreadRadius: 2)
                                    ],
                                    shape: BoxShape.circle),
                                child: Center(
                                  child: Text("+",
                                      style: TextStyle(
                                          fontFamily: "NothingYouCouldDo",
                                          fontSize: 24.0,
                                          fontWeight: FontWeight.bold,
                                          color: _color2)),
                                ),
                              ),
                            )),
                      ],
                    ),
                  ),
                  Expanded(
                    flex: 1,
                    child: Row(
                      children: <Widget>[
                        Expanded(
                            flex: 1,
                            child: InkWell(
                              onTap: () {
                                setState(() {
                                  inputData += "0";
                                });
                              },
                              child: Container(
                                margin: EdgeInsets.all(4.0),
                                decoration: BoxDecoration(
                                    color: Colors.white,
                                    boxShadow: [
                                      BoxShadow(
                                          color: Colors.black.withOpacity(0.1),
                                          blurRadius: 4,
                                          spreadRadius: 2)
                                    ],
                                    shape: BoxShape.circle),
                                child: Center(
                                  child: Text("0",
                                      style: TextStyle(
                                          fontFamily: "NothingYouCouldDo",
                                          fontSize: 24.0,
                                          fontWeight: FontWeight.bold,
                                          color: Colors.black)),
                                ),
                              ),
                            )),
                        Expanded(
                            flex: 1,
                            child: InkWell(
                              onTap: () {
                                setState(() {
                                  inputData += ".";
                                });
                              },
                              child: Container(
                                margin: EdgeInsets.all(4.0),
                                decoration: BoxDecoration(
                                    color: Colors.white,
                                    boxShadow: [
                                      BoxShadow(
                                          color: Colors.black.withOpacity(0.1),
                                          blurRadius: 4,
                                          spreadRadius: 2)
                                    ],
                                    shape: BoxShape.circle),
                                child: Center(
                                  child: Text(".",
                                      style: TextStyle(
                                          fontFamily: "NothingYouCouldDo",
                                          fontSize: 24.0,
                                          fontWeight: FontWeight.bold,
                                          color: Colors.black)),
                                ),
                              ),
                            )),
                        Expanded(
                            flex: 2,
                            child: InkWell(
                              onTap: () {
                                setState(() {
                                  memory = inputData;
                                  inputData = "";
                                });
                              },
                              child: Container(
                                margin: EdgeInsets.only(left: 12.0, right: 12.0, top: 4.0, bottom: 4.0),
                                decoration: BoxDecoration(
//                                    color: Colors.white,
                                    gradient: LinearGradient(
                                        colors: [_color, _color2],
                                        begin: Alignment.centerLeft,
                                        end: Alignment.centerRight),
                                    boxShadow: [
                                      BoxShadow(
                                          color: Colors.black.withOpacity(0.1),
                                          blurRadius: 4,
                                          spreadRadius: 2)
                                    ],
                                    borderRadius: BorderRadius.circular(48.0)),
                                child: Center(
                                  child: Text("=",
                                      style: TextStyle(
                                          fontFamily: "NothingYouCouldDo",
                                          fontSize: 24.0,
                                          fontWeight: FontWeight.bold,
                                          color: Colors.white)),
                                ),
                              ),
                            )),
                      ],
                    ),
                  ),
                ],
              ),
            ),
          ),

          // middle arrow
          Positioned(
            top: screenHeight * 0.40 - 16,
            left: 140,
            right: 140,
            child: Container(
              height: 32,
              decoration: BoxDecoration(
                  color: Colors.white,
                  borderRadius: BorderRadius.circular(16.0),
                  boxShadow: [
                    BoxShadow(
                        color: Colors.black.withOpacity(0.2),
                        spreadRadius: 2,
                        blurRadius: 4)
                  ]),
              child: Icon(Icons.keyboard_arrow_up,
                  size: 36.0, color: Colors.deepPurple),
            ),
          )
        ],
      ),
    );
  }
}
