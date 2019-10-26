import 'package:flutter/material.dart';

import 'itemlist.dart';

class MyColumn extends StatelessWidget {
  final int index;
  // for using hero;
  final Function onTab;

  // Icon on click event : change color
  final Function onClickIcon;

  MyColumn(this.index, this.onTab, this.onClickIcon);

  @override
  Widget build(BuildContext context) {
    return Column(
      children: <Widget>[
        Flexible(
          flex: 8,
          child: InkWell(
            onTap: onTab,
            // when using Navigator: using hero
            child: Hero(
              tag: "$index",
              child: Container(
                padding: EdgeInsets.all(2.0),
                alignment: Alignment.topLeft,
                decoration: BoxDecoration(
                    borderRadius: BorderRadius.circular(16.0),
                    image: DecorationImage(
                        image: NetworkImage(itemList[index].image),
                        fit: BoxFit.cover)),
                child: IconButton(
                  icon: Icon(Icons.favorite, size: 20.0, color: itemList[index].isSelected? Colors.redAccent: Colors.black),
                  // icon clicked event
                  onPressed: onClickIcon,
                ),
              ),
            ),
          ),
        ),
        Flexible(
          flex: 2,
          child: Padding(
            padding: const EdgeInsets.only(left: 16.0),
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              mainAxisAlignment: MainAxisAlignment.center,
              children: <Widget>[
                Row(
                  mainAxisAlignment: MainAxisAlignment.start,
//                        crossAxisAlignment: CrossAxisAlignment.end,
                  children: <Widget>[
                    Text(
                      itemList[index].name,
                      style: TextStyle(
                        color: Colors.black,
                        fontSize: 16.0,
                        fontWeight: FontWeight.w400,
                        fontFamily: "Bannie",
                      ),
                    ),
                    Container(
                      height: 16.0,
                      width: 8.0,
                      alignment: Alignment.topRight,
                      child: Container(
                        height: 4.0,
                        width: 4.0,
                        decoration: BoxDecoration(
                            shape: BoxShape.circle, color: Colors.blue),
                      ),
                    ),
                  ],
                ),
                Text(
                  itemList[index].distance,
                  style: TextStyle(
                    color: Colors.grey,
                    fontSize: 10.0,
                    fontWeight: FontWeight.w400,
                    fontFamily: "Bannie",
                  ),
                )
              ],
            ),
          ),
        )
      ],
    );
  }
}
