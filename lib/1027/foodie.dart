import 'package:flutter/material.dart';

// https://dribbble.com/shots/7822622-Foodie-Food-review-app/attachments/469048?mode=media

class FoodieApp extends StatefulWidget {
  @override
  _FoodieAppState createState() => _FoodieAppState();
}

class _FoodieAppState extends State<FoodieApp> {
  String title = "Foodie";

  // darkmode signal
  bool isSelected = true;

  // normal mode: textColor
  Color _normalBackgroundColor = Colors.white;
  Color _normalModeTextColor = Color.fromRGBO(31, 48, 99, 1);
  Color _normalModeIocationColor = Colors.grey;
  Color _normalModeGreyColor = Colors.grey[200];

  // normal mode: textColor
  Color _darkModeBackgroundColor = Colors.black;
  Color _darkModeTextColor = Colors.white;
  Color _darkModeContainerColor = Color.fromRGBO(23, 39, 52, 1);
  Color _darkModeIocationColor = Color.fromRGBO(236, 85, 108, 1);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: isSelected? _normalBackgroundColor: _darkModeBackgroundColor,
      body: CustomScrollView(
        slivers: <Widget>[
          // appbar
          SliverAppBar(
            backgroundColor: isSelected? _normalBackgroundColor: _darkModeBackgroundColor,
            leading: IconButton(
              icon: Icon(
                Icons.menu,
                size: 28.0,
                color: isSelected? _normalModeTextColor: _darkModeTextColor,
              ),
              onPressed: () {
                // on clicked
                // Dark mode: change color
                setState(() {
                  isSelected = !isSelected;
                });
              },
            ),
            centerTitle: true,
            title: Text(
              title,
              style: TextStyle(
                color: isSelected? _normalModeTextColor: _darkModeTextColor,
                fontSize: 28.0,
                fontWeight: FontWeight.bold,
              ),
            ),
            actions: <Widget>[
              IconButton(
                icon: Icon(
                  Icons.filter_list,
                  size: 28.0,
                  color: isSelected? _normalModeTextColor: _darkModeTextColor,
                ),
                onPressed: () {},
              ),
            ],
          ),

          // profile list
          SliverToBoxAdapter(
            child: Container(
              margin: EdgeInsets.only(bottom: 16.0),
              height: 100.0,
              child: ListView.builder(
                  padding: EdgeInsets.only(top: 8.0, left: 16.0),
                  shrinkWrap: true,
                  scrollDirection: Axis.horizontal,
                  itemCount: user.length,
                  itemBuilder: (BuildContext context, int index) {
                    return Container(
                      margin: EdgeInsets.only(right: 16.0),
                      height: 100.0,
                      width: 64.0,
                      child: Column(
                        crossAxisAlignment: CrossAxisAlignment.center,
                        children: <Widget>[
                          Container(
                            margin: EdgeInsets.only(bottom: 4.0),
                            height: 64.0,
                            width: 64.0,
                            decoration: BoxDecoration(
                              shape: BoxShape.circle,
                              image: DecorationImage(
                                  image: NetworkImage(user[index].profileImage),
                                  fit: BoxFit.cover),
                            ),
                          ),
                          Text(
                            user[index].name,
                            style: TextStyle(
                                color: isSelected? _normalModeTextColor: _darkModeTextColor,
                                fontSize: 10.0,
                                fontWeight: FontWeight.w600),
                            overflow: TextOverflow.ellipsis,
                          ),
                        ],
                      ),
                    );
                  }),
            ),
          ),

          // main list
          SliverList(
            delegate: SliverChildBuilderDelegate(
              (BuildContext context, int idx) {
                return Container(
                  margin:
                      EdgeInsets.only(left: 16.0, right: 16.0, bottom: 16.0),
                  height: 200.0,
                  decoration: BoxDecoration(
                    borderRadius: BorderRadius.circular(8.0),
                  ),
                  child: Column(
                    children: <Widget>[
                      Flexible(
                        flex: 7,
                        child: Container(
                          decoration: BoxDecoration(
                              boxShadow: [
                                BoxShadow(
                                    color: Colors.black12,
                                    spreadRadius: 2,
                                    blurRadius: 4)
                              ],
                              borderRadius: BorderRadius.only(
                                  topLeft: Radius.circular(8.0),
                                  topRight: Radius.circular(8.0)),
                              image: DecorationImage(
                                  image: NetworkImage(itemList[idx].image),
                                  fit: BoxFit.cover)),
                          child: Stack(
                            children: <Widget>[
                              Positioned(
                                top: 8.0,
                                right: 8.0,
                                child: Container(
                                  height: 40.0,
                                  width: 40.0,
                                  decoration: BoxDecoration(
                                    shape: BoxShape.circle,
                                    color: Colors.black.withOpacity(0.2),
                                  ),
                                  child: Center(
                                      child: IconButton(
                                    icon: Icon(
                                      Icons.favorite_border,
                                      size: 20.0,
                                      color: Colors.white,
                                    ),
                                    onPressed: () {},
                                  )),
                                ),
                              )
                            ],
                          ),
                        ),
                      ),
                      Flexible(
                        flex: 3,
                        child: Container(
                          padding: EdgeInsets.only(
                              top: 8.0, bottom: 12.0, left: 16.0, right: 16.0),
                          decoration: BoxDecoration(
                            boxShadow: [
                              BoxShadow(
                                  color: Colors.black12,
                                  spreadRadius: 2,
                                  blurRadius: 4)
                            ],
                            borderRadius: BorderRadius.only(
                                bottomLeft: Radius.circular(8.0),
                                bottomRight: Radius.circular(8.0)),
                            color: isSelected? _normalBackgroundColor: _darkModeContainerColor,
                          ),
                          child: Column(
                            crossAxisAlignment: CrossAxisAlignment.start,
                            mainAxisAlignment: MainAxisAlignment.spaceBetween,
                            children: <Widget>[
                              Row(
                                mainAxisAlignment: MainAxisAlignment.start,
                                children: <Widget>[
                                  SizedBox(
                                    width: 4.0,
                                  ),
                                  Text(
                                    itemList[idx].title,
                                    style: TextStyle(
                                      color: isSelected? _normalModeTextColor: _darkModeTextColor,
                                      fontSize: 16.0,
                                      fontWeight: FontWeight.bold,
                                    ),
                                  ),
                                  Spacer(),
                                  Container(
                                    height: 16.0,
                                    width: 48.0,
                                    decoration: ShapeDecoration(
                                      shape: StadiumBorder(),
                                      color: isSelected? _normalModeGreyColor: _darkModeBackgroundColor,
                                    ),
                                    child: Row(
                                      crossAxisAlignment:
                                          CrossAxisAlignment.center,
                                      mainAxisAlignment:
                                          MainAxisAlignment.spaceEvenly,
                                      children: <Widget>[
                                        Icon(
                                          Icons.star,
                                          color: Colors.amber,
                                          size: 14.0,
                                        ),
                                        Text(
                                          itemList[idx].score,
                                          style: TextStyle(
                                            color: isSelected? _normalModeTextColor: _darkModeTextColor,
                                            fontSize: 10.0,
                                            fontWeight: FontWeight.w400,
                                          ),
                                        )
                                      ],
                                    ),
                                  ),
                                ],
                              ),
                              Row(
                                mainAxisAlignment: MainAxisAlignment.start,
                                crossAxisAlignment: CrossAxisAlignment.center,
                                children: <Widget>[
                                  Icon(
                                    Icons.location_on,
                                    size: 16.0,
                                    color: isSelected? _normalModeIocationColor: _darkModeIocationColor,
                                  ),
                                  Text(
                                    itemList[idx].location,
                                    style: TextStyle(
                                      color: isSelected? _normalModeTextColor: _darkModeTextColor,
                                      fontSize: 12.0,
                                      fontWeight: FontWeight.w600,
                                    ),
                                  ),
                                  Container(
                                    margin: EdgeInsets.symmetric(
                                      horizontal: 6.0,
                                    ),
                                    height: 2.0,
                                    width: 2.0,
                                    decoration: BoxDecoration(
                                        shape: BoxShape.circle, color: isSelected? _normalModeTextColor: _darkModeTextColor),
                                  ),
                                  Text(
                                    itemList[idx].address,
                                    style: TextStyle(
                                        color: Colors.grey,
                                        fontSize: 12.0,
                                        fontWeight: FontWeight.w600),
                                  ),
                                  Spacer(),
                                ],
                              )
                            ],
                          ),
                        ),
                      ),
                    ],
                  ),
                );
              },
              childCount: itemList.length,
            ),
          ),
        ],
      ),
    );
  }
}

