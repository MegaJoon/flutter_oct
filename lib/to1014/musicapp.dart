import 'package:flutter/material.dart';

// https://dribbble.com/shots/7346324-simple-music-app/attachments/252403?mode=media

class MusicApp extends StatefulWidget {
  @override
  _MusicAppState createState() => _MusicAppState();
}

class _MusicAppState extends State<MusicApp> {
  Color _color = Color.fromRGBO(225, 205, 205, 1);
  Color _color2 = Color.fromRGBO(219, 149, 148, 1);
  double _value = 0.0;
  bool isPlaying = false;

  void onChanged() {
    isPlaying = !isPlaying;
    isPlaying?
    print("재생중"):
    print("정지");
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Container(
        decoration: BoxDecoration(
          gradient: LinearGradient(
              colors: [_color, _color2], begin: Alignment.topCenter, end: Alignment.bottomCenter),
        ),
        child: Padding(
          padding: const EdgeInsets.symmetric(horizontal: 24.0),
          child: Column(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            crossAxisAlignment: CrossAxisAlignment.start,
            children: <Widget>[
              // safearea
              SafeArea(
                top: true,
                left: true,
                right: true,
                child: Container(
//                  margin: EdgeInsets.symmetric(horizontal: 24.0),
                  height: 40,
                  child: Row(
                    children: <Widget>[
                      Icon(
                        Icons.arrow_back_ios,
                        size: 28.0,
                        color: Colors.black,
                      ),
                      Spacer(),
                      Icon(
                        Icons.search,
                        size: 28.0,
                        color: Colors.black,
                      )
                    ],
                  ),
                ),
              ),
              Text(
                "Favorites",
                style: TextStyle(color: Colors.black, fontSize: 28.0, fontWeight: FontWeight.bold),
              ),
              SizedBox(height: 8.0),
              Container(
                height: 300,
                color: Colors.black,
                child: Center(
                    child: Text(
                  "X",
                  style:
                      TextStyle(color: Colors.white, fontSize: 250.0, fontWeight: FontWeight.bold),
                )),
              ),
              Text(
                "The xx - Crystalised",
                style: TextStyle(
                  color: Colors.black,
                  fontSize: 32.0,
                ),
              ),
              // slider

              Container(
//                margin: EdgeInsets.only(bottom: 8.0),
                height: 40,
                child: SliderTheme(
                  data: SliderTheme.of(context).copyWith(
                    activeTrackColor: Colors.white,
                    activeTickMarkColor: Colors.white,
                    trackHeight: 5.0,
                    inactiveTrackColor: Colors.black,
                    thumbShape: RoundSliderThumbShape(enabledThumbRadius: 10.0),
                    thumbColor: Colors.white,
                    overlayColor: Colors.black,
                    overlayShape: RoundSliderOverlayShape(overlayRadius: 16.0),
                    showValueIndicator: ShowValueIndicator.always,
                  ),
                  child: Slider(
                      value: _value,
                      min: 0.0,
                      max: 4.20,
                      onChanged: (double newValue) {
                        setState(() {
                          _value = newValue;
//                          print("newValue = $newValue");
                        });
                      }),
                ),
              ),

              Container(
                margin: EdgeInsets.only(bottom: 16.0),
                height: 80,
                decoration: ShapeDecoration(color: _color, shape: StadiumBorder()),
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                  children: <Widget>[
                    IconButton(
                      padding: EdgeInsets.zero,
                      icon: Icon(
                        Icons.skip_previous,
                        size: 40.0,
                        color: Colors.black,
                      ),
                      onPressed: () {
                        setState(() {
                          _value = 0.0;
                        });
                      },
                    ),
                    Container(
                      height: 40.0,
                      width: 60.0,
                      decoration: ShapeDecoration(shape: StadiumBorder(), color: Colors.white),
                      child: IconButton(
                        padding: EdgeInsets.zero,
                        icon: Icon(
                          isPlaying ? Icons.pause : Icons.play_arrow,
                          size: 40.0,
                          color: Colors.black,
                        ),
                        onPressed: () {
                          setState(() {
                            onChanged();
                          });
                        },
                      ),
                    ),
                    IconButton(
                      padding: EdgeInsets.zero,
                      icon: Icon(
                        Icons.skip_next,
                        size: 40.0,
                        color: Colors.black,
                      ),
                      onPressed: () {
                        setState(() {
                          _value = 0.0;
                        });
                      },
                    ),
                  ],
                ),
              ),
            ],
          ),
        ),
      ),
      // bottomnavigation
      bottomNavigationBar: BottomAppBar(
        color: _color2,
        child: Container(
          height: 64,
          decoration: BoxDecoration(
              color: Color.fromRGBO(225, 125, 125, 1),
              borderRadius: BorderRadius.only(topLeft: Radius.circular(52.0))),
          child: Row(
            mainAxisAlignment: MainAxisAlignment.spaceEvenly,
            children: <Widget>[
              Column(
                mainAxisAlignment: MainAxisAlignment.center,
                children: <Widget>[
                  Icon(
                    Icons.file_download,
                    size: 28.0,
                    color: Colors.white,
                  ),
                  Text(
                    "Download",
                    style: TextStyle(
                      color: Colors.white,
                      fontSize: 12.0,
                      fontWeight: FontWeight.w300,
                    ),
                  )
                ],
              ),
              Column(
                mainAxisAlignment: MainAxisAlignment.center,
                children: <Widget>[
                  Icon(
                    Icons.favorite_border,
                    size: 28.0,
                    color: Colors.white,
                  ),
                  Text(
                    "Favorite",
                    style: TextStyle(
                      color: Colors.white,
                      fontSize: 12.0,
                      fontWeight: FontWeight.w300,
                    ),
                  )
                ],
              ),
              Column(
                mainAxisAlignment: MainAxisAlignment.center,
                children: <Widget>[
                  Icon(
                    Icons.menu,
                    size: 28.0,
                    color: Colors.white,
                  ),
                  Text(
                    "Menu",
                    style: TextStyle(
                      color: Colors.white,
                      fontSize: 12.0,
                      fontWeight: FontWeight.w300,
                    ),
                  )
                ],
              ),
            ],
          ),
        ),
      ),
    );
  }
}
