import 'package:flutter/material.dart';

// https://dribbble.com/shots/7619455-Subscription/attachments/390409?mode=media

class Subscription extends StatefulWidget {
  @override
  _SubscriptionState createState() => _SubscriptionState();
}

class _SubscriptionState extends State<Subscription> {
  String _image = "https://cdn.pixabay.com/photo/2019/07/25/17/09/camp-4363073__340.png";

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Stack(
        children: <Widget>[
          //
          Positioned(
            top: 24.0,
            left: 16.0,
            right: 16.0,
            bottom: 0,
            child: Container(
              decoration: BoxDecoration(borderRadius: BorderRadius.circular(8.0), color: Colors.grey),
//          child: Placeholder(),
            ),
          ),
          // main
          Positioned(
            top: 32.0,
            left: 0,
            right: 0,
            bottom: 0,
            child: Container(
              decoration: BoxDecoration(
                  borderRadius: BorderRadius.circular(8.0),
                  image: DecorationImage(image: NetworkImage(_image), fit: BoxFit.fill)),
            ),
          )
        ],
      ),
    );
  }
}
