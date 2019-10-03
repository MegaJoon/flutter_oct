import 'package:flutter/material.dart';

// https://dribbble.com/shots/7306158-Find-A-Flight/attachments/237043?mode=media
// https://api.flutter.dev/flutter/material/DropdownButton-class.html

class FindFlight extends StatefulWidget {
  @override
  _FindFlightState createState() => _FindFlightState();
}

class _FindFlightState extends State<FindFlight> {
  Color _backgroundColor = Color.fromRGBO(81, 41, 161, 1);
  Color _color = Color.fromRGBO(119, 64, 234, 1);
  Color _btnColor = Color.fromRGBO(92, 251, 254, 1);

  String dropdownValue = 'Premium Economy';
  String dropdownValue2 = 'None';

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: _backgroundColor,
      body: Column(
        children: <Widget>[
          _buildAppbar(),
          _buildGreyContainer(),
        ],
      ),
    );
  }

  _buildWhiteContainer() {
    return Positioned(
      bottom: 0,
      left: 0,
      right: 0,
      child: Container(
        padding: EdgeInsets.only(top: 24.0, left: 24.0, right: 24.0),
        height: 400,
        width: MediaQuery.of(context).size.width,
        decoration: BoxDecoration(
            color: Colors.white,
            borderRadius: BorderRadius.only(topLeft: Radius.circular(48.0))),
        child: Column(
          children: <Widget>[
            Expanded(
                flex: 1,
                child: Text("Flight Details",
                    style: TextStyle(
                        color: Colors.black,
                        fontSize: 20.0,
                        fontWeight: FontWeight.bold))),
            Expanded(
                flex: 1,
                child: Row(
                  children: <Widget>[
                    Expanded(
                      flex: 1,
                      child: Padding(
                        padding: const EdgeInsets.symmetric(horizontal: 16.0),
                        child: Column(
                          crossAxisAlignment: CrossAxisAlignment.start,
                          children: <Widget>[
                            Text("Adults 16+",
                                style: TextStyle(
                                    color: Colors.black, fontSize: 12.0)),
                            Container(
                              padding: EdgeInsets.symmetric(horizontal: 16.0),
//                              margin: EdgeInsets.symmetric(horizontal: 16.0),
                              height: 40,
                              decoration: BoxDecoration(
                                  borderRadius: BorderRadius.circular(8.0),
                                  color: Colors.grey[300],
                                  border: Border.all(
                                      color: Colors.grey, width: 1.0)),
                              child: Align(
                                alignment: Alignment.centerLeft,
                                child: Text("3",
                                    style: TextStyle(
                                        color: Colors.black,
                                        fontSize: 16.0,
                                        fontWeight: FontWeight.bold)),
                              ),
                            )
                          ],
                        ),
                      ),
                    ),
                    Expanded(
                      flex: 1,
                      child: Padding(
                        padding: const EdgeInsets.symmetric(horizontal: 16.0),
                        child: Column(
                          crossAxisAlignment: CrossAxisAlignment.start,
                          children: <Widget>[
                            Text("Kids 0-15",
                                style: TextStyle(
                                    color: Colors.black, fontSize: 12.0)),
                            Container(
                              padding: EdgeInsets.symmetric(horizontal: 16.0),
//                              margin: EdgeInsets.symmetric(horizontal: 16.0),
                              height: 40,
                              decoration: BoxDecoration(
                                  borderRadius: BorderRadius.circular(8.0),
                                  color: Colors.grey[300],
                                  border: Border.all(
                                      color: Colors.grey, width: 1.0)),
                              child: Align(
                                alignment: Alignment.centerLeft,
                                child: Text("2",
                                    style: TextStyle(
                                        color: Colors.black,
                                        fontSize: 16.0,
                                        fontWeight: FontWeight.bold)),
                              ),
                            )
                          ],
                        ),
                      ),
                    )
                  ],
                )),
            Expanded(
                flex: 1,
                child: Padding(
                  padding: const EdgeInsets.symmetric(horizontal: 16.0),
                  child: Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: <Widget>[
                      Text("Select Class",
                          style:
                              TextStyle(color: Colors.black, fontSize: 12.0)),
                      Container(
                          padding: EdgeInsets.symmetric(horizontal: 16.0),
                          height: 40,
                          width: double.maxFinite,
                          decoration: BoxDecoration(
                              borderRadius: BorderRadius.circular(8.0),
                              color: Colors.grey[300],
                              border:
                                  Border.all(color: Colors.grey, width: 1.0)),
                          child: _buildDropdown())
                    ],
                  ),
                )),
            Expanded(
                flex: 1,
                child: Padding(
                  padding: const EdgeInsets.symmetric(horizontal: 16.0),
                  child: Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: <Widget>[
                      Text("Stop overs (optional)",
                          style:
                              TextStyle(color: Colors.black, fontSize: 12.0)),
                      Container(
                        padding: EdgeInsets.symmetric(horizontal: 16.0),
                        height: 40,
                        width: double.maxFinite,
                        decoration: BoxDecoration(
                            borderRadius: BorderRadius.circular(8.0),
                            color: Colors.grey[300],
                            border: Border.all(color: Colors.grey, width: 1.0)),
                        child: DropdownButton(
                          value: dropdownValue2,
                          items: ['None', 'None1', 'None2', 'None3']
                              .map((String value2) {
                            return DropdownMenuItem(
                                child: Text(value2), value: value2);
                          }).toList(),
                          onChanged: (newValue) {
                            setState(() {
                              dropdownValue2 = newValue;
                            });
                          },
                          icon: Icon(Icons.keyboard_arrow_down,
                              color: _backgroundColor),
                          iconSize: 16.0,
                          style: TextStyle(
                              color: Colors.black,
                              fontSize: 16.0,
                              fontWeight: FontWeight.bold),
                          isExpanded: true,
                          elevation: 16,
                        ),
                      ),
                    ],
                  ),
                )),
            Expanded(
                flex: 1,
                child: Container(
                  margin: EdgeInsets.only(bottom: 16.0, right: 16.0),
                  alignment: Alignment.bottomRight,
                  child: Container(
                    height: 48,
                    width: 100,
                    decoration: BoxDecoration(
                        borderRadius: BorderRadius.circular(8.0),
                        color: _backgroundColor),
                    child: Row(
                      mainAxisAlignment: MainAxisAlignment.center,
                      children: <Widget>[
                        Text("Departure",
                            style: TextStyle(color: _btnColor, fontSize: 12.0)),
                        Icon(Icons.arrow_forward, size: 16.0, color: _btnColor)
                      ],
                    ),
                  ),
                )),
          ],
        ),
      ),
    );
  }

  _buildGreyContainer() {
    return Container(
      margin: EdgeInsets.only(top: 16.0),
      height: 547,
      width: double.maxFinite,
      decoration: BoxDecoration(
          color: Colors.grey[300],
          borderRadius: BorderRadius.only(topLeft: Radius.circular(48.0))),
      child: Stack(
        children: <Widget>[
          Positioned(
              top: 24,
              left: 24,
              right: 24,
              child: Column(
                mainAxisAlignment: MainAxisAlignment.start,
                children: <Widget>[
                  Text("averager time: 11hrs 15m".toUpperCase(),
                      style: TextStyle(
                          color: Colors.black,
                          fontSize: 14.0,
                          fontWeight: FontWeight.bold)),
                  SizedBox(height: 16),
                  Container(
                    height: 80,
                    width: MediaQuery.of(context).size.width,
                    child: Row(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: <Widget>[
                        Expanded(
                            flex: 3,
                            child: Column(
                              crossAxisAlignment: CrossAxisAlignment.start,
                              children: <Widget>[
                                Text("London",
                                    style: TextStyle(
                                        color: Colors.black, fontSize: 12.0)),
                                Text("LHR".toUpperCase(),
                                    style: TextStyle(
                                        color: Colors.black,
                                        fontSize: 56.0,
                                        fontWeight: FontWeight.w600)),
                              ],
                            )),
                        Expanded(
                            flex: 2,
                            child: Container(
                              height: 80,
                              child: Row(
                                crossAxisAlignment: CrossAxisAlignment.center,
                                mainAxisAlignment:
                                    MainAxisAlignment.spaceBetween,
                                children: <Widget>[
                                  Container(
                                      height: 8,
                                      width: 8,
                                      decoration: BoxDecoration(
                                          shape: BoxShape.circle,
                                          color: Colors.black)),
                                  Container(
                                      height: 8,
                                      width: 8,
                                      decoration: BoxDecoration(
                                          shape: BoxShape.circle,
                                          color: Colors.black)),
                                  Icon(Icons.flight_takeoff,
                                      size: 24.0, color: Colors.deepOrange),
                                  Container(
                                      height: 8,
                                      width: 8,
                                      decoration: BoxDecoration(
                                          shape: BoxShape.circle,
                                          color: Colors.black)),
                                  Container(
                                      height: 8,
                                      width: 8,
                                      decoration: BoxDecoration(
                                          shape: BoxShape.circle,
                                          color: Colors.black))
                                ],
                              ),
                            )),
                        Expanded(
                            flex: 3,
                            child: Padding(
                              padding: const EdgeInsets.only(left: 16.0),
                              child: Column(
                                crossAxisAlignment: CrossAxisAlignment.start,
                                children: <Widget>[
                                  Text("San Francisco",
                                      style: TextStyle(
                                          color: Colors.black, fontSize: 12.0)),
                                  Text("SFO".toUpperCase(),
                                      style: TextStyle(
                                          color: Colors.black,
                                          fontSize: 56.0,
                                          fontWeight: FontWeight.w600)),
                                ],
                              ),
                            )),
                      ],
                    ),
                  )
                ],
              )),
          _buildWhiteContainer(),
        ],
      ),
    );
  }

  _buildAppbar() {
    return SafeArea(
      top: true,
      left: true,
      right: true,
      child: Column(
        children: <Widget>[
          Container(
            margin: EdgeInsets.symmetric(horizontal: 24.0),
            height: 40,
            child: Row(
              children: <Widget>[
                // icon.close
                Container(
                  height: 40,
                  width: 40,
                  decoration: BoxDecoration(
                      borderRadius: BorderRadius.circular(8.0), color: _color),
                  child: Icon(Icons.close, size: 20.0, color: Colors.white),
                ),
                Spacer(),
                RawMaterialButton(
                  onPressed: () {},
                  elevation: 0,
                  fillColor: _btnColor,
                  shape: StadiumBorder(),
                  child: Text("Preview",
                      style: TextStyle(
                          color: _backgroundColor,
                          fontSize: 12.0,
                          fontWeight: FontWeight.bold)),
                )
              ],
            ),
          ),
          // tabbar
          Container(
            margin: EdgeInsets.only(top: 16.0, left: 24.0),
            height: 40,
//                  color: Colors.amber,
            child: ListView(
              shrinkWrap: true,
              scrollDirection: Axis.horizontal,
              children: <Widget>[
                // 4
                Text("Flights",
                    style: TextStyle(
                        color: Colors.white,
                        fontSize: 28.0,
                        fontWeight: FontWeight.w600)),
                SizedBox(width: 16),
                Text("Departure",
                    style: TextStyle(
                        color: Colors.grey,
                        fontSize: 28.0,
                        fontWeight: FontWeight.w600)),
                SizedBox(width: 16),
                Text("Hotels",
                    style: TextStyle(
                        color: Colors.grey,
                        fontSize: 28.0,
                        fontWeight: FontWeight.w600)),
                SizedBox(width: 16),
                Text("Car",
                    style: TextStyle(
                        color: Colors.grey,
                        fontSize: 28.0,
                        fontWeight: FontWeight.w600)),
              ],
            ),
          )
        ],
      ),
    );
  }

  _buildDropdown() {
    return DropdownButton<String>(
      isExpanded: true,
      value: dropdownValue,
      icon: Icon(Icons.keyboard_arrow_down, color: _backgroundColor),
      iconSize: 16.0,
//                          isDense: true,
      style: TextStyle(
          color: Colors.black, fontSize: 16.0, fontWeight: FontWeight.bold),
      elevation: 16,
      onChanged: (String newValue) {
        setState(() {
          dropdownValue = newValue;
        });
      },
      items: <String>['Premium Economy', 'two', 'three', 'four']
          .map<DropdownMenuItem<String>>((String value) {
        return DropdownMenuItem(child: Text(value), value: value);
      }).toList(),
    );
  }
}
