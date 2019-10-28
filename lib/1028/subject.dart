import 'package:flutter/material.dart';

// https://dribbble.com/shots/7849915-Youth-course-and-personal-center-page/attachments/479259?mode=media

class SubjectApp extends StatefulWidget {
  @override
  _SubjectAppState createState() => _SubjectAppState();
}

class _SubjectAppState extends State<SubjectApp> {
  int _currentIndex = 1;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Container(
        child: Placeholder(),
      ),

      bottomNavigationBar: BottomNavigationBar(
        currentIndex: _currentIndex,
          onTap: (idx){
          setState(() {
            _currentIndex = idx;
          });
          },
          showSelectedLabels: true,
          showUnselectedLabels: true,

          selectedLabelStyle: TextStyle(fontWeight: FontWeight.w600),
          selectedItemColor: Colors.teal,
          selectedFontSize: 14.0,
          selectedIconTheme: IconThemeData(color: Colors.teal, size: 32.0),

          unselectedLabelStyle: TextStyle(fontWeight: FontWeight.w600),
          unselectedItemColor: Colors.grey[300],
          unselectedFontSize: 12.0,
          unselectedIconTheme: IconThemeData(color: Colors.grey[300], size: 28.0),

          items: [
            BottomNavigationBarItem(icon: Icon(Icons.home), title: Text("Home")),
            BottomNavigationBarItem(icon: Icon(Icons.book), title: Text("Subject")),
            BottomNavigationBarItem(icon: Icon(Icons.whatshot), title: Text("Growing")),
            BottomNavigationBarItem(icon: Icon(Icons.person_outline), title: Text("Profile")),
          ]),
    );
  }
}
