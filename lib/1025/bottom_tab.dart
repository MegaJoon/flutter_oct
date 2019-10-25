import 'package:flutter/material.dart';

class BottomTab extends StatelessWidget {
  final IconData iconData;
  final String text;
  final bool isSelected;
  final Function onTab;

  BottomTab({this.iconData, this.text, this.isSelected, this.onTab});

  @override
  Widget build(BuildContext context) {
    Color _color = Color.fromRGBO(136, 123, 121, 1);
    return isSelected
        ? InkWell(
            onTap: onTab,
            child: Container(
              height: 40.0,
              width: 120.0,
              decoration: ShapeDecoration(
                  shape: StadiumBorder(),
                  color: _color,
                  shadows: [
                    BoxShadow(
                        color: Colors.black12, spreadRadius: 2, blurRadius: 4)
                  ]),
              child: Row(
                mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                crossAxisAlignment: CrossAxisAlignment.center,
                children: <Widget>[
                  Icon(
                    iconData,
                    color: Colors.white,
                    size: 20.0,
                  ),
                  Text(
                    text,
                    style: TextStyle(
                      color: Colors.white,
                      fontSize: 12.0,
                      fontWeight: FontWeight.bold,
                    ),
                  ),
                ],
              ),
            ))
        : IconButton(
            icon: Icon(
              iconData,
              size: 20.0,
              color: _color,
            ),
            onPressed: onTab,
          );
  }
}
