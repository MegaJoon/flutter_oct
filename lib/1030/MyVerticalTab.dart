import 'package:flutter/material.dart';

class MyVerticalTab extends StatelessWidget {
  final String title;
  final Color color;
  final bool isSelected;
  final Function onClicked;

  MyVerticalTab({this.title, this.color, this.isSelected, this.onClicked});


  @override
  Widget build(BuildContext context) {
    return Transform.rotate(
      angle: -1.56,
      child: InkWell(
        onTap: onClicked,
        child: Container(
          child: Center(
            child: Text(
              title, style: TextStyle(color: isSelected? color: color.withOpacity(0.5), fontFamily: "Montserrat-Black", fontSize: isSelected? 14.0: 12.0),
            ),
          ),
        ),
      ),
    );
  }
}