// User
class User {
  String profileImage;
  String name;

  User({this.profileImage, this.name});
}

List<User> user = [
  User(
    profileImage:
        "https://cdn.pixabay.com/photo/2019/10/24/18/36/forest-4574893__340.jpg",
    name: "Restauradnkclnzdklcdnzl",
  ),
  User(
    profileImage:
        "https://cdn.pixabay.com/photo/2019/10/11/12/33/make-up-4541782__340.jpg",
    name: "Chrocoaladnkclnzdklcdnzl",
  ),
  User(
    profileImage:
        "https://cdn.pixabay.com/photo/2019/09/13/15/13/tomato-4474174__340.jpg",
    name: "Europeaadnkclnzdklcdnzl",
  ),
  User(
    profileImage:
        "https://cdn.pixabay.com/photo/2019/09/29/20/34/athens-4514311__340.jpg",
    name: "Barbequadnkclnzdklcdnzl",
  ),
  User(
    profileImage:
        "https://cdn.pixabay.com/photo/2019/10/24/10/51/morning-4573991__340.jpg",
    name: "Russeladnkclnzdklcdnzl",
  ),
  User(
    profileImage:
        "https://cdn.pixabay.com/photo/2015/09/26/13/25/halloween-959049__340.jpg",
    name: "Restauradnkclnzdklcdnzl",
  ),
  User(
    profileImage:
        "https://cdn.pixabay.com/photo/2019/10/24/18/12/foliage-4574860__340.jpg",
    name: "Restauradnkclnzdklcdnzl",
  ),
];

