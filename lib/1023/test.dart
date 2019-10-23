import 'dart:math';

import 'package:flutter/material.dart';

var cardAspectRatio = 12.0 / 16.0;
var widgetAspectRatio = cardAspectRatio * 1.2;

class Test001 extends StatefulWidget {
  @override
  _Test001State createState() => _Test001State();
}

class _Test001State extends State<Test001> {
  var currentPage = title.length - 1.0;

  @override
  Widget build(BuildContext context) {
    PageController controller = PageController(initialPage: title.length - 1);
    controller.addListener(() {
      setState(() {
        currentPage = controller.page;
      });
    });

    return Scaffold(
      body: Stack(
        children: <Widget>[
          CardScrollWidget(currentPage),
          Positioned.fill(
              child: PageView.builder(
                  itemCount: title.length,
                  controller: controller,
                  itemBuilder: (BuildContext context, int index) {
                    return Container();
                  })),
        ],
      ),
    );
  }
}

List<String> title = [
  "Hounted Ground",
  "Hounted Ground2",
  "Hounted Ground3",
  "Hounted Ground4",
];

class CardScrollWidget extends StatelessWidget {
  var currentPage;
  var padding = 20.0;
  var verticalInset = 20.0;

  CardScrollWidget(this.currentPage);

  @override
  Widget build(BuildContext context) {
    return AspectRatio(
      aspectRatio: widgetAspectRatio,
      child: LayoutBuilder(
        builder: (BuildContext context, BoxConstraints constraints) {
          var width = constraints.maxWidth;
          var height = constraints.maxHeight;

          var safeWidth = width - 2*padding;
          var safeHeight = height - 2*padding;

          var heightOfPrimaryCard = safeHeight;
          var widthOfPrimaryCard = heightOfPrimaryCard * cardAspectRatio;

          var primaryCardLeft = safeWidth - widthOfPrimaryCard;
          var horizontalInset = primaryCardLeft / 2;

          List<Widget> cardList = new List();

          for(var i = 0; i< title.length; i++){
            var delta = i - currentPage;
            bool isOnRight = delta >0;
            var start = padding + max(primaryCardLeft - horizontalInset * -delta * (isOnRight? 15:1), 0.0);
            
            var cardItem = Positioned.directional(
                top: padding + verticalInset * max(-delta, 0.0),
                bottom: padding + verticalInset * max(-delta, 0.0),
                start: start,
                textDirection: TextDirection.rtl,
                child: ClipRRect(
                  borderRadius: BorderRadius.circular(16.0),
                  child: Container(
                    decoration: BoxDecoration(color: Colors.white,
                    boxShadow: [BoxShadow(
                      color: Colors.black12,
                      spreadRadius: 2,
                      blurRadius: 4
                    )]),

                    child: AspectRatio(aspectRatio: cardAspectRatio,
                    child: Stack(
                      fit: StackFit.expand,
                      children: <Widget>[
                        //
                        Placeholder(),
                        Center(child: Text(title[i], style: TextStyle(color: Colors.black, fontSize: 40.0, fontWeight: FontWeight.bold),))
                      ],
                    ),),
                  ),
                ));
            cardList.add(cardItem);
          }

          return Stack(
            children: cardList,
          );
        },
      ),
    );
  }
}
