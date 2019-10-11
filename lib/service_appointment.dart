import 'package:flutter/material.dart';

class ServiceAppointment extends StatefulWidget {
  @override
  _ServiceAppointmentState createState() => _ServiceAppointmentState();
}

class _ServiceAppointmentState extends State<ServiceAppointment> {
  String _image = "https://cdn.pixabay.com/photo/2018/08/18/13/26/interface-3614766__340.png";
  String description =
      "Fast acting service: We undersatnd the urgency behind LG AC\nrepair and hence we provide service as fast as with 3 hours after\nsetting up yout request(this facility is conditioned to service\navailablity) Ort guarantee: When your repaired or serviced LG\nAC(by using Urban Clap) faces any issue within 30 days. It\nbecomes our guarantee. We here at Urban Clap provides a\nstrong 30 days guarantee on our LG AC services and repair.";
  Color _color = Color.fromRGBO(235, 66, 53, 1);
  Color _color2 = Color.fromRGBO(52, 168, 83, 1);
  Color _color3 = Color.fromRGBO(47, 127, 234, 1);
  Color _color4 = Color.fromRGBO(250, 189, 5, 1);

  @override
  Widget build(BuildContext context) {
    final screenHeight = MediaQuery.of(context).size.height;
//    final screenWidth = MediaQuery.of(context).size.width;
    return Scaffold(
      body: Column(
        children: <Widget>[
          // image
          Flexible(
              flex: 2,
              child: Image.network(
                _image,
                fit: BoxFit.fill,
                width: double.infinity,
              )),

          // white container
          Flexible(
            flex: 5,
            child: Padding(
              padding: const EdgeInsets.symmetric(horizontal: 16.0),
              child: Column(
                mainAxisAlignment: MainAxisAlignment.start,
                children: <Widget>[
                  Row(
                    crossAxisAlignment: CrossAxisAlignment.center,
                    children: <Widget>[
                      // check icon
                      Flexible(
                          flex: 1,
                          child: Column(
                            mainAxisAlignment: MainAxisAlignment.center,
                            children: <Widget>[
                              Icon(
                                Icons.check_circle,
                                size: 32.0,
                                color: _color,
                              ),
                              Container(
                                height: 48.0,
                                width: 1.5,
                                color: _color2,
                              ),
                              Icon(
                                Icons.check_circle,
                                size: 32.0,
                                color: _color2,
                              ),
                              Container(
                                height: 48.0,
                                width: 1.5,
                                color: _color3,
                              ),
                              Icon(
                                Icons.remove_circle,
                                size: 32.0,
                                color: _color3,
                              ),
                              Container(
                                height: 48.0,
                                width: 1.5,
                                color: _color4,
                              ),
                              Icon(
                                Icons.remove_circle,
                                size: 32.0,
                                color: _color4,
                              ),
                            ],
                          )),
                      SizedBox(width: 8.0),
                      // container height: 70;
                      Flexible(
                        flex: 6,
                        child: Column(
                          mainAxisAlignment: MainAxisAlignment.start,
                          children: <Widget>[
                            Container(
                              margin: EdgeInsets.only(top: 12.0),
                              padding: EdgeInsets.symmetric(vertical: 8.0, horizontal: 16.0),
                              height: 70,
                              width: double.infinity,
                              color: _color,
                              child: Column(
                                crossAxisAlignment: CrossAxisAlignment.start,
                                mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                                children: <Widget>[
                                  Text(
                                    "Choose the type of AC",
                                    style: TextStyle(
                                        color: Colors.white,
                                        fontSize: 16.0,
                                        fontWeight: FontWeight.bold),
                                  ),
                                  Text(
                                    "We Serviced all types of ACs: Split, Window, Central",
                                    style: TextStyle(
                                        color: Colors.white,
                                        fontSize: 14.0,
                                        fontWeight: FontWeight.bold),
                                  ),
                                ],
                              ),
                            ),
                            Container(
                              margin: EdgeInsets.only(top: 12.0),
                              padding: EdgeInsets.symmetric(vertical: 8.0, horizontal: 16.0),
                              height: 70,
                              width: double.infinity,
                              color: _color2,
                              child: Column(
                                crossAxisAlignment: CrossAxisAlignment.start,
                                mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                                children: <Widget>[
                                  Text(
                                    "Choose the service you need",
                                    style: TextStyle(
                                        color: Colors.white,
                                        fontSize: 16.0,
                                        fontWeight: FontWeight.bold),
                                  ),
                                  Text(
                                    "We provide repairs, installations & servicing",
                                    style: TextStyle(
                                        color: Colors.white,
                                        fontSize: 14.0,
                                        fontWeight: FontWeight.bold),
                                  ),
                                ],
                              ),
                            ),
                            Container(
                              margin: EdgeInsets.only(top: 12.0),
                              padding: EdgeInsets.symmetric(vertical: 8.0, horizontal: 16.0),
                              height: 70,
                              width: double.infinity,
                              color: _color3,
                              child: Column(
                                crossAxisAlignment: CrossAxisAlignment.start,
                                mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                                children: <Widget>[
                                  Text(
                                    "Choose your time-slot",
                                    style: TextStyle(
                                        color: Colors.white,
                                        fontSize: 16.0,
                                        fontWeight: FontWeight.bold),
                                  ),
                                  Text(
                                    "We service from 9 AM - 9 PM",
                                    style: TextStyle(
                                        color: Colors.white,
                                        fontSize: 14.0,
                                        fontWeight: FontWeight.bold),
                                  ),
                                ],
                              ),
                            ),
                            Container(
                              margin: EdgeInsets.only(top: 12.0),
                              padding: EdgeInsets.symmetric(vertical: 8.0, horizontal: 16.0),
                              height: 70,
                              width: double.infinity,
                              color: _color4,
                              child: Column(
                                crossAxisAlignment: CrossAxisAlignment.start,
                                mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                                children: <Widget>[
                                  Text(
                                    "Hassie-free service",
                                    style: TextStyle(
                                        color: Colors.white,
                                        fontSize: 16.0,
                                        fontWeight: FontWeight.bold),
                                  ),
                                  Text(
                                    "get in touch with you one hour",
                                    style: TextStyle(
                                        color: Colors.white,
                                        fontSize: 14.0,
                                        fontWeight: FontWeight.bold),
                                  ),
                                ],
                              ),
                            ),
                          ],
                        ),
                      ),
                    ],
                  )
                ],
              ),
            ),
          ),

          // text
          Flexible(
            flex: 3,
            child: Padding(
              padding: const EdgeInsets.symmetric(horizontal: 24.0),
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: <Widget>[
                  Text(
                    "Service Appointment",
                    style:
                        TextStyle(color: Colors.black, fontSize: 16.0, fontWeight: FontWeight.bold),
                  ),
                  SizedBox(
                    height: 8.0,
                  ),
                  Text(
                    description,
                    style: TextStyle(
                        color: Colors.black45, fontSize: 12.0, fontWeight: FontWeight.w600),
                  ),
                  SizedBox(
                    height: 16.0,
                  ),
                  Container(
                    margin: EdgeInsets.symmetric(horizontal: 24.0),
                    height: 40.0,
                    color: Colors.grey[300],
                    child: Center(
                        child: Text(
                      "Continue",
                      style: TextStyle(
                          color: Colors.black, fontSize: 16.0, fontWeight: FontWeight.w600),
                    )),
                  )
                ],
              ),
            ),
          ),
        ],
      ),
    );
  }
}
