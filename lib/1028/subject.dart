import 'package:flutter/material.dart';

// https://dribbble.com/shots/7849915/attachments/479260?mode=media

class SubjectApp extends StatefulWidget {
  @override
  _SubjectAppState createState() => _SubjectAppState();
}

class _SubjectAppState extends State<SubjectApp> {
  List<Widget> pages;

  // bottom index
  int _currentIndex = 1;

  @override
  Widget build(BuildContext context) {
    _definePages();

    return Scaffold(
      body: pages[_currentIndex],

      // bottom
      bottomNavigationBar: BottomNavigationBar(
          currentIndex: _currentIndex,
          onTap: (idx) {
            setState(() {
              _currentIndex = idx;
            });
          },
          showUnselectedLabels: true,
          showSelectedLabels: true,
          selectedIconTheme: IconThemeData(color: Colors.teal, size: 28.0),
          selectedLabelStyle: TextStyle(fontWeight: FontWeight.w600),
          selectedFontSize: 16.0,
          selectedItemColor: Colors.teal,
          unselectedIconTheme: IconThemeData(color: Colors.grey, size: 26.0),
          unselectedLabelStyle: TextStyle(fontWeight: FontWeight.w400),
          unselectedFontSize: 14.0,
          unselectedItemColor: Colors.grey,
          items: [
            BottomNavigationBarItem(
              icon: Icon(Icons.home),
              title: Text("Home"),
            ),
            BottomNavigationBarItem(
              icon: Icon(Icons.subject),
              title: Text("Subject"),
            ),
            BottomNavigationBarItem(
              icon: Icon(Icons.whatshot),
              title: Text("Growing"),
            ),
            BottomNavigationBarItem(
              icon: Icon(Icons.person_outline),
              title: Text("Profile"),
            ),
          ]),
    );
  }

  _definePages(){
    pages = [
      Placeholder(),
      // initial page
      Column(
        children: <Widget>[
          // appbar
          SafeArea(
            top: true,
            left: true,
            right: true,
            child: Container(
              margin: EdgeInsets.symmetric(horizontal: 16.0),
              height: 60.0,
              child: Row(
                children: <Widget>[
                  Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: <Widget>[
                      Text(
                        "Subject",
                        style: TextStyle(color: Colors.black, fontSize: 32.0, fontWeight: FontWeight.w600),
                      ),
                      RichText(
                        text: TextSpan(children: [
                          TextSpan(
                              text: "Today's English porgress", style: TextStyle(color: Colors.grey, fontSize: 12.0, fontWeight: FontWeight.w600)),
                          TextSpan(text: "15 min", style: TextStyle(color: Colors.teal, fontSize: 14.0, fontWeight: FontWeight.w600))
                        ]),
                      )
                    ],
                  ),
                  Spacer(),
                  Icon(
                    Icons.border_color,
                    color: Colors.black,
                    size: 20.0,
                  ),
                ],
              ),
            ),
          )
        ],
      ),
      Placeholder(),
      Placeholder(),
    ];
  }
}
