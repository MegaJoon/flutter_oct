import 'package:flutter/material.dart';

// https://dribbble.com/shots/7369902-Icecream-app/attachments/259617?mode=media

class IceCream extends StatefulWidget {
  @override
  _IceCreamState createState() => _IceCreamState();
}

class _IceCreamState extends State<IceCream> {
  String _image = "https://cdn.pixabay.com/photo/2017/04/12/08/37/trdlo-2223968_960_720.jpg";
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Container(
        height: double.infinity,
        width: double.infinity,
        decoration: BoxDecoration(
          image: DecorationImage(image: NetworkImage(_image), fit: BoxFit.fill)
        ),
        child: Padding(
          padding: const EdgeInsets.symmetric(horizontal: 24.0),
          child: Column(
            children: <Widget>[
              // safearea
              SafeArea(
                top: true, left: true, right: true,
                child: Container(
                  height: 40,
                  child: Row(
                    children: <Widget>[
                      Icon(Icons.arrow_back_ios, size: 28.0, color: Colors.black,),
                      Spacer(),
                      Icon(Icons.menu, size: 28.0, color: Colors.white,)
                    ],
                  ),
                ),
              )
            ],
          ),
        ),
      ),
    );
  }
}
