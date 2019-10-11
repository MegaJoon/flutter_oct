import 'package:flutter/material.dart';

class CheckOut extends StatefulWidget {
  @override
  _CheckOutState createState() => _CheckOutState();
}

class _CheckOutState extends State<CheckOut> {
  int currentPage = 2;
  PageController pageController;
  double pageControllerPage = 0.0;

  @override
  void initState() {
    super.initState();
    pageController = new PageController(initialPage: currentPage, viewportFraction: 0.25);
  }

  @override
  Widget build(BuildContext context) {
    final screenHeight = MediaQuery.of(context).size.height;
    return Scaffold(
      body: Stack(
        children: <Widget>[
          Container(
            color: Colors.white,
          ),
          Positioned(
            left: screenHeight * 0.5 - 150.0,
            child: Container(
              height: screenHeight,
              width: screenHeight,
              decoration: BoxDecoration(shape: BoxShape.circle, color: Colors.grey[300]),
            ),
          ),
          Positioned(
            top: 0,
            bottom: 0,
            right: 0,
            child: Container(
                height: screenHeight,
                width: 300.0,
//              color: Colors.black,
                child: NotificationListener<ScrollNotification>(
                  onNotification: (ScrollNotification notification){
                    setState(() {
                      pageControllerPage = pageController.page;
//                      print(pageControllerPage);
                    });
                  },
                  child: PageView.builder(

                      scrollDirection: Axis.vertical,
                      controller: pageController,
                      onPageChanged: (pageIdx) {
                        currentPage = pageIdx;
                      },
                      physics: BouncingScrollPhysics(),
                      itemCount: 99,
                      itemBuilder: (BuildContext context, int index) {
                        int offsetX = (index - currentPage).abs() * 40;
                        double angleX = (currentPage - index) / 3;
                        print("offsetX = $offsetX, index = $index");
                        return Container(
                          height: 150,
                          width: 300,
//                          color: Colors.amber,
                          alignment: Alignment.centerLeft,
                          // main container
                          child: Transform.translate(
                            offset: Offset(offsetX.toDouble(), 0),
                          child: Transform.rotate(
                              angle: angleX,
                              child: Container(
                                height: 120,
                                width: 200,
                                color: Colors.teal,
                                child: Text(
                                  index.toString(),
                                  style: TextStyle(
                                      color: Colors.white, fontSize: 32.0, fontWeight: FontWeight.bold),
                                ),
                              ),
                            ),
                          ),
                        );
                      }),
                )),
          )
        ],
      ),
    );
  }
}
