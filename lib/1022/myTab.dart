import 'package:flutter/material.dart';

class MyTab extends StatelessWidget {
  final String text;
  final String text2;
  final bool isSelected;
  final Function function;

  MyTab({this.text, this.text2, this.isSelected, this.function});

  @override
  Widget build(BuildContext context) {
    return InkWell(
      onTap: function,
      child: Container(
        margin: isSelected ? EdgeInsets.all(0.0) : EdgeInsets.symmetric(horizontal: 12.0, vertical: 10.0),
        width: isSelected ? 64.0 : 48.0,
        decoration: BoxDecoration(
            borderRadius: BorderRadius.circular(4.0),
            border: Border.all(color: Colors.black, width: 1.0),
            color: isSelected ? Colors.black : null),
        child: Center(
            child: Column(
          crossAxisAlignment: CrossAxisAlignment.center,
          mainAxisAlignment: MainAxisAlignment.center,
          children: <Widget>[
            Text(
              text,
              style: TextStyle(color: isSelected ? Colors.white : Colors.black, fontSize: 16.0, fontWeight: FontWeight.bold),
            ),
            isSelected
                ? Text(
                    text2,
                    style: TextStyle(color: Colors.white, fontSize: 16.0, fontWeight: FontWeight.bold),
                  )
                : Container(),
          ],
        )),
      ),
    );
  }
}
