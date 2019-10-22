import 'package:flutter/material.dart';

class MyTab extends StatelessWidget {
  final String text;
  final bool isSelected;
  final Function function;

  MyTab({this.text, this.isSelected, this.function});

  @override
  Widget build(BuildContext context) {
    return InkWell(
      onTap: function,
      child: Container(
        margin: EdgeInsets.symmetric(horizontal: 8.0, vertical: 6.0),
        height: 40.0,
        width: 36.0,
        decoration: BoxDecoration(borderRadius: BorderRadius.circular(4.0), border: Border.all(color: Colors.black, width: 1.0)),
        child: Text(text, style: TextStyle(color: Colors.black, fontSize: 16.0, fontWeight: FontWeight.w600),),
      ),
    );
  }
}
