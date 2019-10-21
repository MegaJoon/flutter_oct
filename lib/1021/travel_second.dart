import 'package:flutter/material.dart';

class TravelSecond extends StatefulWidget {
  int tag;

  TravelSecond(this.tag);

  @override
  _TravelSecondState createState() => _TravelSecondState();
}

class _TravelSecondState extends State<TravelSecond> with TickerProviderStateMixin {
  String _image1 = "https://cdn.pixabay.com/photo/2016/11/08/05/26/woman-1807533__340.jpg";
  String _image2 = "https://cdn.pixabay.com/photo/2016/10/17/07/53/busan-night-scene-1747130__340.jpg";

  int _currentIndex = 0;

  TabController _tabController;

  selectedItem(int index) {
    if (index == 1) {
      return _image1;
    } else
      return _image2;
  }

  @override
  void initState() {
    // TODO: implement initState
    super.initState();
    _tabController = TabController(length: 5, vsync: this);
  }

  @override
  Widget build(BuildContext context) {
    final screenHeight = MediaQuery.of(context).size.height;

    return Scaffold(
      body: Stack(
        children: <Widget>[
          Positioned(
            top: 0,
            left: 0,
            right: 0,
            bottom: screenHeight * 0.20,
            child: Hero(
              tag: widget.tag,
              child: Container(
                padding: EdgeInsets.only(left: 16.0, bottom: 28.0),
                decoration:
                    BoxDecoration(image: DecorationImage(image: NetworkImage(selectedItem(widget.tag)), fit: BoxFit.fill)),
                child: Column(
                  children: <Widget>[
                    SafeArea(
                      top: true,
                      left: true,
                      right: true,
                      child: Container(
                        height: 32.0,
                        alignment: Alignment.centerLeft,
                        child: IconButton(
                          icon: Icon(
                            Icons.remove_circle,
                            size: 28.0,
                            color: Colors.white,
                          ),
                          onPressed: () {
                            setState(() {
                              Navigator.pop(context);
                            });
                          },
                        ),
                      ),
                    ),
                    Spacer(),
                    Padding(
                      padding: EdgeInsets.only(right: 16.0),
                      child: Text(
                        "Browsing prices in",
                        style: TextStyle(color: Colors.white, fontSize: 24.0, fontWeight: FontWeight.w300),
                      ),
                    ),
                    Padding(
                      padding: EdgeInsets.only(right: 16.0),
                      child: Text(
                        "Thailand",
                        style: TextStyle(color: Colors.white, fontSize: 56.0, fontWeight: FontWeight.bold),
                      ),
                    ),
                    Container(
                      margin: EdgeInsets.only(right: 16.0),
                      height: 40.0,
                      width: 120.0,
                      decoration: ShapeDecoration(
                        shape: StadiumBorder(),
                        color: Colors.grey,
                      ),
                      child: Center(
                        child: Row(
                          mainAxisAlignment: MainAxisAlignment.center,
                          children: <Widget>[
                            Text(
                              "Bangkok",
                              style: TextStyle(color: Colors.white, fontSize: 16.0, fontWeight: FontWeight.bold),
                            ),
                            Icon(
                              Icons.arrow_drop_down,
                              size: 24.0,
                              color: Colors.white,
                            ),
                          ],
                        ),
                      ),
                    ),
                    Spacer(),
                    Container(
                      height: 32.0,
                      child: TabBar(
                          controller: _tabController,
                          isScrollable: true,
                          unselectedLabelColor: Colors.grey,
                          unselectedLabelStyle: TextStyle(fontWeight: FontWeight.w600, fontSize: 16.0),
                          labelColor: Colors.white,
                          labelStyle: TextStyle(fontSize: 16.0, fontWeight: FontWeight.w600),
                          indicatorSize: TabBarIndicatorSize.label,
                          indicatorColor: Colors.lightBlueAccent,
                          tabs: [
                            Tab(
                              text: "All",
                            ),
                            Tab(
                              text: "Food & Drink",
                            ),
                            Tab(
                              text: "Travel",
                            ),
                            Tab(
                              text: "Accomadation",
                            ),
                            Tab(
                              text: "Accomadation",
                            ),
                          ]),
                    )
                  ],
                ),
              ),
            ),
          ),
          Positioned(
            top: screenHeight * 0.68,
            left: 0,
            right: 0,
            bottom: 0,
            child: Container(
              decoration: BoxDecoration(
                  borderRadius: BorderRadius.only(topLeft: Radius.circular(32.0), topRight: Radius.circular(32.0)),
                  color: Colors.white),
              child: TabBarView(controller: _tabController, children: [
                Container(
                  padding: EdgeInsets.only(top: 16.0, left: 16.0, right: 16.0),
                  height: 300.0,
                  child: ListView.builder(
                      padding: EdgeInsets.zero,
                      itemCount: itemlist.length,
                      itemBuilder: (BuildContext context, int index) {
                        return Column(
                          children: <Widget>[
                            Container(
                              height: 80.0,
                              child: Row(
                                children: <Widget>[
                                  Container(
                                    margin: EdgeInsets.only(right: 16.0),
                                    width: 120.0,
                                    decoration: BoxDecoration(
                                        borderRadius: BorderRadius.circular(8.0),
                                        image: DecorationImage(image: NetworkImage(itemlist[index].image), fit: BoxFit.fill)),
                                  ),
                                  Column(
                                    crossAxisAlignment: CrossAxisAlignment.start,
                                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                                    children: <Widget>[
                                      Text(
                                        itemlist[index].ticket,
                                        style: TextStyle(color: Colors.grey, fontSize: 14.0, fontWeight: FontWeight.w600),
                                      ),
                                      Text(
                                        itemlist[index].name,
                                        style: TextStyle(color: Colors.black, fontSize: 14.0, fontWeight: FontWeight.w600),
                                      ),
                                      RichText(
                                        text: TextSpan(children: [
                                          TextSpan(
                                              text: itemlist[index].price,
                                              style: TextStyle(color: Colors.grey, fontSize: 18.0, fontWeight: FontWeight.w600)),
                                          TextSpan(text: "    "),
                                          TextSpan(
                                              text: itemlist[index].price2,
                                              style: TextStyle(color: Colors.black, fontSize: 18.0, fontWeight: FontWeight.w600)),
                                        ]),
                                      )
                                    ],
                                  )
                                ],
                              ),
                            ),
                            Divider(),
                          ],
                        );
                      }),
                ),
                Placeholder(),
                Placeholder(),
                Placeholder(),
                Placeholder(),
              ]),
            ),
          ),
        ],
      ),
      bottomNavigationBar: BottomNavigationBar(
          currentIndex: _currentIndex,
          onTap: (selectedItem) {
            setState(() {
              _currentIndex = selectedItem;
            });
          },
          showSelectedLabels: false,
          showUnselectedLabels: false,
          selectedItemColor: Colors.black,
          unselectedItemColor: Colors.grey,
          items: [
            BottomNavigationBarItem(
              icon: Icon(Icons.remove_circle),
              activeIcon: Icon(Icons.check_circle),
              title: Text(""),
            ),
            BottomNavigationBarItem(
              icon: Icon(Icons.search),
              activeIcon: Icon(Icons.youtube_searched_for),
              title: Text(""),
            ),
            BottomNavigationBarItem(
              icon: Icon(Icons.zoom_out_map),
              activeIcon: Icon(Icons.map),
              title: Text(""),
            ),
            BottomNavigationBarItem(
              icon: Icon(Icons.watch),
              activeIcon: Icon(Icons.watch_later),
              title: Text(""),
            ),
          ]),
    );
  }
}

