import 'package:flutter/material.dart';

// https://dribbble.com/shots/7322845-Daily-UI-006-User-Profile/attachments/243935?mode=media

class UserProfile extends StatefulWidget {
  @override
  _UserProfileState createState() => _UserProfileState();
}

class _UserProfileState extends State<UserProfile>
    with TickerProviderStateMixin {
  String _profileImage =
      "https://cdn.pixabay.com/photo/2018/09/12/12/14/photographer-3672010_960_720.jpg";
  TabController _tabController;

  @override
  void initState() {
    // TODO: implement initState
    super.initState();
    _tabController = TabController(length: 2, vsync: this);
  }

  @override
  Widget build(BuildContext context) {
    final screenHeight = MediaQuery.of(context).size.height;
    return Scaffold(
      body: Container(
        child: Stack(
          children: <Widget>[
            // top image
            Positioned(
              top: 0,
              left: 0,
              right: 0,
              child: ClipPath(
                clipper: myClipper(),
                child: Container(
                  padding: EdgeInsets.only(bottom: 24.0),
                  height: screenHeight * 0.65,
                  decoration: BoxDecoration(
                      image: DecorationImage(
                          image: NetworkImage(_profileImage),
                          fit: BoxFit.fill)),
                  child: Transform.rotate(
                    angle: -0.10,
                    child: Container(
                      margin: EdgeInsets.only(bottom: 4.0),
                      alignment: Alignment.bottomLeft,
                      height: 80,
                      width: 250,
                      child: Column(
                        crossAxisAlignment: CrossAxisAlignment.end,
                        mainAxisAlignment: MainAxisAlignment.end,
                        children: <Widget>[
                          Text("Ryan Ademir",
                              style: TextStyle(
                                  color: Colors.white,
                                  fontWeight: FontWeight.bold,
                                  fontSize: 40.0)),
                          Text("Vancouver. BC",
                              style: TextStyle(
                                  color: Colors.white, fontSize: 14.0)),
                        ],
                      ),
                    ),
                  ),
                ),
              ),
            ),

            Positioned(
              top: screenHeight * 0.63,
              left: 0,
              right: 0,
              child: Transform.rotate(
                angle: -0.10,
                child: Center(
                  child: Container(
                    height: 4,
                    width: 48,
                    decoration: BoxDecoration(
                        color: Colors.black,
                        borderRadius: BorderRadius.circular(8.0)),
                  ),
                ),
              ),
            ),
            // appbar
            Positioned(
              top: 0,
              left: 0,
              right: 0,
              child: SafeArea(
                  top: true,
                  right: true,
                  left: true,
                  child: Container(
                    margin: EdgeInsets.only(left: 24.0),
                    height: 40,
//                    color: Colors.amber,
                    child: Row(
                      children: <Widget>[
                        Icon(Icons.arrow_back_ios,
                            size: 20.0, color: Colors.white),
                        Spacer(),
                        FlatButton(
                            onPressed: () {},
                            shape: CircleBorder(),
                            color: Colors.black.withOpacity(0.5),
                            child: Icon(Icons.message,
                                color: Colors.white, size: 20.0))
                      ],
                    ),
                  )),
            ),
            Positioned(
              top: 140,
              right: 24,
              child: Container(
                height: 150,
                width: 60,
                child: Column(
//                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: <Widget>[
                    Text("24",
                        style: TextStyle(
                            color: Colors.white,
                            fontSize: 20.0,
                            fontWeight: FontWeight.bold)),
                    Text("Posts",
                        style: TextStyle(
                            color: Colors.grey[500],
                            fontSize: 12.0,
                            fontWeight: FontWeight.bold)),
                    Spacer(),
                    Text("1078",
                        style: TextStyle(
                            color: Colors.white,
                            fontSize: 20.0,
                            fontWeight: FontWeight.bold)),
                    Text("Followers",
                        style: TextStyle(
                            color: Colors.grey[500],
                            fontSize: 12.0,
                            fontWeight: FontWeight.bold)),
                    Spacer(),
                    Text("282",
                        style: TextStyle(
                            color: Colors.white,
                            fontSize: 20.0,
                            fontWeight: FontWeight.bold)),
                    Text("Following",
                        style: TextStyle(
                            color: Colors.grey[500],
                            fontSize: 12.0,
                            fontWeight: FontWeight.bold)),
                  ],
                ),
              ),
            ),
            Positioned(
              top: screenHeight * 0.56,
              right: 30,
              child: Container(
                height: 48,
                width: 48,
                decoration: BoxDecoration(
                    boxShadow: [
                      BoxShadow(
                          color: Colors.black.withOpacity(0.4),
                          blurRadius: 4,
                          spreadRadius: 2)
                    ],
                    shape: BoxShape.circle,
                    border: Border.all(color: Colors.white, width: 1.5),
                    color: Colors.black),
                child: Icon(Icons.add, size: 32.0, color: Colors.white),
              ),
            ),

            Positioned(
              bottom: 0,
              child: Container(
                padding: EdgeInsets.only(top: 10.0),
                height: screenHeight * 0.35,
//                color: Colors.amber,
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: <Widget>[
                    // tabbar
                    Container(
                      height: 24,
                      width: 150,
                      child: TabBar(
                        isScrollable: false,
                        controller: _tabController,
                        indicatorColor: Colors.black,
                        labelColor: Colors.black,
                        unselectedLabelColor: Colors.grey,
                        indicatorSize: TabBarIndicatorSize.label,
                        tabs: <Widget>[
                          Tab(text: "Posts"),
                          Tab(text: "Saved"),
                        ],
                      ),
                    ),

                    // tabbar view
                    Container(
                      height: screenHeight * 0.30,
                      width: MediaQuery.of(context).size.width,
                      child: TabBarView(
                        controller: _tabController,
                        children: <Widget>[
                          //  gridview
                          GridView.builder(
                              itemCount: picture.length,
                              gridDelegate:
                                  SliverGridDelegateWithFixedCrossAxisCount(
                                      crossAxisCount: 3,
                                      mainAxisSpacing: 4.0,
                                      crossAxisSpacing: 4.0),
                              itemBuilder: (BuildContext context, int index) {
                                return Container(
                                  decoration: BoxDecoration(
//                                      borderRadius: BorderRadius.circular(8.0),
                                      image: DecorationImage(
                                          image: NetworkImage(
                                              picture[index].image),
                                          fit: BoxFit.cover)),
                                );
                              }),
                          Placeholder(color: Colors.green),
                        ],
                      ),
                    )
                  ],
                ),
              ),
            )
          ],
        ),
      ),
    );
  }
}

