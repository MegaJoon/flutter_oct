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
      body: pages[_currentIndex],
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
      Placeholder(),
      Column(
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
          ),
          SizedBox(
            height: 24.0,
          ),
          Padding(
            padding: const EdgeInsets.symmetric(horizontal: 24.0),
            child: Row(
              crossAxisAlignment: CrossAxisAlignment.center,
              children: <Widget>[
                Text(
                  "Hot activity",
                  style: TextStyle(
                      color: Colors.black,
                      fontSize: 40.0,
                      fontWeight: FontWeight.bold),
                ),
                Spacer(),
                Icon(
                  Icons.menu,
                  size: 20.0,
                  color: Colors.black,
                ),
              ],
            ),
          ),
          Container(
            height: 420.0,
//            color: Colors.black,
            child: PageView.builder(
                physics: BouncingScrollPhysics(),
                itemBuilder: (BuildContext context, int index) {
                  return Container(
                    margin: EdgeInsets.only(right: 24.0),
                    width: 200.0,
                    color: Colors.redAccent,
                  );
                }),
          )
        ],
      ),
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

class CardList {
  String location;
  String image;
  String reviewScore;
  String title;
  String subtitle;
  String price;
  String price2;

  CardList(
      {this.location,
      this.image,
      this.reviewScore,
      this.title,
      this.subtitle,
      this.price,
      this.price2});
}

List<CardList> cardList = [
  CardList(
      location: "Chengedu",
      image:
          "https://cdn.pixabay.com/photo/2019/09/23/14/34/nyc-4498752__340.jpg",
      reviewScore: "4.7",
      title: "Chengdu: Hotpot, Tea &\nMarket Experience",
      subtitle: "Dorastor 3 Hourts(approx)",
      price: "\$55.00",
      price2: "per"),
  CardList(
      location: "Chengedu",
      image:
          "https://cdn.pixabay.com/photo/2019/09/04/02/52/road-4450611__340.jpg",
      reviewScore: "4.7",
      title: "Chengdu: Hotpot, Tea &\nMarket Experience",
      subtitle: "Dorastor 3 Hourts(approx)",
      price: "\$55.00",
      price2: "per"),
  CardList(
      location: "Chengedu",
      image:
          "https://cdn.pixabay.com/photo/2017/07/04/09/06/landscape-2470398__340.jpg",
      reviewScore: "4.7",
      title: "Chengdu: Hotpot, Tea &\nMarket Experience",
      subtitle: "Dorastor 3 Hourts(approx)",
      price: "\$55.00",
      price2: "per"),
];
