import 'package:flutter/material.dart';

class MyTab extends StatelessWidget {
  final String title;
  final Color color;
  final bool isSelected;
  final Function onClicked;

  MyTab({this.title, this.color, this.isSelected, this.onClicked});

  @override
  Widget build(BuildContext context) {
    return InkWell(
      onTap: onClicked,
      child: Transform.rotate(
        angle: -1.57,
        child: Row(
          children: <Widget>[
            Text(
              title,
              style: TextStyle(
                  color: isSelected? Colors.black: Colors.black.withOpacity(0.5),
                  fontSize: 13.0,
                  fontWeight: FontWeight.bold),
            ),
            Container(
              margin: EdgeInsets.only(left: 3.0, top: 4.0),
              height: 6.0,
              width: 6.0,
              decoration: BoxDecoration(
                  shape: BoxShape.circle,
                color: isSelected? color: color.withOpacity(0.5),
              ),
            ),
          ],
        ),
      ),
    );
  }
}
