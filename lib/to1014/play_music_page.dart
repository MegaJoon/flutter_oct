import 'package:flutter/material.dart';
import 'package:flutter_circular_slider/flutter_circular_slider.dart';

class PlayMusicPage extends StatefulWidget {
  String image;
  String content;

  PlayMusicPage(this.image, this.content);

  @override
  _PlayMusicPageState createState() => _PlayMusicPageState();
}

class _PlayMusicPageState extends State<PlayMusicPage> {
  Color _color = Color.fromRGBO(79, 60, 117, 1);
  double _value = 3.0;
  double valueMin = 0.0;
  double valueMax = 10.0;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        backgroundColor: _color,
        body: Stack(
          children: <Widget>[
            // bottombar
            Positioned(
              bottom: 0,
              left: 0,
              right: 0,
              child: Container(
                height: 64.0,
                color: _color,
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                  crossAxisAlignment: CrossAxisAlignment.center,
                  children: <Widget>[
                    Icon(
                      Icons.favorite,
                      size: 28.0,
                      color: Colors.white,
                    ),
                    Icon(
                      Icons.compare_arrows,
                      size: 28.0,
                      color: Colors.grey[300],
                    ),
                    Icon(
                      Icons.menu,
                      size: 28.0,
                      color: Colors.grey[300],
                    ),
                  ],
                ),
              ),
            ),
            // white container
            Positioned(
              top: 0,
              left: 0,
              right: 0,
              bottom: 64.0,
              child: Container(
                decoration: BoxDecoration(
                    borderRadius: BorderRadius.only(
                        bottomLeft: Radius.circular(32.0), bottomRight: Radius.circular(32.0)),
                    color: Colors.white),
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.center,
                  mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                  children: <Widget>[
                    SingleCircularSlider(
                      100,
                      _value.toInt() * 10,
                      height: 300.0,
                      width: 300.0,
                      baseColor: Colors.grey[300],
                      sliderStrokeWidth: 4.0,
                      handlerOutterRadius: 16.0,
                      handlerColor: _color,
                      showHandlerOutter: false,
                      selectionColor: _color,
                      child: Hero(
                        tag: widget.image,
                        child: Container(
                          margin: EdgeInsets.all(8.0),
                          decoration: BoxDecoration(
                              shape: BoxShape.circle,
                              image:
                                  DecorationImage(image: NetworkImage(widget.image), fit: BoxFit.fill)),
                        ),
                      ),
                    ),
                    Text("Inner Peace", style: TextStyle(color: _color, fontSize: 14.0, fontWeight: FontWeight.w600),),
                    Text(widget.content, style: TextStyle(color: _color, fontSize: 24.0, fontWeight: FontWeight.bold),),
                    Container(
                      height: 80.0,
//                      color: Colors.redAccent,
                      child: Row(
                        mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                        children: <Widget>[
                          Icon(Icons.skip_previous, size: 28.0, color: Colors.grey[300],),
                          FloatingActionButton(
                            backgroundColor: Color.fromRGBO(254, 178, 142, 1),
                            child: Icon(Icons.pause, size: 28.0, color: Colors.white,),
                          ),
                          Icon(Icons.skip_previous, size: 28.0, color: Colors.grey[300],),
                        ],
                      ),
                    ),
                    Container(
                      height: 64.0,
                    child: Row(
                      mainAxisAlignment: MainAxisAlignment.center,
                      crossAxisAlignment: CrossAxisAlignment.center,
                      children: <Widget>[
                        Icon(Icons.volume_mute, size: 24.0, color: Colors.grey[300],),
                        Container(
                          height: 64.0,
                          width: 250.0,
//                          color: Colors.grey,
                          child: SliderTheme(data: SliderTheme.of(context).copyWith(
                            activeTrackColor: _color,
                            trackHeight: 3.0,
                            inactiveTrackColor: Colors.grey[300],
                            thumbColor: _color,
                            thumbShape: RoundSliderThumbShape(enabledThumbRadius: 8.0),
                          ), child: Slider(
                            value: _value,
                            min: valueMin,
                            max: valueMax,
                            onChanged: (value){
                              _value = value;
                            },
                          )),
                        ),
                        Icon(Icons.volume_up, size: 24.0, color: Colors.grey[300],),
                      ],
                    ),
                    ),
                  ],
                ),
              ),
            )
          ],
        ));
  }
}
