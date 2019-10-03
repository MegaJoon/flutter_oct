import 'package:flutter/material.dart';
import 'package:flutter_socialfeeds/social_list.dart';

class ViewPost extends StatefulWidget {
  @override
  _ViewPostState createState() => _ViewPostState();
}

class _ViewPostState extends State<ViewPost> {
  String _backgroundImage =
      "https://cdn.pixabay.com/photo/2019/09/25/20/52/sun-4504661_960_720.jpg";

  @override
  Widget build(BuildContext context) {
    final screenWidth = MediaQuery.of(context).size.width;

    return Scaffold(
      body: SingleChildScrollView(
        scrollDirection: Axis.vertical,
        child: Padding(
          padding: const EdgeInsets.symmetric(horizontal: 24.0),
          child: Column(
            children: <Widget>[
              // SafeArea
              SafeArea(
                top: true,
                left: true,
                right: true,
                child: Container(
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
//                  Text("#travel",
//                      style: TextStyle(
//                          color: Colors.black,
//                          fontSize: 20.0,
//                          fontWeight: FontWeight.bold)),
                      Container(
                        height: 40,
                        width: 64,
                        child: Row(
                          mainAxisAlignment: MainAxisAlignment.spaceBetween,
                          children: <Widget>[
                            Icon(Icons.favorite_border,
                                size: 20.0, color: Colors.grey),
                            Icon(Icons.near_me, size: 20.0, color: Colors.grey),
                          ],
                        ),
                      )
                    ],
                  ),
                ),
              ),

              // top
              Container(
                margin: EdgeInsets.only(top: 8.0, bottom: 8.0),
                padding: EdgeInsets.only(bottom: 2.0),
                height: 40,
                width: screenWidth,
//            color: Colors.amber,
                child: Row(
                  children: <Widget>[
                    Padding(
                      padding: const EdgeInsets.only(left: 0.0, right: 16.0),
                      child: ClipRRect(
                          borderRadius: BorderRadius.circular(32.0),
                          child: Image(
                              image: NetworkImage(sociallist[0].profileImage),
                              height: 40,
                              width: 40,
                              fit: BoxFit.cover)),
                    ),
                    Column(
                      mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: <Widget>[
                        Text(sociallist[0].name,
                            style: TextStyle(
                                color: Colors.black,
                                fontSize: 16.0,
                                fontWeight: FontWeight.bold)),
                        Text(sociallist[0].time,
                            style:
                                TextStyle(color: Colors.grey, fontSize: 12.0)),
                      ],
                    ),
                    Spacer(),
                    Container(
                      height: 24,
                      width: 80,
                      decoration: BoxDecoration(
                          borderRadius: BorderRadius.circular(32.0),
                          color: Colors.white,
                          border: Border.all(color: Colors.grey, width: 1.0)),
                      child: Center(
                        child: Text(
                          "Following",
                          style: TextStyle(
                              color: Colors.grey,
                              fontSize: 12.0,
                              fontWeight: FontWeight.bold),
                        ),
                      ),
                    ),
                  ],
                ),
              ),

              // image
              Container(
                height: 380,
                width: screenWidth,
                decoration: BoxDecoration(
                    color: Colors.black,
                    borderRadius: BorderRadius.circular(16.0),
                    boxShadow: [
                      BoxShadow(
                          color: Colors.black.withOpacity(0.1),
                          blurRadius: 4,
                          spreadRadius: 2)
                    ],
                    image: DecorationImage(
                        image: NetworkImage(_backgroundImage),
                        fit: BoxFit.cover)),
              ),

              // favorite
              Container(
                height: 40,
                width: screenWidth,
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: <Widget>[
                    Container(
                      width: 200,
                      child: Row(
                        mainAxisAlignment: MainAxisAlignment.spaceBetween,
                        children: <Widget>[
                          Icon(Icons.favorite,
                              color: Colors.pinkAccent, size: 20.0),
                          Text("24",
                              style: TextStyle(
                                  color: Colors.black, fontSize: 14.0)),
                          SizedBox(width: 16),
                          Icon(Icons.chat_bubble_outline, size: 20.0),
                          Text("23",
                              style: TextStyle(
                                  color: Colors.black, fontSize: 14.0)),
                          SizedBox(width: 16),
                          Icon(Icons.remove_red_eye, size: 20.0),
                          Text("680",
                              style: TextStyle(
                                  color: Colors.black, fontSize: 14.0)),
                        ],
                      ),
                    ),
                    Icon(Icons.bookmark_border, size: 24.0)
                  ],
                ),
              ),

              // content
              RichText(
                text: TextSpan(children: [
                  TextSpan(
                      text: "mandypo ",
                      style: TextStyle(
                          fontSize: 14.0,
                          fontWeight: FontWeight.bold,
                          color: Colors.black)),
                  TextSpan(
                      text:
                          "It's been a very wonderful time on the west beach today. Best day ever. thanks!",
                      style: TextStyle(fontSize: 14.0, color: Colors.black)),
                  TextSpan(text: "🤣", style: TextStyle(fontSize: 14.0)),
                  TextSpan(
                      text: " @maryjane ",
                      style: TextStyle(fontSize: 14.0, color: Colors.red)),
                  TextSpan(
                      text: "#summertime ",
                      style: TextStyle(
                          fontSize: 14.0,
                          fontWeight: FontWeight.bold,
                          color: Colors.black)),
                  TextSpan(
                      text: "#beachlife ",
                      style: TextStyle(
                          fontSize: 14.0,
                          fontWeight: FontWeight.bold,
                          color: Colors.black)),
                ]),
              ),

              // textfield
              Container(
                  margin: EdgeInsets.only(top: 8.0),
//                  padding: EdgeInsets.only(top: 16.0, left: 12.0),
                  height: 32,
                  width: screenWidth,
                  decoration: BoxDecoration(
                      color: Colors.grey[200],
                      borderRadius: BorderRadius.circular(8.0)),
                  child: TextField(
                      obscureText: true,
                      decoration: InputDecoration(
                          contentPadding: EdgeInsets.all(8.0),
                          border: InputBorder.none,
                          hintText: "Comment",
                          hintStyle: TextStyle(
                              color: Colors.grey[300],
                              fontSize: 16.0,
                              fontWeight: FontWeight.bold))))
            ],
          ),
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
