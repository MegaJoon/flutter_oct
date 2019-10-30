import 'package:flutter/material.dart';

class MyTab extends StatelessWidget {
  final String title;
  final Color color;
  final bool isSelected;
  final Function onClicked;

  MyTab({this.title, this.color, this.isSelected, this.onClicked});

  @override
  Widget build(BuildContext context) {
    Color _color = Color.fromRGBO(94, 141, 152, 1);

    return InkWell(
      onTap: onClicked,
      child: Transform.rotate(
        angle: -1.57,
        child: Row(
          children: <Widget>[
            Text(
              title,
              style: TextStyle(
                  color: isSelected? _color: _color.withOpacity(0.2),
                  fontSize: 16.0,
                  fontWeight: FontWeight.bold,
              ),
            ),
            Container(
              margin: EdgeInsets.only(left: 6.0, ),
              height: 8.0,
              width: 8.0,
              decoration: BoxDecoration(
                  shape: BoxShape.circle,
                color: isSelected? color: color.withOpacity(0.2),
              ),
            ),
          ],
        ),
      ),
    );
  }
}
