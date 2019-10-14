import 'package:flutter/material.dart';

// https://dribbble.com/shots/7476286-Mobile-online-reservation

class Reservation extends StatefulWidget {
  @override
  _ReservationState createState() => _ReservationState();
}

class _ReservationState extends State<Reservation> {
  int _currentIndex = 0;
  List<Widget> pages;

  // bottombar
  Widget _buildItem(BottomItem item, bool isSelected) {
    return Container(
      height: 32.0,
      width: isSelected ? 120.0 : 50.0,
      decoration: isSelected
          ? ShapeDecoration(shape: StadiumBorder(), color: Colors.grey[300])
          : null,
      child: Row(
        mainAxisAlignment: MainAxisAlignment.center,
        crossAxisAlignment: CrossAxisAlignment.center,
        children: <Widget>[
          IconTheme(
              data: IconThemeData(
                  size: 20.0,
                  color: isSelected ? Colors.black : Colors.grey[500]),
              child: item.icon),
          SizedBox(width: 4.0),
          DefaultTextStyle.merge(
              style: TextStyle(
                  color: Colors.black,
                  fontSize: 12.0,
                  fontWeight: FontWeight.w500),
              child: isSelected ? item.text : Container())
        ],
      ),
    );
  }

  @override
  Widget build(BuildContext context) {
    _definePages();

    return Scaffold(
      backgroundColor: Colors.grey[300],
      body: Column(
        children: <Widget>[
          SafeArea(
            top: true,
            left: true,
            right: true,
            child: Container(
              margin: EdgeInsets.symmetric(horizontal: 24.0),
              height: 40.0,
              decoration: BoxDecoration(
                  color: Colors.white,
                  borderRadius: BorderRadius.circular(8.0)),
              child: TextField(
                decoration: InputDecoration(
                    border: InputBorder.none,
                    prefixIcon: Icon(
                      Icons.search,
                      size: 20.0,
                      color: Colors.grey[300],
                    ),
                    hintText: "Search the tour you like",
                    hintStyle: TextStyle(
                        color: Colors.grey[300],
                        fontSize: 16.0,
                        fontWeight: FontWeight.w600)),
              ),
            ),
          )
        ],
      ),
      // bottombar
      bottomNavigationBar: Container(
        margin: EdgeInsets.symmetric(horizontal: 24.0),
        height: 52.0,
        child: Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: bottomItem.map((item) {
              int itemIndex = bottomItem.indexOf(item);
              return GestureDetector(
                onTap: () {
                  setState(() {
                    _currentIndex = itemIndex;
                    print("_currentIndex = $_currentIndex");
                  });
                },
                child: _buildItem(item, _currentIndex == itemIndex),
              );
            }).toList()),
      ),
    );
  }

  _definePages() {
    pages = [
      Placeholder(
        color: Colors.redAccent,
      ),
      Placeholder(),
      Placeholder(
        color: Colors.redAccent,
      ),
      Placeholder(),
    ];
  }
}

class BottomItem {
  Icon icon;
  Text text;

  BottomItem({this.icon, this.text});
}

List<BottomItem> bottomItem = [
  BottomItem(icon: Icon(Icons.local_airport), text: Text("location")),
  BottomItem(icon: Icon(Icons.check_circle), text: Text("Discover")),
  BottomItem(icon: Icon(Icons.mail_outline), text: Text("Mail")),
  BottomItem(icon: Icon(Icons.settings), text: Text("Setting")),
];
