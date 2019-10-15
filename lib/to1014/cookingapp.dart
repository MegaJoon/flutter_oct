import 'package:flutter/material.dart';

// https://dribbble.com/shots/7337601-Cooking-App/attachments/249883?mode=media

class CookingApp extends StatefulWidget {
  @override
  _CookingAppState createState() => _CookingAppState();
}

class _CookingAppState extends State<CookingApp> with TickerProviderStateMixin {
  String _image = "https://cdn.pixabay.com/photo/2016/03/05/20/07/abstract-1238657_960_720.jpg";
  TabController _tabController;

  int _currentIndex = 0;

  @override
  void initState() {
    // TODO: implement initState
    super.initState();
    _tabController = TabController(length: 5, vsync: this);
  }

  void onchanged(int selected) {
    _currentIndex = selected;
    print("_currentIndex=$_currentIndex");
  }

  @override
  Widget build(BuildContext context) {
    final screenHeigth = MediaQuery.of(context).size.height;
    return Scaffold(
      body: Container(
        child: Stack(
          children: <Widget>[
            Positioned(
              top: 0,
              left: 0,
              right: 0,
              child: Container(
                  alignment: Alignment.bottomRight,
                  height: screenHeigth * 0.45,
                  decoration: BoxDecoration(image: DecorationImage(image: NetworkImage(_image), fit: BoxFit.fill)),
                  child: Container(
                    margin: EdgeInsets.only(bottom: 10, right: 10),
                    height: 80,
                    width: 200,
                    child: Column(
                      crossAxisAlignment: CrossAxisAlignment.center,
                      children: <Widget>[
                        Text(
                          "Pollo a la catalana",
                          style: TextStyle(color: Colors.white, fontSize: 20.0, fontWeight: FontWeight.w600),
                        ),
                        Padding(
                          padding: const EdgeInsets.symmetric(horizontal: 16.0),
                          child: Row(
                            mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                            children: <Widget>[
                              Icon(Icons.star, size: 20.0, color: Colors.amber),
                              Icon(Icons.star, size: 20.0, color: Colors.amber),
                              Icon(Icons.star, size: 20.0, color: Colors.amber),
                              Icon(Icons.star, size: 20.0, color: Colors.amber),
                              Icon(Icons.star, size: 20.0, color: Colors.amber),
                              SizedBox(width: 16),
                              Text(
                                "5/5",
                                style: TextStyle(color: Colors.grey, fontSize: 12.0, fontWeight: FontWeight.w600),
                              )
                            ],
                          ),
                        )
                      ],
                    ),
                  )),
            ),
            Positioned(
              top: 0,
              left: 24,
              right: 24,
              child: SafeArea(
                top: true,
                left: true,
                right: true,
                child: Container(
                  height: 60,
                  child: Row(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: <Widget>[
                      Icon(Icons.arrow_back, size: 24.0, color: Colors.white),
                      Spacer(),
                      Column(
                        mainAxisAlignment: MainAxisAlignment.spaceBetween,
                        children: <Widget>[
                          Icon(Icons.menu, size: 24.0, color: Colors.white),
                          Icon(Icons.favorite_border, size: 24.0, color: Colors.white),
                        ],
                      ),
                    ],
                  ),
                ),
              ),
            ),
            Positioned(
              bottom: 0,
              left: 0,
              right: 0,
              child: Container(
                height: screenHeigth * 0.60,
                decoration: BoxDecoration(
                    color: Colors.white, borderRadius: BorderRadius.only(topLeft: Radius.circular(24.0), topRight: Radius.circular(24.0))),
                child: Column(
                  children: <Widget>[
                    Container(
                      margin: EdgeInsets.only(top: 8.0),
                      height: 4,
                      width: 48,
                      decoration: BoxDecoration(color: Colors.grey, borderRadius: BorderRadius.circular(8.0)),
                    ),
                    Container(
                        margin: EdgeInsets.all(8.0),
                        height: 24,
                        width: double.maxFinite,
                        child: TabBar(
                          controller: _tabController,
                          isScrollable: true,
                          indicator: BoxDecoration(borderRadius: BorderRadius.circular(16.0), color: Colors.amber[100]),
                          labelStyle: TextStyle(fontSize: 16.0, fontWeight: FontWeight.w600),
                          labelColor: Colors.amber,
                          unselectedLabelStyle: TextStyle(fontSize: 16.0),
                          unselectedLabelColor: Colors.grey,
                          tabs: <Widget>[
                            Tab(text: "Comensales"),
                            Tab(text: "Ingredientes"),
                            Tab(text: "Toque final"),
                            Tab(text: "Preparacion"),
                            Tab(text: "Programacion"),
                          ],
                        )),
                    Container(
                      height: 358,
                      child: TabBarView(controller: _tabController, children: [
                        Placeholder(),
                        // Ingredientes
                        Padding(
                          padding: const EdgeInsets.symmetric(horizontal: 16.0),
                          child: Column(
                            children: <Widget>[
                              Flexible(
                                flex: 8,
                                child: GridView.builder(
                                    itemCount: ingredient.length,
                                    gridDelegate:
                                        SliverGridDelegateWithFixedCrossAxisCount(crossAxisCount: 3, crossAxisSpacing: 8.0, mainAxisSpacing: 8.0),
                                    itemBuilder: (BuildContext context, int index) {
                                      return InkWell(
                                        onTap: () {
                                          setState(() {
                                            onchanged(index);
//                                            print("index=$index");
                                          });
                                        },
                                        child: Container(
                                          decoration: BoxDecoration(
                                              borderRadius: BorderRadius.circular(16.0), border: Border.all(color: Colors.grey, width: 1.0)),
                                          child: Stack(
                                            children: <Widget>[
                                              Center(
                                                child: Column(
                                                  mainAxisAlignment: MainAxisAlignment.center,
                                                  crossAxisAlignment: CrossAxisAlignment.center,
                                                  children: <Widget>[
                                                    Icon(ingredient[index].icon, size: 48.0, color: Colors.grey),
                                                    Text(
                                                      ingredient[index].text,
                                                      style: TextStyle(fontSize: 16.0, fontWeight: FontWeight.w600, color: Colors.amber),
                                                    )
                                                  ],
                                                ),
                                              ),
                                              Positioned(
                                                  top: 10,
                                                  right: 10,
                                                  child: Container(
                                                    padding: EdgeInsets.all(2.0),
                                                    height: 16,
                                                    width: 16,
                                                    decoration: BoxDecoration(
                                                        shape: BoxShape.circle,
                                                        color: Colors.white,
                                                        border: Border.all(color: Colors.grey, width: 1.0)),
                                                    child: Container(decoration: BoxDecoration(shape: BoxShape.circle)),
                                                  ))
                                            ],
                                          ),
                                        ),
                                      );
                                    }),
                              ),
                              Flexible(
                                  flex: 2,
                                  child: Container(
                                    margin: EdgeInsets.all(8.0),
                                    height: double.infinity,
                                    width: double.infinity,
                                    child: Row(
                                      crossAxisAlignment: CrossAxisAlignment.end,
                                      children: <Widget>[
                                        Container(
                                          height: 32,
                                          width: 100,
                                          decoration: BoxDecoration(
                                              borderRadius: BorderRadius.circular(16.0), border: Border.all(color: Colors.black, width: 1.0)),
                                          child: Center(
                                              child: Text(
                                            "Anterior",
                                            style: TextStyle(color: Colors.black, fontSize: 16.0, fontWeight: FontWeight.bold),
                                          )),
                                        ),
                                        Spacer(),
                                        Column(
                                          children: <Widget>[
                                            Text(
                                              "Eliminar",
                                              style: TextStyle(color: Colors.black, fontSize: 12.0, decoration: TextDecoration.underline),
                                            ),
                                            Spacer(),
                                            Container(
                                              height: 32,
                                              width: 100,
                                              decoration: BoxDecoration(color: Colors.amber, borderRadius: BorderRadius.circular(16.0)),
                                              child: Center(
                                                  child: Text(
                                                "Siguente",
                                                style: TextStyle(color: Colors.black, fontSize: 16.0, fontWeight: FontWeight.bold),
                                              )),
                                            ),
                                          ],
                                        )
                                      ],
                                    ),
                                  ))
                            ],
                          ),
                        ),
                        Placeholder(),
                        Placeholder(),
                        // Programacion
                        Padding(
                          padding: const EdgeInsets.symmetric(horizontal: 16.0),
                          child: Column(
                            children: <Widget>[
                              Flexible(
                                flex: 8,
                                child: Padding(
                                  padding: const EdgeInsets.symmetric(horizontal: 86.0),
                                  child: Column(
                                    crossAxisAlignment: CrossAxisAlignment.start,
                                    children: <Widget>[
                                      Text(
                                        "Fecha",
                                        style: TextStyle(color: Colors.grey, fontSize: 12.0),
                                      ),
                                      Row(
                                        mainAxisAlignment: MainAxisAlignment.center,
                                        children: <Widget>[
                                          Container(
                                            height: 100,
                                            width: 70,
                                            decoration: BoxDecoration(
                                                borderRadius: BorderRadius.circular(8.0), border: Border.all(color: Colors.grey, width: 1.0)),
                                            child: Center(
                                                child: Text(
                                              "19",
                                              style: TextStyle(color: Colors.black, fontSize: 16.0, fontWeight: FontWeight.bold),
                                            )),
                                          ),
                                          SizedBox(width: 8),
                                          Container(
                                            height: 100,
                                            width: 50,
                                            decoration: BoxDecoration(
                                                borderRadius: BorderRadius.circular(8.0), border: Border.all(color: Colors.amber, width: 2.5)),
                                            child: Column(
                                              mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                                              children: <Widget>[
                                                Text(
                                                  "03",
                                                  style: TextStyle(color: Colors.grey, fontSize: 14.0, fontWeight: FontWeight.bold),
                                                ),
                                                Text(
                                                  "04",
                                                  style: TextStyle(color: Colors.black, fontSize: 16.0, fontWeight: FontWeight.bold),
                                                ),
                                                Text(
                                                  "05",
                                                  style: TextStyle(color: Colors.grey, fontSize: 14.0, fontWeight: FontWeight.bold),
                                                ),
                                              ],
                                            ),
                                          ),
                                          SizedBox(width: 8),
                                          Container(
                                            height: 100,
                                            width: 70,
                                            decoration: BoxDecoration(
                                                borderRadius: BorderRadius.circular(8.0), border: Border.all(color: Colors.grey, width: 1.0)),
                                            child: Center(
                                                child: Text(
                                              "2019",
                                              style: TextStyle(color: Colors.black, fontSize: 16.0, fontWeight: FontWeight.bold),
                                            )),
                                          ),
                                        ],
                                      ),
                                      SizedBox(height: 8),
                                      Text(
                                        "Fecha",
                                        style: TextStyle(color: Colors.grey, fontSize: 12.0),
                                      ),
                                      Row(
                                        mainAxisAlignment: MainAxisAlignment.center,
                                        children: <Widget>[
                                          Container(
                                            height: 100,
                                            width: 98,
                                            decoration: BoxDecoration(
                                                borderRadius: BorderRadius.circular(8.0), border: Border.all(color: Colors.amber, width: 2.5)),
                                            child: Column(
                                              mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                                              children: <Widget>[
                                                Text(
                                                  "20",
                                                  style: TextStyle(color: Colors.grey, fontSize: 14.0, fontWeight: FontWeight.bold),
                                                ),
                                                Text(
                                                  "21",
                                                  style: TextStyle(color: Colors.black, fontSize: 16.0, fontWeight: FontWeight.bold),
                                                ),
                                                Text(
                                                  "22",
                                                  style: TextStyle(color: Colors.grey, fontSize: 14.0, fontWeight: FontWeight.bold),
                                                ),
                                              ],
                                            ),
                                          ),
                                          SizedBox(
                                              width: 8,
                                              child: Center(
                                                  child: Text(
                                                ":",
                                                style: TextStyle(color: Colors.black, fontSize: 16.0, fontWeight: FontWeight.bold),
                                              ))),
                                          Container(
                                            height: 100,
                                            width: 98,
                                            decoration: BoxDecoration(
                                                borderRadius: BorderRadius.circular(8.0), border: Border.all(color: Colors.grey, width: 1.0)),
                                            child: Center(
                                                child: Text(
                                              "10",
                                              style: TextStyle(color: Colors.black, fontSize: 16.0, fontWeight: FontWeight.bold),
                                            )),
                                          ),
                                        ],
                                      ),
                                    ],
                                  ),
                                ),
                              ),
                              Flexible(
                                  flex: 2,
                                  child: Container(
                                    margin: EdgeInsets.all(8.0),
                                    height: double.infinity,
                                    width: double.infinity,
                                    child: Row(
                                      crossAxisAlignment: CrossAxisAlignment.end,
                                      children: <Widget>[
                                        Container(
                                          height: 32,
                                          width: 100,
                                          decoration: BoxDecoration(
                                              borderRadius: BorderRadius.circular(16.0), border: Border.all(color: Colors.black, width: 1.0)),
                                          child: Center(
                                              child: Text(
                                            "Anterior",
                                            style: TextStyle(color: Colors.black, fontSize: 16.0, fontWeight: FontWeight.bold),
                                          )),
                                        ),
                                        Spacer(),
                                        Container(
                                          height: 32,
                                          width: 100,
                                          decoration: BoxDecoration(color: Colors.amber, borderRadius: BorderRadius.circular(16.0)),
                                          child: Center(
                                              child: Text(
                                            "Programar",
                                            style: TextStyle(color: Colors.black, fontSize: 16.0, fontWeight: FontWeight.bold),
                                          )),
                                        )
                                      ],
                                    ),
                                  ))
                            ],
                          ),
                        ),
                      ]),
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

class Ingredient {
  IconData icon;
  String text;

  Ingredient({this.icon, this.text});
}

List<Ingredient> ingredient = [
  Ingredient(icon: Icons.star, text: "3 muslos"),
  Ingredient(icon: Icons.favorite_border, text: "3 muslos"),
  Ingredient(icon: Icons.arrow_forward, text: "3 muslos"),
  Ingredient(icon: Icons.photo, text: "3 muslos"),
  Ingredient(icon: Icons.grid_on, text: "3 muslos"),
  Ingredient(icon: Icons.keyboard, text: "3 muslos"),
  Ingredient(icon: Icons.keyboard_arrow_up, text: "3 muslos"),
  Ingredient(icon: Icons.map, text: "3 muslos"),
  Ingredient(icon: Icons.save_alt, text: "3 muslos"),
];
