import 'package:flutter/material.dart';
import 'package:google_maps_flutter/google_maps_flutter.dart';

// https://dribbble.com/shots/7415439-HSBC-Find-HSBC
// https://pub.dev/packages/google_maps_flutter

class HSBC extends StatefulWidget {
  @override
  _HSBCState createState() => _HSBCState();
}

class _HSBCState extends State<HSBC> {
  String _image =
      "https://cdn.pixabay.com/photo/2017/07/04/09/06/landscape-2470398__340.jpg";

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Stack(
        children: <Widget>[
          // background: google map
          Positioned(
            top: 0,
            left: 0,
            right: 0,
            bottom: 0,
            child: GoogleMap(
                initialCameraPosition: CameraPosition(
                    target: LatLng(37.50573803291112, 126.9531999345871),
                    zoom: 16.0)),
          ),

          // search bar
          Positioned(
            top: 0,
            left: 24.0,
            right: 24.0,
            child: SafeArea(
                top: true,
                left: true,
                right: true,
                child: Container(
                  height: 40.0,
                  decoration: BoxDecoration(
                      color: Colors.white,
                      borderRadius: BorderRadius.circular(4.0)),
                  child: TextField(
                    decoration: InputDecoration(
                        contentPadding: EdgeInsets.all(8.0),
                        border: InputBorder.none,
                        prefixIcon: Icon(
                          Icons.search,
                          size: 28.0,
                          color: Colors.grey,
                        ),
                        hintText: "Search HSBC Branches / ATM",
                        hintStyle: TextStyle(
                            color: Colors.grey,
                            fontSize: 14.0,
                            fontWeight: FontWeight.w600)),
                  ),
                )),
          ),

          // bottom
          Positioned(
            bottom: 32.0,
            left: 24.0,
            right: 24.0,
            child: Container(
              padding: EdgeInsets.symmetric(horizontal: 16.0, vertical: 8.0),
              height: 80.0,
              decoration: BoxDecoration(
                  color: Colors.white,
                  borderRadius: BorderRadius.circular(8.0)),
              child: Row(
                children: <Widget>[
                  Container(
                    height: 64.0,
                    width: 64.0,
                    decoration: BoxDecoration(
                        borderRadius: BorderRadius.circular(4.0),
                        image: DecorationImage(
                            image: NetworkImage(_image), fit: BoxFit.fill)),
                  ),
                  SizedBox(
                    width: 8.0,
                  ),
                  Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: <Widget>[
                      Text(
                        "HSBC ATM KL 1",
                        style: TextStyle(
                            color: Colors.black,
                            fontSize: 14.0,
                            fontWeight: FontWeight.w600),
                      ),
                      Text(
                        "JL Kuala Lumpur no. 234, Malaysia",
                        style: TextStyle(
                            color: Colors.grey[300],
                            fontSize: 12.0,
                            fontWeight: FontWeight.w600),
                      ),
                      Container(
                        height: 24.0,
                        width: 250.0,
                        child: Row(
                          crossAxisAlignment: CrossAxisAlignment.end,
                          children: <Widget>[
                            Text(
                              "0.5 km",
                              style: TextStyle(
                                  color: Colors.red,
                                  fontSize: 12.0,
                                  fontWeight: FontWeight.bold),
                            ),
                            Spacer(),
                            Container(
                              height: 24.0,
                              width: 100.0,
                              decoration: ShapeDecoration(
                                  shape: StadiumBorder(),
                                  color: Color.fromRGBO(1, 174, 214, 1)),
                              child: Center(
                                child: Row(
                                  mainAxisAlignment: MainAxisAlignment.center,
                                  crossAxisAlignment: CrossAxisAlignment.end,
                                  children: <Widget>[
                                    Icon(
                                      Icons.arrow_forward,
                                      size: 12.0,
                                      color: Colors.white,
                                    ),
                                    Text(
                                      "Direction",
                                      style: TextStyle(
                                          color: Colors.white,
                                          fontSize: 12.0,
                                          fontWeight: FontWeight.w300),
                                    )
                                  ],
                                ),
                              ),
                            ),
                          ],
                        ),
                      )
                    ],
                  )
                ],
              ),
            ),
          ),

          // pin
          Positioned(
            left: 10.0,
            top: 150.0,
            child: Icon(
              Icons.location_on,
              size: 36.0,
              color: Colors.red,
            ),
          ),

          Positioned(
            right: 50.0,
            top: 100.0,
            child: Icon(
              Icons.location_on,
              size: 36.0,
              color: Colors.red,
            ),
          ),

          Positioned(
            right: 60.0,
            bottom: 200.0,
            child: Icon(
              Icons.location_on,
              size: 36.0,
              color: Colors.red,
            ),
          ),

          Positioned(
            bottom: 120.0,
            right: 80.0,
            child: Container(
              height: 150.0,
              width: 150.0,
              decoration: BoxDecoration(
                  shape: BoxShape.circle, color: Colors.red.withOpacity(0.5)),
            ),
          )
        ],
      ),
      bottomNavigationBar: BottomNavigationBar(
          backgroundColor: Colors.white,
          elevation: 0,
          unselectedItemColor: Colors.grey[300],
          unselectedFontSize: 12.0,
          unselectedLabelStyle: TextStyle(
            fontWeight: FontWeight.w600,
          ),
          unselectedIconTheme: IconThemeData(size: 28.0),
          selectedFontSize: 12.0,
          selectedItemColor: Colors.black,
          selectedIconTheme: IconThemeData(color: Colors.red, size: 28.0),
          selectedLabelStyle: TextStyle(fontWeight: FontWeight.w600),
          showUnselectedLabels: true,
          showSelectedLabels: true,
          currentIndex: 2,
          items: [
            BottomNavigationBarItem(
                icon: Icon(Icons.home), title: Text("Home")),
            BottomNavigationBarItem(
                icon: Icon(Icons.insert_drive_file), title: Text("History")),
            BottomNavigationBarItem(
                icon: Icon(Icons.location_on), title: Text("Find HSBC")),
            BottomNavigationBarItem(
                icon: Icon(Icons.person_outline), title: Text("Account")),
          ]),
    );
  }
}
