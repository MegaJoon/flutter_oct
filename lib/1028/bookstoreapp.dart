import 'package:flutter/material.dart';
import 'package:flutter_oct/1023/myTab.dart';

import 'booklist.dart';

// https://dribbble.com/shots/7831562-Debut-Shot-Book-Store-App/attachments/472846?mode=media

class BookStoreApp extends StatefulWidget {
  @override
  _BookStoreAppState createState() => _BookStoreAppState();
}

class _BookStoreAppState extends State<BookStoreApp> {
  List<Widget> pages;

  Color _backgroundColor = Color.fromRGBO(254, 251, 240, 1);
  Color _color = Color.fromRGBO(94, 141, 152, 1);

  int currentIndex = 4;

  void _onClicked(int idx) {
    setState(() {
      currentIndex = idx;
    });
  }

  @override
  Widget build(BuildContext context) {
    _definePages();

    return Scaffold(
      body: Stack(
        children: <Widget>[
          // vertical tabbar
          Positioned(
            top: 0,
            left: 0,
            bottom: 0,
            child: Container(
              color: _backgroundColor,
              width: 100.0,
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.center,
                mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                children: <Widget>[
                  Flexible(
                    flex: 2,
                    child: Icon(
                      Icons.search,
                      size: 28.0,
                      color: Colors.black,
                    ),
                  ),
                  Flexible(
                    flex: 8,
                    child: Padding(
                      padding: const EdgeInsets.only(bottom: 32.0),
                      child: Column(
                        crossAxisAlignment: CrossAxisAlignment.center,
                        mainAxisAlignment: MainAxisAlignment.spaceBetween,
                        children: <Widget>[
                          MyTab(
                            title: "See all",
                            color: Colors.black,
                            isSelected: currentIndex == 0,
                            onClicked: () {
                              _onClicked(0);
                            },
                          ),
                          MyTab(
                            title: "History",
                            color: Colors.deepOrange,
                            isSelected: currentIndex == 1,
                            onClicked: () {
                              _onClicked(1);
                            },
                          ),
                          MyTab(
                            title: "Biography",
                            color: Colors.amber,
                            isSelected: currentIndex == 2,
                            onClicked: () {
                              _onClicked(2);
                            },
                          ),
                          MyTab(
                            title: "Fiction",
                            color: Colors.indigo,
                            isSelected: currentIndex == 3,
                            onClicked: () {
                              _onClicked(3);
                            },
                          ),
                          MyTab(
                            title: "Children's",
                            color: Colors.green,
                            isSelected: currentIndex == 4,
                            onClicked: () {
                              _onClicked(4);
                            },
                          ),
                        ],
                      ),
                    ),
                  ),
                ],
              ),
            ),
          ),

          // main container
          Positioned(
            top: 0,
            left: 100,
            right: 0,
            bottom: 0,
            child: pages[currentIndex],
          )
        ],
      ),
    );
  }

  _definePages() {
    pages = [
      Placeholder(
        color: Colors.red,
      ),
      Placeholder(
        color: Colors.amber,
      ),
      Placeholder(
        color: Colors.green,
      ),
      Placeholder(
        color: Colors.black45,
      ),
      // currentIndex == 4;
      SingleChildScrollView(
        scrollDirection: Axis.vertical,
        child: SingleChildScrollView(
          scrollDirection: Axis.horizontal,
          child: Padding(
            padding: const EdgeInsets.only(left: 24.0),
            child: SafeArea(
              top: true,
              left: true,
              right: true,
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                mainAxisAlignment: MainAxisAlignment.start,
                children: <Widget>[
                  // title
                  Text(
                    "Children's",
                    style: TextStyle(
                      color: _color,
                      fontSize: 36.0,
                      fontWeight: FontWeight.bold,
                    ),
                  ),
                  Row(
                    children: <Widget>[
                      Text(
                        "Fiction",
                        style: TextStyle(
                          color: _color,
                          fontSize: 36.0,
                          fontWeight: FontWeight.bold,
                        ),
                      ),
                      Icon(
                        Icons.keyboard_arrow_down,
                        size: 28.0,
                        color: _color,
                      ),
                    ],
                  ),

                  // gridview
                  Container(
                    margin: EdgeInsets.only(top: 16.0),
                    height: MediaQuery.of(context).size.height,
                    width: MediaQuery.of(context).size.width,
                    child: GridView.builder(
                      itemCount: bookList.length,
                      gridDelegate: SliverGridDelegateWithFixedCrossAxisCount(
                          crossAxisCount: 2, crossAxisSpacing: 32.0, mainAxisSpacing: 32.0, childAspectRatio: 1.2 / 1.5),
                      itemBuilder: (BuildContext context, int index) {
                        return Container(
                          child: Column(
                            children: <Widget>[
                              // image
                              Flexible(
                                flex: 8,
                                child: Container(
                                  decoration: BoxDecoration(
                                      borderRadius: BorderRadius.circular(8.0),
                                      image: DecorationImage(image: AssetImage(bookList[index].image), fit: BoxFit.fill)),
                                ),
                              ),
                              // text
                              Flexible(
                                flex: 2,
                                child: Column(
                                  crossAxisAlignment: CrossAxisAlignment.start,
                                  mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                                  children: <Widget>[
                                    Text(
                                      bookList[index].title,
                                      style: TextStyle(color: _color, fontSize: 16.0, fontWeight: FontWeight.bold),
                                    ),
                                    Row(
                                      children: <Widget>[
                                        Text(
                                          bookList[index].author,
                                          style: TextStyle(color: _color, fontSize: 12.0, fontWeight: FontWeight.w600),
                                        ),
                                        Spacer(),
                                        Container(
                                          height: 16.0,
                                          width: 6.0,
                                          alignment: Alignment.topLeft,
                                          child: Text(
                                            "\$",
                                            style: TextStyle(fontSize: 8.0, color: _color, fontWeight: FontWeight.bold),
                                          ),
                                        ),
                                        Text(
                                          bookList[index].price,
                                          style: TextStyle(color: _color, fontSize: 12.0, fontWeight: FontWeight.w600),
                                        ),
                                      ],
                                    ),
                                  ],
                                ),
                              )
                            ],
                          ),
                        );
                      },
                    ),
                  ),
                ],
              ),
            ),
          ),
        ),
      ),
    ];
  }
}
