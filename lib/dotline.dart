import 'package:flutter/material.dart';

class Dotline extends StatelessWidget {

  @override
  Widget build(BuildContext context) {
    return LayoutBuilder(
      builder: (BuildContext context, BoxConstraints constraints) {
        final boxHeight = constraints.constrainHeight();
        final lineHeight = 16.0;
        final lineWidth = 4.0;
        final lineCount = (boxHeight / (2.0 * lineHeight)).floor();

        return Flex(
          direction: Axis.vertical,
          children: List.generate(lineCount, (_){
            return Column(
              children: <Widget>[
                SizedBox(
                  height: lineHeight,
                  width: lineWidth,
                  child: DecoratedBox(decoration: BoxDecoration(color: Colors.amber)),
                ),
                SizedBox(
                  height: lineHeight,
                  width: lineWidth,
                  child: DecoratedBox(decoration: BoxDecoration(color: Colors.white)),
                ),
              ],
            );
          }),
        );
      },
    );
  }
}