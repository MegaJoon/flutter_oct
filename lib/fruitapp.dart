import 'package:flutter/material.dart';

import 'buy_now_page.dart';

// https://dribbble.com/shots/7239391-fruit-app

class FruitApp extends StatefulWidget {
  @override
  _FruitAppState createState() => _FruitAppState();
}

class _FruitAppState extends State<FruitApp> {
  Color _bananaColor = Color.fromRGBO(241, 234, 52, 1);
  Color _orangeColor = Color.fromRGBO(241, 174, 12, 1);

  @override
  Widget build(BuildContext context) {
    final screenWidth = MediaQuery.of(context).size.width;
    return Scaffold(
      body: Padding(
        padding: const EdgeInsets.only(left: 8.0),
        child: Column(
          mainAxisAlignment: MainAxisAlignment.start,
          crossAxisAlignment: CrossAxisAlignment.start,
          children: <Widget>[
            // SafeArea
            _buildSafeArea(),
            // title
            Text("All Fruits",
                style: TextStyle(
                    color: Colors.black,
                    fontSize: 24.0,
                    fontWeight: FontWeight.w600)),
            // banana
            _buildListContainer(),
            // recipe
            _buildRecipeList()
          ],
        ),
      ),
    );
  }

  _buildSafeArea() {
    return SafeArea(
      top: true,
      left: true,
      right: true,
      child: Container(
        height: 40,
        width: double.infinity,
        child: Row(
          children: <Widget>[
            Icon(Icons.menu, size: 24.0, color: Colors.grey),
            Spacer(),
            Container(
              width: 80,
              child: Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: <Widget>[
                  Icon(Icons.favorite_border, size: 24.0, color: Colors.grey),
                  Icon(Icons.move_to_inbox, size: 24.0, color: Colors.grey),
                ],
              ),
            )
          ],
        ),
      ),
    );
  }

  // banana
  _buildListContainer() {
    return Container(
      margin: EdgeInsets.only(top: 64.0, bottom: 40.0),
      height: 330,
      width: double.infinity,
//      color: Colors.deepPurple,
      child: ListView(
        scrollDirection: Axis.horizontal,
        children: <Widget>[
          // banana Container
          InkWell(
            onTap: (){
              setState(() {
                Navigator.push(context, MaterialPageRoute(builder: (context) => BuyNowPage()));
              });
            },
            child: Container(
              margin: EdgeInsets.only(right: 24.0),
              height: 330,
              width: 300,
              decoration: BoxDecoration(
                  color: _bananaColor, borderRadius: BorderRadius.circular(32.0)),
              child: Padding(
                padding: const EdgeInsets.all(16.0),
                child: Column(
                  children: <Widget>[
                    Row(
                      children: <Widget>[
                        Text("Banana",
                            style: TextStyle(
                                color: Colors.white,
                                fontWeight: FontWeight.bold,
                                fontSize: 20.0)),
                        Spacer(),
                        Text("\$10,00",
                            style: TextStyle(
                                color: Colors.white,
                                fontWeight: FontWeight.bold,
                                fontSize: 20.0)),
                        Text("(1kg)",
                            style:
                                TextStyle(color: Colors.white, fontSize: 16.0)),
                      ],
                    ),
                    Container(
                        height: 200,
                        child: Hero(
                          tag: "Banana",
                          child: Image(
                              image: AssetImage("assets/banana.png"),
                              fit: BoxFit.contain),
                        )),
                    Container(
                      margin: EdgeInsets.only(bottom: 16.0),
                      height: 24,
                      width: 80,
                      decoration: BoxDecoration(
                          border: Border.all(color: Colors.white, width: 1),
                          borderRadius: BorderRadius.circular(24.0)),
                      child: Center(
                          child: Text("Banana",
                              style: TextStyle(
                                  color: Colors.white, fontSize: 12.0))),
                    ),
                    Container(
                        height: 32,
                        width: 140,
                        decoration: BoxDecoration(
                            color: Colors.black.withOpacity(0.2),
                            borderRadius: BorderRadius.circular(24.0)),
                        child: Center(
                            child: Text("Add to cart",
                                style: TextStyle(
                                    color: Colors.white,
                                    fontSize: 16.0,
                                    fontWeight: FontWeight.bold)))),
                  ],
                ),
              ),
            ),
          ),
          // orange container
          Container(
            margin: EdgeInsets.only(right: 24.0),
            height: 330,
            width: 300,
            decoration: BoxDecoration(
                color: _orangeColor, borderRadius: BorderRadius.circular(32.0)),
            child: Padding(
              padding: const EdgeInsets.all(16.0),
              child: Column(
                children: <Widget>[
                  Row(
                    children: <Widget>[
                      Text("Orange",
                          style: TextStyle(
                              color: Colors.white,
                              fontWeight: FontWeight.bold,
                              fontSize: 20.0)),
                      Spacer(),
                      Text("\$10,00",
                          style: TextStyle(
                              color: Colors.white,
                              fontWeight: FontWeight.bold,
                              fontSize: 20.0)),
                      Text("(1kg)",
                          style:
                              TextStyle(color: Colors.white, fontSize: 16.0)),
                    ],
                  ),
                  Container(
                      height: 200,
                      child: Image(
                          image: AssetImage("assets/orange.png"),
                          fit: BoxFit.contain)),
                  Container(
                    margin: EdgeInsets.only(bottom: 16.0),
                    height: 24,
                    width: 80,
                    decoration: BoxDecoration(
                        border: Border.all(color: Colors.white, width: 1),
                        borderRadius: BorderRadius.circular(24.0)),
                    child: Center(
                        child: Text("Orange",
                            style: TextStyle(
                                color: Colors.white, fontSize: 12.0))),
                  ),
                  Container(
                      height: 32,
                      width: 140,
                      decoration: BoxDecoration(
                          color: Colors.black.withOpacity(0.2),
                          borderRadius: BorderRadius.circular(24.0)),
                      child: Center(
                          child: Text("Add to cart",
                              style: TextStyle(
                                  color: Colors.white,
                                  fontSize: 16.0,
                                  fontWeight: FontWeight.bold)))),
                ],
              ),
            ),
          ),
        ],
      ),
    );
  }

  // recipe
  _buildRecipeList() {
    return Container(
      padding: EdgeInsets.zero,
      height: 140,
      width: double.infinity,
//      color: Colors.amber,
      child: Stack(
        children: <Widget>[
          // Recipe text
          Positioned(
            top: 50,
            left: -20,
            child: Transform.rotate(
                angle: -1.58,
                child: Text("Recipe",
                    style: TextStyle(
                        color: Colors.black,
                        fontSize: 24.0,
                        fontWeight: FontWeight.bold))),
          ),
          // listview
          Container(
            margin: EdgeInsets.only(left: 48),
            height: 140,
            width: double.infinity,
            child: ListView(
              scrollDirection: Axis.horizontal,
              children: <Widget>[
                Container(
                    margin: EdgeInsets.only(right: 24.0),
                    height: 140,
                    width: 110,
                    child: Column(
                      children: <Widget>[
                        Container(
                          margin: EdgeInsets.only(bottom: 4.0),
                            height: 110,
                            width: 110,
                            decoration: BoxDecoration(
                                borderRadius: BorderRadius.circular(16.0),
                                image: DecorationImage(
                                    image: AssetImage("assets/salad1.jpg"),
                                    fit: BoxFit.cover))),
                        Text("Banana Salad", style: TextStyle(color: Colors.black, fontSize: 14.0))
                      ],
                    )),
                Container(
                    margin: EdgeInsets.only(right: 24.0),
                    height: 140,
                    width: 110,
                    child: Column(
                      children: <Widget>[
                        Container(
                          margin: EdgeInsets.only(bottom: 4.0),
                            height: 110,
                            width: 110,
                            decoration: BoxDecoration(
                                borderRadius: BorderRadius.circular(16.0),
                                image: DecorationImage(
                                    image: AssetImage("assets/salad2.jpg"),
                                    fit: BoxFit.cover))),
                        Text("Mix Fruit Salad", style: TextStyle(color: Colors.black, fontSize: 14.0))
                      ],
                    )),
                Container(
                    margin: EdgeInsets.only(right: 24.0),
                    height: 140,
                    width: 110,
                    child: Column(
                      children: <Widget>[
                        Container(
                          margin: EdgeInsets.only(bottom: 4.0),
                            height: 110,
                            width: 110,
                            decoration: BoxDecoration(
                                borderRadius: BorderRadius.circular(16.0),
                                image: DecorationImage(
                                    image: AssetImage("assets/salad3.jpg"),
                                    fit: BoxFit.cover))),
                        Text("Vegetable Salad", style: TextStyle(color: Colors.black, fontSize: 14.0))
                      ],
                    )),
              ],
            ),
          )
        ],
      ),
    );
  }
}
