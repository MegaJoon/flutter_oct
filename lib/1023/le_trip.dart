import 'package:flutter/material.dart';
import 'package:badges/badges.dart';

// https://dribbble.com/shots/7763532-Le-Trip-Travel-Planner-UI-KIT/attachments

class LeTripApp extends StatefulWidget {
  @override
  _LeTripAppState createState() => _LeTripAppState();
}

class _LeTripAppState extends State<LeTripApp> {
  String _backgroundImage = "https://cdn.pixabay.com/photo/2019/09/19/19/05/tree-4490071__340.jpg";

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
                    height: 120.0,
                    decoration: BoxDecoration(image: DecorationImage(image: NetworkImage(_backgroundImage), fit: BoxFit.fill)),
                    child: Stack(
                      children: <Widget>[
                        // setting badge
                        Positioned(
                          top: 40.0,
                          right: 16,
                          child: Badge(child: Icon(Icons.settings, size: 24.0, color: Colors.white,),
                            showBadge: true,
                            position: BadgePosition.topRight(top: 0, right: 0),
                          padding: EdgeInsets.all(4.0),
                          ),
                        ),

                        // location_on icon
                        Positioned(
                          top: 64,
                          left: 150.0,
                          child: Container(
                            height: 20.0,
                            width: 80.0,
                            decoration: BoxDecoration(borderRadius: BorderRadius.circular(4.0), color: Colors.grey.withOpacity(0.7),),
                            child: Row(
                              mainAxisAlignment: MainAxisAlignment.center,
                              crossAxisAlignment: CrossAxisAlignment.center,
                              children: <Widget>[
                                Icon(Icons.location_on, size: 20.0, color: Colors.white,),
                                Text('Korea', style: TextStyle(color: Colors.white, fontSize: 16.0, fontWeight: FontWeight.w600),),
                              ],
                            ),
                          ),
                        )
                      ],
                    ),
                  ),
                ),

                // post, follower .. text column
                Positioned(
                  bottom: 0,
                  left: 0,
                  right: 0,
                  child: Container(
                    height: 150.0,
                    color: Colors.white,
                    child: Placeholder(),
                  ),
                )
              ],
            ),
          ),

          Divider(color: Colors.grey,),
          // main context
          Flexible(
            flex: 7,
            child: Placeholder(),
          ),
        ],
      )
    );
  }
}
