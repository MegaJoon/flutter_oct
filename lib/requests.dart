import 'package:flutter/material.dart';

// https://dribbble.com/shots/7412094-Social-Sports-App-Requests/attachments/283325?mode=media

class Requests extends StatefulWidget {
  @override
  _RequestsState createState() => _RequestsState();
}

class _RequestsState extends State<Requests> {
  Color _color = Color.fromRGBO(3, 184, 118, 1);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: _color,
        leading: Icon(Icons.menu, size: 20.0, color: Colors.white,),
        centerTitle: true,
        title: Text("Requests", style: TextStyle(color: Colors.white, fontSize: 32.0, fontWeight: FontWeight.bold),),
        actions: <Widget>[
          Icon(Icons.search, size: 20.0, color: Colors.white,),
          Icon(Icons.search, size: 20.0, color: Colors.white,),
        ],
      ),
      body: Container(
        //
      ),
    );
  }
}
