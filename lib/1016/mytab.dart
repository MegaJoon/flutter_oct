import 'package:flutter/material.dart';

class MyTab extends StatelessWidget {
  final bool isSelected;
  final String text;
  final Function onTabTap;

  MyTab({this.isSelected, this.text, this.onTabTap});

  @override
  Widget build(BuildContext context) {
    return InkWell(
      onTap: onTabTap,
      child: Transform.rotate(
        angle: -1.57,
        child: Column(
          children: <Widget>[
            Text(
              text,
              style: isSelected
                  ? TextStyle(color: Colors.black, fontSize: 16.0, fontWeight: FontWeight.bold)
                  : TextStyle(color: Colors.grey[500], fontWeight: FontWeight.w600, fontSize: 16.0),
            ),
            Container(
              margin: EdgeInsets.only(top: 4.0),
              height: 6.0,
              width: 6.0,
              decoration: BoxDecoration(shape: BoxShape.circle, color: isSelected ? Colors.black : Colors.white),
            )
          ],
        ),
      ),
    );
  }
}
