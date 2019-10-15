import 'package:flutter/material.dart';

class MyDottedline extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return LayoutBuilder(
      builder: (BuildContext context, BoxConstraints constraints) {
        final boxHeight = constraints.constrainHeight();
        final lineHeight = 12.0;
        final lineWidth = 3.0;
        final lineCount = (boxHeight / (lineHeight * 2.0)).floor();
        return Flex(
          direction: Axis.vertical,
          children: List.generate(lineCount, (_){
            return Column(
              children: <Widget>[
                SizedBox(
                  height: lineHeight,
                  width: lineWidth,
                  child: DecoratedBox(decoration: BoxDecoration(color: Colors.amber[200])),
                ),
                SizedBox(
                  height: lineHeight,
                  width: lineWidth,
                  child: DecoratedBox(decoration: BoxDecoration(color: Colors.grey[200])),
                ),
              ],
            );
          }),
        );
      },
    );
  }
}
