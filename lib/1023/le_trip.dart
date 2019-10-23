import 'package:flutter/material.dart';
import 'package:badges/badges.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';

// https://dribbble.com/shots/7763532-Le-Trip-Travel-Planner-UI-KIT/attachments

class LeTripApp extends StatefulWidget {
  @override
  _LeTripAppState createState() => _LeTripAppState();
}

class _LeTripAppState extends State<LeTripApp> {
  String _backgroundImage = "https://cdn.pixabay.com/photo/2019/09/19/19/05/tree-4490071__340.jpg";
  String _profileImage = "assets/hongdduk.jpg";
  String _tripImage = "https://cdn.pixabay.com/photo/2018/05/19/02/43/sansa-3412633__340.jpg";
  //
  String _profileImage1 = "https://cdn.pixabay.com/photo/2019/09/20/10/46/halloween-4491465__340.jpg";
  String _profileImage2 = "https://cdn.pixabay.com/photo/2019/09/28/07/25/bird-4510110__340.jpg";
  String _profileImage3 = "https://cdn.pixabay.com/photo/2019/10/15/21/52/flamingo-4553025__340.jpg";

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        body: Column(
      children: <Widget>[
        // top container
        Flexible(
          flex: 4,
          child: Stack(
            children: <Widget>[
              // background image
              Positioned(
                top: 0,
                left: 0,
                right: 0,
                child: Container(
                  height: 100.0,
                  decoration: BoxDecoration(
                      borderRadius: BorderRadius.only(bottomLeft: Radius.circular(8.0), bottomRight: Radius.circular(8.0)),
                      image: DecorationImage(image: NetworkImage(_backgroundImage), fit: BoxFit.fill)),
                ),
              ),

              // post, follower .. text column
              Positioned(
                bottom: 0,
                left: 0,
                right: 0,
                child: Container(
                  margin: EdgeInsets.only(right: 16.0, left: 16.0),
                  height: 190.0,
                  child: Column(
                    children: <Widget>[
                      // Badge setting icon
                      Flexible(
                        flex: 1,
                        child: Align(
                          alignment: Alignment.centerRight,
                          child: Badge(
                            child: Icon(
                              Icons.settings,
                              size: 20.0,
                              color: Colors.white,
                            ),
                            showBadge: true,
                            position: BadgePosition.topRight(top: 0.0, right: 0.0),
                            padding: EdgeInsets.all(4.0),
                          ),
                        ),
                      ),

                      // profile image, location, name
                      Flexible(
                        flex: 3,
                        child: Row(
                          children: <Widget>[
                            Expanded(
                              flex: 2,
                              child: Container(
                                decoration: BoxDecoration(
                                    shape: BoxShape.circle,
                                    image: DecorationImage(image: AssetImage(_profileImage), fit: BoxFit.fill)),
                              ),
                            ),
                            SizedBox(
                              width: 32.0,
                            ),
                            Expanded(
                              flex: 8,
                              child: Column(
                                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                                crossAxisAlignment: CrossAxisAlignment.start,
                                children: <Widget>[
                                  Container(
                                    height: 20.0,
                                    width: 80.0,
                                    decoration: BoxDecoration(
                                      borderRadius: BorderRadius.circular(4.0),
                                      color: Colors.grey[500].withOpacity(0.5),
                                    ),
                                    child: Row(
                                      mainAxisAlignment: MainAxisAlignment.center,
                                      children: <Widget>[
                                        Icon(
                                          Icons.location_on,
                                          size: 20.0,
                                          color: Colors.white,
                                        ),
                                        Text(
                                          "Korea",
                                          style: TextStyle(color: Colors.white, fontSize: 16.0, fontWeight: FontWeight.w400),
                                        )
                                      ],
                                    ),
                                  ),
                                  Text(
                                    "Mega Joon",
                                    style: TextStyle(color: Colors.black, fontSize: 32.0, fontWeight: FontWeight.bold),
                                  ),
                                ],
                              ),
                            ),
                          ],
                        ),
                      ),

                      // facebook insta post text
                      Flexible(
                        flex: 2,
                        child: Row(
                          crossAxisAlignment: CrossAxisAlignment.start,
                          children: <Widget>[
                            // facebook insta
                            Expanded(
                              flex: 2,
                              child: Padding(
                                padding: const EdgeInsets.only(top: 8.0),
                                child: Row(
                                  crossAxisAlignment: CrossAxisAlignment.start,
                                  mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                                  children: <Widget>[
                                    Icon(
                                      FontAwesomeIcons.facebookF,
                                      size: 20.0,
                                      color: Colors.indigo,
                                    ),
                                    Icon(
                                      FontAwesomeIcons.instagram,
                                      size: 20.0,
                                      color: Colors.pink,
                                    ),
                                  ],
                                ),
                              ),
                            ),

                            SizedBox(
                              width: 32.0,
                            ),

                            // post text
                            Expanded(
                              flex: 8,
                              child: Row(
                                children: <Widget>[
                                  Container(
                                    width: 80.0,
                                    child: Column(
                                      crossAxisAlignment: CrossAxisAlignment.start,
                                      mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                                      children: <Widget>[
                                        Text(
                                          "112",
                                          style: TextStyle(color: Colors.black, fontSize: 14.0, fontWeight: FontWeight.w600),
                                        ),
                                        Text(
                                          "Posts",
                                          style: TextStyle(color: Colors.grey, fontSize: 12.0, fontWeight: FontWeight.w600),
                                        ),
                                      ],
                                    ),
                                  ),
                                  Container(
                                    width: 80.0,
                                    child: Column(
                                      crossAxisAlignment: CrossAxisAlignment.start,
                                      mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                                      children: <Widget>[
                                        Text(
                                          "15k",
                                          style: TextStyle(color: Colors.black, fontSize: 14.0, fontWeight: FontWeight.w600),
                                        ),
                                        Text(
                                          "Follower",
                                          style: TextStyle(color: Colors.grey, fontSize: 12.0, fontWeight: FontWeight.w600),
                                        ),
                                      ],
                                    ),
                                  ),
                                  Container(
                                    width: 80.0,
                                    child: Column(
                                      crossAxisAlignment: CrossAxisAlignment.start,
                                      mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                                      children: <Widget>[
                                        Text(
                                          "27",
                                          style: TextStyle(color: Colors.black, fontSize: 14.0, fontWeight: FontWeight.w600),
                                        ),
                                        Text(
                                          "Following",
                                          style: TextStyle(color: Colors.grey, fontSize: 12.0, fontWeight: FontWeight.w600),
                                        ),
                                      ],
                                    ),
                                  ),
                                ],
                              ),
                            )
                          ],
                        ),
                      ),

                      // chat follow
                      Flexible(
                        flex: 2,
                        child: Row(
                          children: <Widget>[
                            SizedBox(
                              width: 100.0,
                            ),
                            Container(
                              margin: EdgeInsets.only(top: 12.0, right: 16.0),
                              width: 120.0,
                              decoration: BoxDecoration(
                                  borderRadius: BorderRadius.circular(8.0), border: Border.all(color: Colors.indigo, width: 1.0)),
                              child: Center(
                                  child: Text(
                                "Chat",
                                style: TextStyle(color: Colors.indigo, fontSize: 16.0, fontWeight: FontWeight.bold),
                              )),
                            ),
                            Container(
                              margin: EdgeInsets.only(top: 12.0),
                              width: 120.0,
                              decoration: BoxDecoration(borderRadius: BorderRadius.circular(8.0), color: Colors.indigo),
                              child: Center(
                                  child: Text(
                                "Follow",
                                style: TextStyle(color: Colors.white, fontSize: 16.0, fontWeight: FontWeight.bold),
                              )),
                            )
                          ],
                        ),
                      ),
                    ],
                  ),
                ),
              )
            ],
          ),
        ),

        Padding(
          padding: const EdgeInsets.symmetric(horizontal: 16.0),
          child: Divider(
            height: 16.0,
            color: Colors.grey,
          ),
        ),
        // main context
        Flexible(
          flex: 7,
          child: Padding(
            padding: const EdgeInsets.symmetric(horizontal: 16.0),
            child: Column(
              children: <Widget>[
                Row(
                  children: <Widget>[
                    Text(
                      "My Trips",
                      style: TextStyle(color: Colors.black, fontSize: 28.0, fontWeight: FontWeight.w600),
                    ),
                    Spacer(),
                    Container(
                      height: 16.0,
                      width: 64.0,
                      child: Row(
                        children: <Widget>[
                          Text(
                            "See all",
                            style: TextStyle(color: Colors.indigo, fontSize: 12.0, fontWeight: FontWeight.w600),
                          ),
                          Icon(
                            Icons.arrow_forward_ios,
                            size: 12.0,
                            color: Colors.indigo,
                          ),
                        ],
                      ),
                    )
                  ],
                ),
                Container(
                  margin: EdgeInsets.only(top: 16.0),
                  height: 250.0,
                  child: Stack(
                    children: <Widget>[
                      // top image
                      Positioned(
                        top: 0,
                        left: 0,
                        right: 0,
                        bottom: 50.0,
                        child: Container(
                          decoration: BoxDecoration(
                            borderRadius: BorderRadius.circular(8.0),
                            image: DecorationImage(image: NetworkImage(_tripImage), fit: BoxFit.fill),
                          ),
                        ),
                      ),

                      // bottom white container
                      Positioned(
                        top: 150,
                        left: 0,
                        right: 0,
                        bottom: 0.0,
                        child: Container(
                          decoration: BoxDecoration(
                            borderRadius: BorderRadius.circular(8.0),
                            color: Colors.white,
                            boxShadow: [BoxShadow(color: Colors.black12, spreadRadius: 2, blurRadius: 4)]
                          ),
                          child: Column(
                            crossAxisAlignment: CrossAxisAlignment.center,
                            mainAxisAlignment: MainAxisAlignment.center,
                            children: <Widget>[
                              Text("Changwon - Busan - Ulsan", style: TextStyle(color: Colors.black, fontSize: 20.0, fontWeight: FontWeight.w600),),
                              SizedBox(height: 16.0,
                              ),
                              Row(
                                crossAxisAlignment: CrossAxisAlignment.center,
                                mainAxisAlignment: MainAxisAlignment.center,
                                children: <Widget>[
                                  Icon(Icons.calendar_today, size: 14.0, color: Colors.grey,),
                                  Text("Aug 22 - Aug 27", style: TextStyle(color: Colors.grey, fontSize: 14.0),)
                                ],
                              )
                            ],
                          ),
                        ),
                      ),

                      // ongoing
                      Positioned(
                        top: 10.0,
                        left: 10.0,
                        child: Container(
                          height: 24.0,
                          width: 64.0,
                          decoration: BoxDecoration(borderRadius: BorderRadius.circular(4.0), color: Colors.indigo),
                          child: Center(child: Text("On going", style: TextStyle(color: Colors.white, fontSize: 12.0, fontWeight: FontWeight.w400),)),
                        ),
                      ),

                      // profile images
                      Positioned(
                        top: 130.0,
                        left: 140.0,
                        child: Container(
                          height: 40.0,
                          width: 115.0,
                          child: Stack(
                            children: <Widget>[
                              Positioned(
                                top: 0,
                                bottom: 0,
                                left: 0,
                                child: Container(
                                  width: 40.0,
                                  decoration: BoxDecoration(shape: BoxShape.circle, image: DecorationImage(image: NetworkImage(_profileImage1), fit: BoxFit.fill)),
                                ),
                              ),

                              Positioned(
                                top: 0,
                                bottom: 0,
                                left: 25.0,
                                child: Container(
                                  width: 40.0,
                                  decoration: BoxDecoration(shape: BoxShape.circle, image: DecorationImage(image: NetworkImage(_profileImage2), fit: BoxFit.fill)),
                                ),
                              ),

                              Positioned(
                                top: 0,
                                bottom: 0,
                                left: 50.0,
                                child: Container(
                                  width: 40.0,
                                  decoration: BoxDecoration(shape: BoxShape.circle, image: DecorationImage(image: NetworkImage(_profileImage3), fit: BoxFit.fill)),
                                ),
                              ),

                              Positioned(
                                top: 0,
                                bottom: 0,
                                left: 75.0,
                                child: Container(
                                  width: 40.0,
                                  decoration: BoxDecoration(shape: BoxShape.circle, color: Colors.grey[300]),
                                  child: Icon(Icons.add, size: 24.0, color: Colors.grey,),
                                ),
                              ),
                            ],
                          ),
                        ),
                      )
                    ],
                  ),
                )
              ],
            ),
          ),
        ),
      ],
    ));
  }
}
