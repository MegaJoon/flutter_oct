import 'package:flutter/material.dart';

class TravelBuddi2 extends StatefulWidget {
  @override
  _TravelBuddi2State createState() => _TravelBuddi2State();
}

class _TravelBuddi2State extends State<TravelBuddi2> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Stack(
        children: <Widget>[
          CustomScrollView(
            slivers: <Widget>[
              // appbar
              SliverAppBar(
                backgroundColor: Colors.white,
                centerTitle: true,
                expandedHeight: 80.0,
                title: Column(
                  children: <Widget>[
                    Text("TravelBuddi", style: TextStyle(color: Colors.black, fontSize: 28.0, fontWeight: FontWeight.bold),),
                    Text("Your Guide & Knowlegde", style: TextStyle(color: Colors.black, fontSize: 20.0, fontWeight: FontWeight.w400),),
                  ],
                ),
              ),

              // main listview
              SliverList(
                delegate: SliverChildBuilderDelegate(
                    (BuildContext context, int index){
                      return Container(
                        margin: EdgeInsets.all(16.0),
                        padding: EdgeInsets.all(16.0),
                        height: 350.0,
                          decoration: BoxDecoration(borderRadius: BorderRadius.circular(24.0),
                            image: DecorationImage(image: NetworkImage(itemlist[index].image), fit: BoxFit.fill),
                          ),
                          child: Column(
                            crossAxisAlignment: CrossAxisAlignment.start,
                            mainAxisAlignment: MainAxisAlignment.end,
                            children: <Widget>[
                              Text(itemlist[index].title, style: TextStyle(
                                  color: Colors.white,
                                  fontSize: 20.0,
                                  fontWeight: FontWeight.w300),),

                              Text(
                                itemlist[index].subTitle,
                                style: TextStyle(
                                    color: Colors.white,
                                    fontSize: 42.0,
                                    fontWeight: FontWeight.bold),
                              ),
                            ],
                          ),
                      );
                    },
                childCount: itemlist.length),
              ),
            ],
          ),

          // textfield container
          Positioned(
            bottom: 24.0,
            left: 16.0,
            right: 16.0,
            child: Container(
              height: 48.0,
              decoration: ShapeDecoration(shape: StadiumBorder(), color: Colors.grey[200],),
              child: TextField(
                decoration: InputDecoration(
                  border: InputBorder.none,
                  prefixIcon: Icon(Icons.search, size: 28.0, color: Colors.black,),
                  hintText: "Search places, things, etc...",
                  hintStyle: TextStyle(color: Colors.black, fontSize: 16.0, fontWeight: FontWeight.w400),
                  contentPadding: EdgeInsets.all(14.0)
                ),
              ),
            ),
          )
        ],
      ),
    );
  }
}

class Itemlist {
  String image;
  String title;
  String subTitle;

  Itemlist({this.image, this.title, this.subTitle});
}

List<Itemlist> itemlist = [
  Itemlist(image: "https://cdn.pixabay.com/photo/2016/11/08/05/26/woman-1807533__340.jpg", title: "1802 prices for", subTitle: "Thailand",),
  Itemlist(image: "https://cdn.pixabay.com/photo/2016/10/17/07/53/busan-night-scene-1747130__340.jpg", title: "1802 prices for", subTitle: "Korea",),
];