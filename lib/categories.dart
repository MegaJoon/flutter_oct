import 'package:flutter/material.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';

// https://dribbble.com/shots/7392749-Daily-UI-099-Categories/attachments/273479?mode=media

class Categories extends StatefulWidget {
  @override
  _CategoriesState createState() => _CategoriesState();
}

class _CategoriesState extends State<Categories> {
  Color _backgroundColor = Color.fromRGBO(38, 38, 38, 1);
  Color _color = Color.fromRGBO(243, 188, 88, 1);
  Color _iconColor = Color.fromRGBO(178, 82, 26, 1);

//  bool isSelected = false;
  int currentIndex = 0;

  void onSelected(index) {
    currentIndex = index;
    sport[currentIndex].isSelected = !sport[currentIndex].isSelected;
    print("currentIndex = $currentIndex");
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: _backgroundColor,
      body: Padding(
        padding: const EdgeInsets.only(left: 16.0, right: 16.0, bottom: 16.0),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: <Widget>[
            // safearea
            SafeArea(
              top: true,
              left: true,
              right: true,
              child: Container(
                height: 40.0,
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.start,
                  children: <Widget>[
                    Icon(
                      Icons.arrow_back,
                      size: 16.0,
                      color: _color,
                    ),
                    Text(
                      "Back",
                      style: TextStyle(color: _color, fontSize: 14.0, fontWeight: FontWeight.w600),
                    )
                  ],
                ),
              ),
            ),

            Text(
              "Select your preferred sports",
              style: TextStyle(color: _color, fontSize: 24.0, fontWeight: FontWeight.bold),
            ),

            // gridview
            Container(
              margin: EdgeInsets.only(bottom: 24.0),
              height: 400,
//              color: _backgroundColor,
              child: GridView.builder(
                padding: EdgeInsets.only(top: 16.0),
                itemCount: sport.length,
                gridDelegate: SliverGridDelegateWithFixedCrossAxisCount(
                    crossAxisCount: 3, crossAxisSpacing: 8.0, mainAxisSpacing: 8.0),
                itemBuilder: (BuildContext context, int index) {
                  return InkWell(
                    onTap: () {
                      setState(() {
                        onSelected(index);
//                        currentIndex = index;
//                        print("index = $index");
                      });
                    },
                    child: Container(
                      decoration: BoxDecoration(
                          border: Border.all(
                              color: (sport[index].isSelected) ? _color : _iconColor, width: 2.0),
                          color: (sport[index].isSelected) ? _color : _backgroundColor),
                      child: Column(
                        mainAxisAlignment: MainAxisAlignment.center,
                        children: <Widget>[
                          Icon(
                            sport[index].ballIcons,
                            size: 40.0,
                            color: _iconColor,
                          ),
                          SizedBox(height: 12.0),
                          Text(
                            sport[index].name,
                            style: TextStyle(
                                color: _iconColor, fontSize: 14.0, fontWeight: FontWeight.w600),
                          )
                        ],
                      ),
                    ),
                  );
                },
              ),
            ),

            Row(
              children: <Widget>[
                Text(
                  "View More Sports",
                  style: TextStyle(color: _color, fontSize: 14.0, fontWeight: FontWeight.w600),
                ),
                Icon(
                  Icons.add,
                  size: 16.0,
                  color: _color,
                )
              ],
            ),

            Spacer(),

            Container(
              height: 60,
              decoration: ShapeDecoration(
                shape: StadiumBorder(),
                color: Color.fromRGBO(244, 65, 100, 1),
              ),
              child: Row(
                mainAxisAlignment: MainAxisAlignment.center,
                children: <Widget>[
                  Text(
                    "Continue",
                    style:
                        TextStyle(color: Colors.black, fontSize: 20.0, fontWeight: FontWeight.w600),
                  ),
                  Icon(
                    Icons.arrow_forward,
                    size: 20.0,
                    color: Colors.black,
                  )
                ],
              ),
            )
          ],
        ),
      ),
    );
  }
}

class Sport {
  IconData ballIcons;
  String name;
  bool isSelected;

  Sport({this.ballIcons, this.name, this.isSelected});
}

List<Sport> sport = [
  Sport(
    ballIcons: FontAwesomeIcons.basketballBall,
    name: "Basketball",
    isSelected: false,
  ),
  Sport(
    ballIcons: FontAwesomeIcons.baseballBall,
    name: "Baseball",
    isSelected: false,
  ),
  Sport(
    ballIcons: FontAwesomeIcons.footballBall,
    name: "Soccer",
    isSelected: false,
  ),
  Sport(
    ballIcons: FontAwesomeIcons.tableTennis,
    name: "Tennis",
    isSelected: false,
  ),
  Sport(
    ballIcons: FontAwesomeIcons.footballBall,
    name: "Football",
    isSelected: false,
  ),
  Sport(
    ballIcons: FontAwesomeIcons.hockeyPuck,
    name: "Hockey",
    isSelected: false,
  ),
  Sport(
    ballIcons: FontAwesomeIcons.volleyballBall,
    name: "Volleyball",
    isSelected: false,
  ),
  Sport(
    ballIcons: FontAwesomeIcons.hands,
    name: "Boxing",
    isSelected: false,
  ),
  Sport(
    ballIcons: FontAwesomeIcons.golfBall,
    name: "Golf",
    isSelected: false,
  ),
];
