import 'package:flutter/material.dart';

// https://dribbble.com/shots/7793207-Daily-UI-67-Hotel-Booking/attachments/457416?mode=media

class HotelBooking extends StatefulWidget {
  @override
  _HotelBookingState createState() => _HotelBookingState();
}

class _HotelBookingState extends State<HotelBooking> {
  Color _backgroundColor = Color.fromRGBO(0, 21, 48, 1);
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: _backgroundColor,
      // appbar
      appBar: AppBar(
        backgroundColor: _backgroundColor,
        leading: Icon(Icons.arrow_back_ios, size: 20.0, color: Colors.white,),
        centerTitle: true,
        title: Text("Hotel Booking", style: TextStyle(color: Colors.white, fontSize: 16.0, fontWeight: FontWeight.bold),),
        actions: <Widget>[
          Icon(Icons.menu, size: 20.0, color: Colors.white,),
          SizedBox(width: 16.0,),
        ],
      ),
      body: Container(),
    );
  }
}
