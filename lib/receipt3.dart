import 'package:flutter/material.dart';

// https://dribbble.com/shots/7355190-Receipt-App/attachments/254360?mode=media

class ReceiptApp3 extends StatefulWidget {
  @override
  _ReceiptApp3State createState() => _ReceiptApp3State();
}

class _ReceiptApp3State extends State<ReceiptApp3>
    with TickerProviderStateMixin {
  String _image =
      "https://cdn.pixabay.com/photo/2019/09/30/14/29/books-4515917__340.jpg";
  TabController _tabController;
  Color _color = Color.fromRGBO(255, 185, 104, 1);
  double boxHeight = 0.0;
  bool isSelected = false;

  @override
  void initState() {
    // TODO: implement initState
    super.initState();
    _tabController = TabController(length: 4, vsync: this);
  }

  void onChanged(){
    isSelected = !isSelected;
    isSelected? boxHeight = 168.0: boxHeight = 0.0;
  }

  @override
  Widget build(BuildContext context) {
    final screenHeight = MediaQuery.of(context).size.height;
    return Scaffold(
      body: Stack(
        children: <Widget>[
          // top
          Positioned(
              top: 0,
              left: 0,
              right: 0,
              child: Container(
                height: screenHeight * 0.5,
                decoration: BoxDecoration(
                    image: DecorationImage(
                        image: NetworkImage(_image), fit: BoxFit.fill)),
                child: Padding(
                  padding: const EdgeInsets.only(left: 24.0, bottom: 48.0),
                  child: Column(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: <Widget>[
                      Padding(
                        padding: const EdgeInsets.only(right: 24.0),
                        child: SafeArea(
                          top: true,
                          left: true,
                          right: true,
                          child: Row(
                            children: <Widget>[
                              Icon(Icons.arrow_back_ios,
                                  size: 20.0, color: Colors.white),
                              Spacer(),
                              Icon(Icons.save, size: 20.0, color: Colors.white)
                            ],
                          ),
                        ),
                      ),
                      RichText(
                        text: TextSpan(children: [
                          TextSpan(
                              text: "Hello,\n",
                              style: TextStyle(
                                  color: Colors.white,
                                  fontSize: 40.0,
                                  fontWeight: FontWeight.bold)),
                          TextSpan(
                              text: "Christian",
                              style: TextStyle(
                                  color: Colors.white, fontSize: 40.0)),
                        ]),
                      ),
                      Text(
                        "You have 3 receipts, with 2 allocated",
                        style: TextStyle(
                            color: Colors.white,
                            fontSize: 16.0,
                            fontWeight: FontWeight.w600),
                      ),
                      Container(
                        margin: EdgeInsets.only(right: 24.0),
                        height: 40,
                        decoration: BoxDecoration(
                            color: Colors.white,
                            borderRadius: BorderRadius.circular(4.0)),
                        child: TextField(
                          decoration: InputDecoration(
                              contentPadding: EdgeInsets.all(10.0),
                              border: InputBorder.none,
                              hintText: "text",
                              suffixIcon: Icon(Icons.close,
                                  size: 16.0, color: Colors.black)),
                        ),
                      ),
                      Container(
                        height: 40,
                        child: TabBar(
                          controller: _tabController,
                          isScrollable: true,
                          labelColor: Colors.white,
                          labelStyle: TextStyle(
                              fontSize: 16.0, fontWeight: FontWeight.w600),
                          unselectedLabelColor: Colors.grey,
                          unselectedLabelStyle: TextStyle(
                              fontSize: 16.0, fontWeight: FontWeight.w600),
                          indicatorColor: Colors.white,
                          indicatorWeight: 2.0,
                          indicatorSize: TabBarIndicatorSize.label,
                          tabs: <Widget>[
                            Tab(text: "Recent"),
                            Tab(text: "Expense types"),
                            Tab(text: "Cost High to Low"),
                            Tab(text: "Cost Low to High"),
                          ],
                        ),
                      )
                    ],
                  ),
                ),
              )),
          // bottom
          Positioned(
            bottom: 0,
            left: 0,
            right: 0,
            child: Container(
              height: screenHeight * 0.55,
              decoration: BoxDecoration(
                  color: Colors.white,
                  borderRadius: BorderRadius.only(
                      topLeft: Radius.circular(24.0),
                      topRight: Radius.circular(24.0))),
              child: TabBarView(controller: _tabController, children: [
                // Recent
                Container(
                  margin: EdgeInsets.only(
                      left: 16.0, right: 16.0, top: 24.0, bottom: 24.0),
                  child: SingleChildScrollView(
                    scrollDirection: Axis.vertical,
                    child: Column(
                      children: <Widget>[
                        Container(
                          height: 40,
//                        color: Colors.black,
                          child: Row(
                            children: <Widget>[
                              Flexible(
                                flex: 1,
                                child: IconButton(
                                  icon: Icon(isSelected? Icons.keyboard_arrow_down:Icons.arrow_forward_ios,
                                      size: 20.0, color: _color),
                                  onPressed: () {
                                    setState(() {
                                      // on clicked -> open
                                      onChanged();
                                    });
                                  },
                                ),
                              ),
                              Flexible(
                                  flex: 2,
                                  child: Icon(Icons.folder_open,
                                      size: 24.0, color: _color)),
                              Flexible(
                                  flex: 7,
                                  child: Text(
                                    "How To Maintain Your Mental Health",
                                    style: TextStyle(
                                        color: Colors.black,
                                        fontSize: 16.0,
                                        fontWeight: FontWeight.w600),
                                  )),
                            ],
                          ),
                        ),
                        Divider(),
                        Container(
                          height: boxHeight,
                          child: Column(
                            children: <Widget>[
                              Container(
                                height: 40,
                                child: Row(
                                  children: <Widget>[
                                    Flexible(flex: 1, child: Container()),
                                    Flexible(
                                        flex: 2,
                                        child: Icon(Icons.folder,
                                            size: 24.0, color: _color)),
                                    Flexible(
                                        flex: 7,
                                        child: Text(
                                          "From Wetlands To Canals And Damssknvcadlkcnlkasdncaslk",
                                          style: TextStyle(
                                              color: Colors.black,
                                              fontSize: 16.0,
                                              fontWeight: FontWeight.w600),
                                          maxLines: 1, overflow: TextOverflow.ellipsis,
                                        )),
                                  ],
                                ),
                              ),
                              Divider(),
                              Container(
                                height: 40,
                                child: Row(
                                  children: <Widget>[
                                    Flexible(flex: 1, child: Container()),
                                    Flexible(
                                        flex: 2,
                                        child: Icon(Icons.folder,
                                            size: 24.0, color: _color)),
                                    Flexible(
                                        flex: 7,
                                        child: Text(
                                          "Selecting The Right Hotel",
                                          style: TextStyle(
                                              color: Colors.black,
                                              fontSize: 16.0,
                                              fontWeight: FontWeight.w600),
                                          maxLines: 1, overflow: TextOverflow.ellipsis,
                                        )),
                                  ],
                                ),
                              ),
                              Divider(),
                              Container(
                                height: 40,
                                child: Row(
                                  children: <Widget>[
                                    Flexible(flex: 1, child: Container()),
                                    Flexible(
                                        flex: 2,
                                        child: Icon(Icons.folder,
                                            size: 24.0, color: _color)),
                                    Flexible(
                                        flex: 7,
                                        child: Text(
                                          "It S Hurricane Season But We Are Visitin",
                                          style: TextStyle(
                                              color: Colors.black,
                                              fontSize: 16.0,
                                              fontWeight: FontWeight.w600),
                                          maxLines: 1, overflow: TextOverflow.ellipsis,
                                        )),
                                  ],
                                ),
                              ),
                              Divider(),
                            ],
                          ),
                        ),
                        Container(
                          height: 40,
//                        color: Colors.black,
                          child: Row(
                            children: <Widget>[
                              Flexible(
                                flex: 1,
                                child: IconButton(
                                  icon: Icon(Icons.arrow_forward_ios,
                                      size: 20.0, color: _color),
                                  onPressed: () {
                                  },
                                ),
                              ),
                              Flexible(
                                  flex: 2,
                                  child: Icon(Icons.folder_open,
                                      size: 24.0, color: _color)),
                              Flexible(
                                  flex: 7,
                                  child: Text(
                                    "Getting Cheap Airfare For Last Minute",
                                    style: TextStyle(
                                        color: Colors.black,
                                        fontSize: 16.0,
                                        fontWeight: FontWeight.w600),
                                    maxLines: 1, overflow: TextOverflow.ellipsis,
                                  )),
                            ],
                          ),
                        ),
                        Divider(),
                        Container(
                          height: 40,
//                        color: Colors.black,
                          child: Row(
                            children: <Widget>[
                              Flexible(
                                flex: 1,
                                child: IconButton(
                                  icon: Icon(Icons.arrow_forward_ios,
                                      size: 20.0, color: _color),
                                  onPressed: () {
                                  },
                                ),
                              ),
                              Flexible(
                                  flex: 2,
                                  child: Icon(Icons.folder_open,
                                      size: 24.0, color: _color)),
                              Flexible(
                                  flex: 7,
                                  child: Text(
                                    "Become A Travel Pro In Onew Easy Lesson",
                                    style: TextStyle(
                                        color: Colors.black,
                                        fontSize: 16.0,
                                        fontWeight: FontWeight.w600),
                                    maxLines: 1, overflow: TextOverflow.ellipsis,
                                  )),
                            ],
                          ),
                        ),
                        Divider(),

                      ],
                    ),
                  ),
                ),
                Placeholder(color: Colors.red),
                Placeholder(color: Colors.green),
                Placeholder(color: Colors.blue),
              ]),
            ),
          ),


        ],
      ),
    );
  }
}
