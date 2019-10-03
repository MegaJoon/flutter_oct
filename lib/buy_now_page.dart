import 'package:flutter/material.dart';

class BuyNowPage extends StatefulWidget {
  @override
  _BuyNowPageState createState() => _BuyNowPageState();
}

class _BuyNowPageState extends State<BuyNowPage> {
  Color _bananaColor = Color.fromRGBO(241, 234, 52, 1);
  Color _orangeColor = Color.fromRGBO(241, 174, 12, 1);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Stack(children: <Widget>[
        _buildContainer(),
        _buildBottom(),
        _buildSafeArea(),
      ]),
    );
  }

  // bottom
  _buildBottom() {
    return Positioned(
      bottom: 0,
      left: 0,
      right: 0,
      child: Container(
        margin: EdgeInsets.only(left: 8.0),
        height: 48,
        child: Row(
          children: <Widget>[
            Text("\$ 10,00",
                style: TextStyle(
                    color: Colors.white,
                    fontSize: 20.0,
                    fontWeight: FontWeight.bold)),
            Text("(1kg)",
                style: TextStyle(color: Colors.white, fontSize: 16.0)),
            Spacer(),
            Container(
                height: 48,
                width: 130,
                decoration: BoxDecoration(
                    color: Colors.white,
                    borderRadius:
                        BorderRadius.only(topLeft: Radius.circular(16.0))),
                child: Center(
                  child: Text("Buy Now",
                      style: TextStyle(
                          color: _bananaColor,
                          fontSize: 20.0,
                          fontWeight: FontWeight.bold)),
                ))
          ],
        ),
      ),
    );
  }

  // main
  _buildContainer() {
    return Positioned(
      top: 0,
      left: 0,
      right: 0,
      bottom: 0,
      child: Container(
        color: _bananaColor,
        child: Padding(
          padding: const EdgeInsets.only(top: 48.0, left: 8.0, right: 8.0),
          child: Column(
            children: <Widget>[
              Text("Banana",
                  style: TextStyle(
                      color: Colors.white,
                      fontSize: 28.0,
                      fontWeight: FontWeight.bold)),
              Hero(
                  tag: "Banana",
                  child: Image.asset("assets/banana.png", height: 300)),
              Align(
                alignment: Alignment.centerLeft,
                child: Text("Description",
                    style: TextStyle(
                        color: Colors.white,
                        fontSize: 24.0,
                        fontWeight: FontWeight.bold)),
              ),
              SizedBox(height: 8),
              Align(
                alignment: Alignment.centerLeft,
                child: Text(
                    "aaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaa",
                    style: TextStyle(color: Colors.white, fontSize: 16.0),
                    maxLines: 5,
                    overflow: TextOverflow.ellipsis),
              ),
            ],
          ),
        ),
      ),
    );
  }

  // safearea
  _buildSafeArea() {
    return Positioned(
        top: 0,
        left: 0,
        right: 0,
        child: SafeArea(
          top: true,
          left: true,
          right: true,
          child: Container(
            height: 40,
            child: Row(
              children: <Widget>[
                IconButton(
                    onPressed: () {
                      setState(() {
                        Navigator.pop(context);
                      });
                    },
                    icon: Icon(Icons.arrow_back,
                        size: 24.0, color: Colors.white)),
                Spacer(),
                Icon(Icons.move_to_inbox, size: 24.0, color: Colors.white)
              ],
            ),
          ),
        ));
  }
}
