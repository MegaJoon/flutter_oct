import 'package:flutter/material.dart';

class CheckOut2 extends StatefulWidget {
  @override
  _CheckOut2State createState() => _CheckOut2State();
}

class _CheckOut2State extends State<CheckOut2> {
  PageController _pageController;
  int _currentIndex = 2;

  @override
  void initState() {
    // TODO: implement initState
    super.initState();
    _pageController = PageController(initialPage: _currentIndex, viewportFraction: 0.2);
  }
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Container(
        child: Row(
          children: <Widget>[
            // Text: selected
            Flexible(
              flex: 3,
              child: Text(
                "selected ->",
                style: TextStyle(color: Colors.black, fontSize: 24.0, fontWeight: FontWeight.bold),
              ),
            ),

            // card pageview
            Flexible(
              flex: 7,
              child: PageView.builder(
                itemCount: 99,
                  controller: _pageController,
                  scrollDirection: Axis.vertical,
                  physics: BouncingScrollPhysics(),
                  onPageChanged: (){
                  
                  },
                  itemBuilder: (BuildContext context, int index){
                return Container(
                  margin: EdgeInsets.only(top: 16.0, bottom: 16.0, left: 24.0, right: 48.0),
                  height: 200.0,
                  width: 100.0,
                  color: Colors.amber,
                );
              }),
            ),
          ],
        ),
      ),
    );
  }
}
