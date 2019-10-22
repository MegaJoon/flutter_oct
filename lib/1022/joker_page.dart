import 'package:flutter/material.dart';

class JokerPage extends StatefulWidget {
  @override
  _JokerPageState createState() => _JokerPageState();
}

class _JokerPageState extends State<JokerPage> {
  String _jokerImage = "assets/joker1.jpg";

  // red color
  Color _color = Color.fromRGBO(215, 25, 32, 1);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.black,
      body: Padding(
        padding: const EdgeInsets.symmetric(horizontal: 16.0),
        child: Column(
          children: <Widget>[
            // SafeArea
            SafeArea(
              top: true,
              left: true,
              right: true,
              child: Container(
                height: 40.0,
                child: Row(
                  children: <Widget>[
                    IconButton(icon: Icon(Icons.arrow_back, size: 28.0, color: Colors.white,), onPressed: (){
                      setState(() {
                        Navigator.pop(context);
                      });
                    },),
                    Spacer(),
                    Icon(Icons.search, size: 28.0, color: Colors.white,),
                  ],
                ),
              ),
            ),
            Divider(color: Colors.grey,),
            Container(
              height: 24.0,
              child: ListView(
                padding: EdgeInsets.zero,
                shrinkWrap: true,
                scrollDirection: Axis.horizontal,
                children: <Widget>[
                  Text("Synopsis".toUpperCase(), style: TextStyle(color: Colors.white, fontSize: 16.0, fontWeight: FontWeight.bold),),
                  Text("Synopsis".toUpperCase(), style: TextStyle(color: Colors.white, fontSize: 16.0, fontWeight: FontWeight.bold),),
                ],
              ),
            ),
            Divider(),
          ],
        ),
      ),
    );
  }
}