// ItemList
class ItemList {
  String image;
  String title;
  String score;
  String location;
  String address;

  ItemList({this.image, this.title, this.score, this.location, this.address});
}

List<ItemList> itemList = [
  ItemList(
    image:
        "https://cdn.pixabay.com/photo/2014/04/07/05/25/gummibarchen-318362__340.jpg",
    title: "Is It Frosting Or Is It Icing",
    score: "4.7",
    location: "0.3Km",
    address: "424 Abernathy Creek Apt. 118",
  ),
  ItemList(
    image:
        "https://cdn.pixabay.com/photo/2016/03/23/15/00/ice-cream-cone-1274894__340.jpg",
    title: "Cooking For One",
    score: "4.2",
    location: "0.3Km",
    address: "424 Abernathy Creek Apt. 118",
  ),
  ItemList(
    image:
        "https://cdn.pixabay.com/photo/2010/12/13/10/05/background-2277__340.jpg",
    title: "Is It Frosting Or Is It Icing",
    score: "4.3",
    location: "0.3Km",
    address: "424 Abernathy Creek Apt. 118",
  ),
  ItemList(
    image:
        "https://cdn.pixabay.com/photo/2017/09/16/19/21/salad-2756467__340.jpg",
    title: "Cooking For One",
    score: "4.5",
    location: "0.3Km",
    address: "424 Abernathy Creek Apt. 118",
  ),
];
