import 'package:flutter/material.dart';

// https://dribbble.com/shots/7476286-Mobile-online-reservation

class Reservation extends StatefulWidget {
  @override
  _ReservationState createState() => _ReservationState();
}

class _ReservationState extends State<Reservation> {
  int _currentIndex = 0;

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
    return Scaffold(
      body: Container(
        child: Placeholder(),
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
