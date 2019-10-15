import 'package:flutter/material.dart';
import 'package:flutter_oct/to1014/social_list.dart';
import 'package:flutter_oct/to1014/view_post.dart';


import 'package:flutter_oct/to1014/custom_container.dart';

class SocialFeedsPage extends StatefulWidget {
  @override
  _SocialFeedsPageState createState() => _SocialFeedsPageState();
}

class _SocialFeedsPageState extends State<SocialFeedsPage> {
  @override
  Widget build(BuildContext context) {
    final screenWidth = MediaQuery.of(context).size.width;

    return Scaffold(
      body: SingleChildScrollView(
        child: Column(
          children: <Widget>[
            // SafeArea
            SafeArea(
              top: true,
              left: true,
              right: true,
              child: Container(
                margin: EdgeInsets.symmetric(horizontal: 24.0),
                height: 40,
                width: screenWidth,
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: <Widget>[
                    Container(
                        height: 40,
                        width: 64,
                        child: Row(
                          mainAxisAlignment: MainAxisAlignment.spaceBetween,
                          children: <Widget>[
                            Icon(Icons.arrow_back,
                                size: 20.0, color: Colors.grey),
                          ],
                        )),
                    Text("#travel",
                        style: TextStyle(
                            color: Colors.black,
                            fontSize: 20.0,
                            fontWeight: FontWeight.bold)),
                    Container(
                      height: 40,
                      width: 64,
                      child: Row(
                        mainAxisAlignment: MainAxisAlignment.spaceBetween,
                        children: <Widget>[
                          Icon(Icons.favorite_border,
                              size: 20.0, color: Colors.grey),
                          Icon(Icons.camera_alt,
                              size: 20.0, color: Colors.grey),
                        ],
                      ),
                    )
                  ],
                ),
              ),
            ),

            // tapbar
            Container(
              margin: EdgeInsets.all(16.0),
              padding: EdgeInsets.only(bottom: 2.0),
              height: 32,
              width: screenWidth,
//            color: Colors.amber,
              child: ListView(
                scrollDirection: Axis.horizontal,
                children: <Widget>[
                  Container(
                      margin: EdgeInsets.only(right: 12.0),
                      height: 32,
                      width: 90,
                      decoration: BoxDecoration(
                          color: Colors.red,
                          borderRadius: BorderRadius.circular(16.0)),
                      child: Center(
                        child: Text("#travel",
                            style: TextStyle(
                                color: Colors.white,
                                fontSize: 14.0,
                                fontWeight: FontWeight.bold)),
                      )),
                  Container(
                      margin: EdgeInsets.only(right: 12.0),
                      height: 32,
                      width: 90,
                      decoration: BoxDecoration(
                          border: Border.all(color: Colors.grey, width: 1.0),
                          color: Colors.white,
                          borderRadius: BorderRadius.circular(16.0)),
                      child: Center(
                        child: Text("#food",
                            style: TextStyle(
                                color: Colors.grey,
                                fontSize: 14.0,
                                fontWeight: FontWeight.bold)),
                      )),
                  Container(
                      margin: EdgeInsets.only(right: 12.0),
                      height: 32,
                      width: 90,
                      decoration: BoxDecoration(
                          border: Border.all(color: Colors.grey, width: 1.0),
                          color: Colors.white,
                          borderRadius: BorderRadius.circular(16.0)),
                      child: Center(
                        child: Text("#fashion",
                            style: TextStyle(
                                color: Colors.grey,
                                fontSize: 14.0,
                                fontWeight: FontWeight.bold)),
                      )),
                  Container(
                      margin: EdgeInsets.only(right: 12.0),
                      height: 32,
                      width: 90,
                      decoration: BoxDecoration(
                          border: Border.all(color: Colors.grey, width: 1.0),
                          color: Colors.white,
                          borderRadius: BorderRadius.circular(16.0)),
                      child: Center(
                        child: Text("#gaming",
                            style: TextStyle(
                                color: Colors.grey,
                                fontSize: 14.0,
                                fontWeight: FontWeight.bold)),
                      )),
                  Container(
                      margin: EdgeInsets.only(right: 12.0),
                      height: 32,
                      width: 90,
                      decoration: BoxDecoration(
                          border: Border.all(color: Colors.grey, width: 1.0),
                          color: Colors.white,
                          borderRadius: BorderRadius.circular(16.0)),
                      child: Center(
                        child: Text("#sightseeing",
                            style: TextStyle(
                                color: Colors.grey,
                                fontSize: 14.0,
                                fontWeight: FontWeight.bold)),
                      )),
                ],
              ),
            ),

            // listview
            Container(
              margin: EdgeInsets.symmetric(horizontal: 24.0),
              height: 700,
              width: screenWidth,
//              color: Colors.pink,
              child: Row(
                children: <Widget>[
                  Expanded(
                      flex: 1,
                      child: Column(
                        children: <Widget>[
                          Expanded(
                              flex: 7,
                              child: InkWell(
                                onTap: (){
                                  setState(() {
                                    Navigator.push(context, MaterialPageRoute(builder: (context) => ViewPost()));
                                  });
                                },
                                child: CustomContainer(
                                    image: sociallist[0].image,
                                    title: sociallist[0].title,
                                    time: sociallist[0].time,
                                    name: sociallist[0].name,
                                    profileImage: sociallist[0].profileImage),
                              )),
                          SizedBox(height: 16),
                          Expanded(
                              flex: 8,
                              child: CustomContainer(
                                  image: sociallist[1].image,
                                  title: sociallist[1].title,
                                  time: sociallist[1].time,
                                  name: sociallist[1].name,
                                  profileImage: sociallist[1].profileImage)),
                          SizedBox(height: 16),
                          Expanded(
                              flex: 8,
                              child: CustomContainer(
                                  image: sociallist[2].image,
                                  title: sociallist[2].title,
                                  time: sociallist[2].time,
                                  name: sociallist[2].name,
                                  profileImage: sociallist[2].profileImage)),
                        ],
                      )),
                  SizedBox(width: 16),
                  Expanded(
                      flex: 1,
                      child: Column(
                        children: <Widget>[
                          Expanded(
                              flex: 8,
                              child: CustomContainer(
                                  image: sociallist[3].image,
                                  title: sociallist[3].title,
                                  time: sociallist[3].time,
                                  name: sociallist[3].name,
                                  profileImage: sociallist[3].profileImage)),
                          SizedBox(height: 16),
                          Expanded(
                              flex: 8,
                              child: CustomContainer(
                                  image: sociallist[4].image,
                                  title: sociallist[4].title,
                                  time: sociallist[4].time,
                                  name: sociallist[4].name,
                                  profileImage: sociallist[4].profileImage)),
                          SizedBox(height: 16),
                          Expanded(
                              flex: 7,
                              child: CustomContainer(
                                  image: sociallist[5].image,
                                  title: sociallist[5].title,
                                  time: sociallist[5].time,
                                  name: sociallist[5].name,
                                  profileImage: sociallist[5].profileImage)),
                        ],
                      )),
                ],
              ),
            )
          ],
        ),
      ),

      // bottombar
      bottomNavigationBar: BottomAppBar(
          child: Container(
        margin: EdgeInsets.symmetric(horizontal: 24.0),
        height: 52,
        width: screenWidth,
        child: Row(
          children: <Widget>[
            Expanded(
                flex: 1,
                child: Container(
                  margin: EdgeInsets.only(
                      left: 20.0, right: 20.0, top: 12.0, bottom: 12.0),
                  height: 32,
                  decoration: BoxDecoration(
                      color: Colors.grey[200],
                      borderRadius: BorderRadius.circular(16.0)),
                  child: Row(
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: <Widget>[
                      Icon(Icons.priority_high, size: 20.0, color: Colors.red),
                      Text("Feeds",
                          style: TextStyle(
                              color: Colors.red,
                              fontSize: 12.0,
                              fontWeight: FontWeight.bold))
                    ],
                  ),
                )),
            Expanded(
                flex: 1,
                child: Icon(Icons.chat_bubble_outline,
                    size: 28.0, color: Colors.grey)),
            Expanded(
                flex: 1,
                child: Icon(Icons.supervisor_account,
                    size: 28.0, color: Colors.grey)),
          ],
        ),
      )),
    );
  }
}