class myClipper extends CustomClipper<Path> {
  @override
  Path getClip(Size size) {
    var path = new Path();
    path.lineTo(0, 0);
    path.lineTo(0, size.height);
    path.lineTo(size.width, size.height * 0.90);
    path.lineTo(size.width, 0);
    path.close();
    return path;
  }

  @override
  bool shouldReclip(CustomClipper<Path> oldClipper) => false;
}

class Picture {
  String image;

  Picture({this.image});
}

List<Picture> picture = [
  Picture(
      image:
          "https://cdn.pixabay.com/photo/2019/09/14/12/40/iceland-4475920__340.jpg"),
  Picture(
      image:
          "https://cdn.pixabay.com/photo/2019/09/30/18/41/taxi-4516525__340.jpg"),
  Picture(
      image:
          "https://cdn.pixabay.com/photo/2019/09/05/20/30/girl-4455005__340.jpg"),
  Picture(
      image:
          "https://cdn.pixabay.com/photo/2019/09/08/15/08/owl-4461236__340.jpg"),
  Picture(
      image:
          "https://cdn.pixabay.com/photo/2019/02/06/16/32/architect-3979490__340.jpg"),
  Picture(
      image:
          "https://cdn.pixabay.com/photo/2019/09/14/12/40/iceland-4475920__340.jpg"),
  Picture(
      image:
          "https://cdn.pixabay.com/photo/2019/09/30/19/20/caravansary-4516601__340.jpg"),
  Picture(
      image:
          "https://cdn.pixabay.com/photo/2019/09/14/12/40/iceland-4475920__340.jpg"),
  Picture(
      image:
          "https://cdn.pixabay.com/photo/2019/09/30/18/41/taxi-4516525__340.jpg"),
  Picture(
      image:
          "https://cdn.pixabay.com/photo/2019/09/05/20/30/girl-4455005__340.jpg"),
  Picture(
      image:
          "https://cdn.pixabay.com/photo/2019/09/08/15/08/owl-4461236__340.jpg"),
  Picture(
      image:
          "https://cdn.pixabay.com/photo/2019/02/06/16/32/architect-3979490__340.jpg"),
  Picture(
      image:
          "https://cdn.pixabay.com/photo/2019/09/14/12/40/iceland-4475920__340.jpg"),
  Picture(
      image:
          "https://cdn.pixabay.com/photo/2019/09/30/19/20/caravansary-4516601__340.jpg"),
];