class Itemlist {
  String image;
  String ticket;
  String name;
  String price;
  String price2;

  Itemlist({this.image, this.ticket, this.name, this.price, this.price2});
}

List<Itemlist> itemlist = [
  Itemlist(
    image: "https://cdn.pixabay.com/photo/2018/05/13/14/30/damyang-3396598__340.jpg",
    ticket: "Ticket",
    name: "Erawan National Park\nAdmission",
    price: "\$500",
    price2: "AUD \$2.50",
  ),
  Itemlist(
    image: "https://cdn.pixabay.com/photo/2014/11/25/14/55/noodles-545259__340.jpg",
    ticket: "Average",
    name: "Traditional Street Meal -\nPad Thai",
    price: "\$920",
    price2: "AUD \$8.40",
  ),
  Itemlist(
    image: "https://cdn.pixabay.com/photo/2018/05/13/14/30/damyang-3396598__340.jpg",
    ticket: "Ticket",
    name: "Erawan National Park\nAdmission",
    price: "\$500",
    price2: "AUD \$2.50",
  ),
  Itemlist(
    image: "https://cdn.pixabay.com/photo/2014/11/25/14/55/noodles-545259__340.jpg",
    ticket: "Average",
    name: "Traditional Street Meal -\nPad Thai",
    price: "\$920",
    price2: "AUD \$8.40",
  ),
];
