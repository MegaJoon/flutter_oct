import 'package:flutter/material.dart';
import 'package:scrollable_bottom_sheet/scrollable_bottom_sheet.dart';
import 'package:scrollable_bottom_sheet/scrollable_controller.dart';

// https://dribbble.com/shots/6819408-light
// https://pub.dev/packages/scrollable_bottom_sheet#-readme-tab-

class LightApp extends StatefulWidget {
  @override
  _LightAppState createState() => _LightAppState();
}

class _LightAppState extends State<LightApp> with TickerProviderStateMixin {
  String _image =
      "https://cdn.pixabay.com/photo/2014/12/21/23/54/lightbulb-576302_960_720.png";
  String _content =
      "The tree lamp designed by the independent designer cleverly\ncombines the design principle of the container, and makes  the \nempty space have a vibrant feeling. The creativity is very good.\nindependent designer cleverly.";

  final controller = ScrollableController();

  @override
  Widget build(BuildContext context) {
    final screenHeight = MediaQuery
        .of(context)
        .size
        .height;
    final screenWidth = MediaQuery
        .of(context)
        .size
        .width;
    return Scaffold(
      body: Stack(
        children: <Widget>[
          Positioned(
            top: 0,
            left: 0,
            right: 0,
            bottom: screenHeight * 0.6,
            child: Container(
              decoration: BoxDecoration(
                  image: DecorationImage(image: NetworkImage(_image))),
              child: Stack(
                children: <Widget>[
                  Positioned(
                    top: 0,
                    left: 24,
                    right: 24,
                    child: SafeArea(
                        top: true,
                        left: true,
                        right: true,
                        child: Container(
                          height: 40,
                          child: Row(
                            children: <Widget>[
                              Icon(Icons.arrow_back_ios,
                                  size: 24.0, color: Colors.black),
                              Spacer(),
                              Icon(Icons.more_vert,
                                  size: 24.0, color: Colors.black)
                            ],
                          ),
                        )),
                  ),
                  Positioned(
                    top: 100,
                    right: 24,
                    child: Column(
                      children: <Widget>[
                        Container(
                            margin: EdgeInsets.only(bottom: 8.0),
                            height: 36,
                            width: 36,
                            decoration: BoxDecoration(
                                color: Colors.grey[300],
                                borderRadius: BorderRadius.circular(8.0)),
                            child: Icon(Icons.shopping_cart,
                                size: 16.0, color: Colors.black)),
                        Container(
                            margin: EdgeInsets.only(bottom: 8.0),
                            height: 36,
                            width: 36,
                            decoration: BoxDecoration(
                                color: Colors.grey[300],
                                borderRadius: BorderRadius.circular(8.0)),
                            child: Icon(Icons.favorite_border,
                                size: 16.0, color: Colors.grey)),
                        Container(
                            margin: EdgeInsets.only(bottom: 8.0),
                            height: 36,
                            width: 36,
                            decoration: BoxDecoration(
                                color: Colors.grey[300],
                                borderRadius: BorderRadius.circular(8.0)),
                            child: Icon(Icons.save_alt,
                                size: 16.0, color: Colors.grey)),
                      ],
                    ),
                  ),
                ],
              ),
            ),
          ),
          Positioned(
              left: 0,
              right: 0,
              bottom: 0,
              child: ScrollableBottomSheet(
                controller: controller,
//                mayExceedChildHeight: true,
                minimumHeight: 50.0,
                halfHeight: 300.0,
                autoPop: false,
                scrollTo: ScrollState.full,
                snapAbove: true,
                snapBelow: true,
                child: Container(
                  height: screenHeight * 0.85,
                  decoration: BoxDecoration(
                      color: Colors.black,
                      borderRadius: BorderRadius.only(
                          topRight: Radius.circular(24.0),
                          topLeft: Radius.circular(24.0))),
                  child: Padding(
                    padding: const EdgeInsets.only(
                        top: 16.0, left: 24.0, right: 24.0),
                    child: Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      mainAxisAlignment: MainAxisAlignment.start,
                      children: <Widget>[
                        Center(
                          child: Container(
                            margin: EdgeInsets.only(bottom: 16.0),
                            height: 4,
                            width: 64,
                            decoration: BoxDecoration(
                                color: Colors.white,
                                borderRadius: BorderRadius.circular(16.0)),
                          ),
                        ),
                        Expanded(
                            flex: 1,
                            child: Row(
                              children: <Widget>[
                                Expanded(
                                    flex: 7,
                                    child: Padding(
                                      padding:
                                      const EdgeInsets.only(bottom: 16.0),
                                      child: Column(
                                        crossAxisAlignment:
                                        CrossAxisAlignment.start,
                                        mainAxisAlignment:
                                        MainAxisAlignment.spaceBetween,
                                        children: <Widget>[
                                          Text("Tree Lamp",
                                              style: TextStyle(
                                                  fontWeight: FontWeight.bold,
                                                  color: Colors.white,
                                                  fontSize: 24.0)),
                                          Text("Independent Designer",
                                              style: TextStyle(
                                                  color: Colors.grey[700],
                                                  fontSize: 12.0)),
                                          Row(
                                            children: <Widget>[
                                              Icon(Icons.star,
                                                  size: 12.0,
                                                  color: Colors.white),
                                              Icon(Icons.star,
                                                  size: 12.0,
                                                  color: Colors.white),
                                              Icon(Icons.star,
                                                  size: 12.0,
                                                  color: Colors.white),
                                              Icon(Icons.star,
                                                  size: 12.0,
                                                  color: Colors.white),
                                              Icon(Icons.star_border,
                                                  size: 12.0,
                                                  color: Colors.grey[700]),
                                              SizedBox(width: 8),
                                              Text("4.6",
                                                  style: TextStyle(
                                                      color: Colors.white,
                                                      fontSize: 16.0)),
                                              SizedBox(width: 4),
                                              Text(" ( 974 collection ) ",
                                                  style: TextStyle(
                                                      color: Colors.grey[700],
                                                      fontSize: 12.0))
                                            ],
                                          )
                                        ],
                                      ),
                                    )),
                                Expanded(
                                    flex: 3,
                                    child: Align(
                                      alignment: Alignment.topRight,
                                      child: Text("\$730.99",
                                          style: TextStyle(
                                              color: Colors.white,
                                              fontSize: 24.0,
                                              fontStyle: FontStyle.italic)),
                                    )),
                              ],
                            )),
                        Expanded(
                            flex: 1,
                            child: Text(
                              _content,
                              style: TextStyle(
                                  height: 1.2,
                                  color: Colors.grey[700],
                                  fontSize: 12.0),
                            )),
                        Expanded(
                            flex: 1,
                            child: Row(
                              children: <Widget>[
                                Text("ADD TO CART".toUpperCase(),
                                    style: TextStyle(
                                        decoration: TextDecoration.underline,
                                        color: Colors.white,
                                        fontSize: 20.0,
                                        fontWeight: FontWeight.bold)),
                                Spacer(),
                                Container(
                                  height: 40,
                                  width: 120,
                                  decoration: BoxDecoration(
                                      color: Colors.redAccent,
                                      borderRadius:
                                      BorderRadius.circular(16.0)),
                                  child: Center(
                                      child: Text("Buy now",
                                          style: TextStyle(
                                              color: Colors.white,
                                              fontSize: 20.0))),
                                )
                              ],
                            )),
                        SizedBox(height: 24),
                        Expanded(flex: 3, child: Column(
                          children: <Widget>[
                            Row(
                              children: <Widget>[
                                Text("Try this one also", style: TextStyle(
                                    color: Colors.white,
                                    fontSize: 16.0,
                                    fontWeight: FontWeight.bold)),
                                Spacer(),
                                Text("See all", style: TextStyle(
                                    color: Colors.grey[700], fontSize: 12.0))
                              ],
                            ),
                            Container(
                              margin: EdgeInsets.only(top: 16.0),
                              height: 220,
                              width: screenWidth,
                              child: ListView.builder(
                                  shrinkWrap: true,
                                  scrollDirection: Axis.horizontal,
                                  itemCount: light.length,
                                  itemBuilder: (BuildContext context,
                                      int index) {
                                    return Container(
                                      margin: EdgeInsets.only(right: 16.0),
                                      width: 150,
                                      child: Column(
                                        children: <Widget>[
                                          Expanded(flex: 9,
                                              child: Container(
                                                decoration: BoxDecoration(
                                                    borderRadius: BorderRadius
                                                        .circular(16.0),
                                                    image: DecorationImage(
                                                        image: NetworkImage(
                                                            light[index].image),
                                                        fit: BoxFit.fill)),)),
                                          Expanded(
                                              flex: 2, child: Row(
                                            crossAxisAlignment: CrossAxisAlignment
                                                .start,
                                            mainAxisAlignment: MainAxisAlignment
                                                .spaceBetween,
                                            children: <Widget>[
                                              Expanded(flex: 1,
                                                  child: Text(light[index].name,
                                                      style: TextStyle(
                                                          color: Colors
                                                              .grey[500],
                                                          fontSize: 12.0),
                                                      maxLines: 2)),
                                              Expanded(flex: 1,
                                                  child: Text(
                                                      light[index].price,
                                                      style: TextStyle(
                                                          color: Colors.white,
                                                          fontSize: 12.0))),
                                            ],
                                          )),
                                        ],
                                      ),
                                    );
                                  }),
                            )
                          ],
                        )),
                      ],
                    ),
                  ),
                ),
              ))
        ],
      ),
    );
  }
}

class Light {
  String image;
  String name;
  String price;

  Light({this.image, this.name, this.price});
}

List<Light> light = [
  Light(
      image: "https://cdn.pixabay.com/photo/2019/03/19/15/03/fantasy-4065924_960_720.jpg",
      name: "lamp tree lamp tree lamp",
      price: "\$730.99"),
  Light(
      image: "https://cdn.pixabay.com/photo/2019/03/19/15/03/fantasy-4065924_960_720.jpg",
      name: "lamp tree lamp tree lamp",
      price: "\$730.99"),
  Light(
      image: "https://cdn.pixabay.com/photo/2019/03/19/15/03/fantasy-4065924_960_720.jpg",
      name: "lamp tree lamp tree lamp",
      price: "\$730.99"),
];













