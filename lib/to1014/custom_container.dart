import 'package:flutter/material.dart';

class CustomContainer extends StatelessWidget {
  String image;
  String title;
  String name;
  String time;
  String profileImage;

  CustomContainer(
      {this.image, this.title, this.name, this.time, this.profileImage});

  @override
  Widget build(BuildContext context) {
    return Container(
      height: double.infinity,
      width: double.infinity,
      decoration: BoxDecoration(
          color: Colors.white,
          borderRadius: BorderRadius.circular(16.0),
          boxShadow: [
            BoxShadow(
                color: Colors.black.withOpacity(0.1),
                spreadRadius: 2,
                blurRadius: 4)
          ]),
      child: Column(
        children: <Widget>[
          // image
          Expanded(
              flex: 1,
              child: Container(
                  decoration: BoxDecoration(
                borderRadius: BorderRadius.only(
                    topLeft: Radius.circular(16.0),
                    topRight: Radius.circular(16.0)),
                image: DecorationImage(
                    image: NetworkImage(image), fit: BoxFit.fitWidth),
              ))),
          // text
          Expanded(
              flex: 1,
              child: Padding(
                padding:
                    const EdgeInsets.only(left: 8.0, right: 8.0, bottom: 8.0),
                child: Column(
                  mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                  children: <Widget>[
                    Text(title,
                        style: TextStyle(
                            fontSize: 14.0, fontWeight: FontWeight.bold)),
                    Row(
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      children: <Widget>[
                        Column(
                          crossAxisAlignment: CrossAxisAlignment.start,
                          children: <Widget>[
                            Text(
                              name,
                              style: TextStyle(
                                  fontSize: 12.0, fontWeight: FontWeight.bold),
                            ),
                            Text(time,
                                style: TextStyle(
                                    fontSize: 10.0,
                                    color: Colors.grey,
                                    fontWeight: FontWeight.bold))
                          ],
                        ),
                        ClipRRect(
                            borderRadius: BorderRadius.circular(32.0),
                            child: Image(
                                image: NetworkImage(profileImage),
                                height: 32,
                                width: 32,
                                fit: BoxFit.cover))
                      ],
                    )
                  ],
                ),
              )),
        ],
      ),
    );
  }
}
